import ankio
import excelo

AddressFile = "anki.xlsx"
ColumnWord = "A"
ColumnExample = "B"
ColumnHint = "C"
ColumnCloze = "D"
StartRow = 5
EndRow = 10

WordList = excelo.GetData(AddressFile, ColumnWord, StartRow, EndRow)
ExampleList = excelo.GetData(AddressFile, ColumnExample, StartRow, EndRow)
HintList = [""] * (EndRow - StartRow + 1)
ClozeList = [""] * (EndRow - StartRow + 1)


WordList = ankio.Filter(WordList)
ExampleList = ankio.Filter(ExampleList)

for i in range(len(WordList)):
    HintList[i] = ankio.Hint(WordList[i])
    ClozeList[i] = ankio.Cloze(WordList[i], ExampleList[i])

excelo.PutData(AddressFile, ColumnWord, StartRow, EndRow, WordList)
excelo.PutData(AddressFile, ColumnExample, StartRow, EndRow, ExampleList)
excelo.PutData(AddressFile, ColumnHint, StartRow, EndRow, HintList)
excelo.PutData(AddressFile, ColumnCloze, StartRow, EndRow, ClozeList)

print("done")



















