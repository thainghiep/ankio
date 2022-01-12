def LowerCase():
  pass

def ClozeExample(Word,Example):
  Cloze = "{{c1::" + Word + "}}"
  Word = " " + Word + " "
  return Example.replace(Word,Cloze)

def Hint(Word):
  First = Word[0:1]
  Last = Word[len(Word)-1:len(Word)]
  suggest = ""
  for i in range(len(Word)-2):
    suggest = suggest + "_ "
  suggest = suggest.strip()
  return First + suggest + Last