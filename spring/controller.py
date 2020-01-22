from pwn import *
import ctypes
import sys
import string
import time

LIBC = ctypes.cdll.LoadLibrary('/lib/x86_64-linux-gnu/libc.so.6')

def start():
    global sh
    stdout = process.PTY
    stdin = process.PTY
    sh = process(argv=['nc', '2019shell1.picoctf.com', '47241'], stdin=stdin, stdout=stdout)

def _sendlineafter(term, inp):
    output = ''
    count = 0
    while term not in output and 'WRONG!' not in output and '{' not in output and count < 50000:
        output += sh.recv(timeout=0.01)
        count += 1
    if term in output:
        time.sleep(0.05)
        print output + inp
        sh.sendline(inp)
        return output
    elif 'WRONG!' in output:
        print output
        return None
    elif '{' in output:
        print 'WIN'
        return output
    else:
        print output
        exit(1)

top_guess = 0

def test(guess):
    start()
    top_guess = 0
    while True:
        pretext = _sendlineafter("height: ", str(LIBC.rand() & 0xf))
        if pretext == None:
            sh.kill()
            return False
        elif '{' in pretext:
            sh.kill()
            print "picoCTF{" + pretext.split("{")[1].split("}")[0] + "}"
            return True
        top_guess += 1

for offsetG in range(0, 100):
    LIBC.srand(LIBC.time(0) + offsetG)
    if test(offsetG):
        exit(0)
    offsetG += 1
    print "Trying it again"
    time.sleep(0.01)
