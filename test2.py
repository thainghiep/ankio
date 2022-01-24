'''
moon            ==>        m_ _ _
to the moon     ==>        t_ t_ _ m_ _ _
'''
def HintNoSpace(Word):
    try:
        underscore = ""
        for i in range(len(Word) - 1):
            underscore = underscore + "_ "
        underscore = underscore.strip()
        return Word[0] + underscore
    except:
        return "#error# HintNoSpace()"

def Hint(Word):
    try:
        SubWord = Word.split(" ")
        for i in range(len(SubWord)):
            SubWord[i] = HintNoSpace(SubWord[i]) 
        delimiter = " "
        return  delimiter.join(SubWord)
    except:
        return "#error# hint()"


