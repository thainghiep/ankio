'''     Cloze(Word,Example)
    moon | to the moon
=>  to the {{c1::moon}}
'''
def Cloze(Word,Example):
  Cloze = "{{c1::" + Word + "}}"
  return Example.replace(Word,Cloze)


'''  Hint(Word):
moon            ==>        m_ _ _
to the moon     ==>        t_ t_ _ m_ _ _
'''
def HintNoSpace(Word):
    underscore = ["_"] * (len(Word) - 1)
    space = " "
    return Word[0] + space.join(underscore)

def Hint(Word):
    Word = Word.strip()
    SubWord = Word.split(" ")
    for i in range(len(SubWord)):
        SubWord[i] = HintNoSpace(SubWord[i]) 
    delimiter = " "
    return  delimiter.join(SubWord)