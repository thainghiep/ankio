def Cloze(Word,Example):
  Cloze = "{{c1::" + Word + "}}"
  return Example.replace(Word,Cloze)

''' Hint(Word)
moon            ==>        m_ _ _
to the moon     ==>        t_ t_ _ m_ _ _
'''
def HintNoSpace(Word):
    underscore = ""
    for i in range(len(Word) - 1):
        underscore = underscore + "_ "
    underscore = underscore.strip()
    return Word[0] + underscore

def Hint(Word):
    SubWord = Word.split(" ")
    hint = ""
    for i in range(len(SubWord) - 1):
        hint = hint + HintNoSpace(SubWord[i]) + " "
    hint = hint + HintNoSpace(SubWord[len(SubWord) - 1])
    return hint
