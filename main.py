import anki

Word = "PLANT"
Example = "plants need light and water"

Word = Word.lower()
Example = Example.lower()
Hint = anki.Hint(Word)
ClozeExample = anki.ClozeExample(Word,Example)

print(Word)
print(Example)
print(Hint)
print(ClozeExample)