'''
example              
e_ _ _ _ _ _

to the moon          
t_ t_ _ m_ _ _
'''
word = "to the moon"
word2 = "moon"

#print(len(word))
print(word)

def HintNoSpace(Word):
    underscore = ""
    for i in range(len(Word) - 1):
        underscore = underscore + "_ "
    underscore = underscore.strip()
    return Word[0] + underscore

def HintSpace(Word):
    return HintNoSpace(Word[0:len(Word) - 1]) + " "
'''
print(HintNoSpace("moon"))
print(HintSpace("moon "))
'''    

def CheckSpace(Word):
    for i in range(len(Word)):
        if (Word[i] == " "):
            return i
    return -1

#print(CheckSpace(word))

SubWord = word.split(" ")

print(len(SubWord))












'''
to the moon

t_
t_ _
m_ _ _

t_ t_ _ m_ _ _ 

'''