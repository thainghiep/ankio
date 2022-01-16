import os

def cls():
    os.system('cls' if os.name=='nt' else 'clear')

# now, to clear the screen
input('What your name?')
cls()