import card as card
import excel as excel
from tqdm import tqdm
import time


AddressFile = input("Address File: ")
ColumnWord = input("Column Word: ")
ColumnExample = input("Column Example: ")
ColumnHint = input("Column Hint: ")
ColumnCloze = input("Column Cloze: ")
StartRow = 1
print("Start Row: " + str(StartRow))
EndRow = int(input("End Row: "))

print()
print("Loading...")
WordList = excel.GetData(AddressFile, ColumnWord, StartRow, EndRow)
ExampleList = excel.GetData(AddressFile, ColumnExample, StartRow, EndRow)
HintList = [""] * (EndRow - StartRow + 1)
ClozeList = [""] * (EndRow - StartRow + 1)


WordList = card.Filter(WordList)
ExampleList = card.Filter(ExampleList)

for i in tqdm(range(len(WordList))):
    HintList[i] = card.Hint(WordList[i])
    ClozeList[i] = card.Cloze(WordList[i], ExampleList[i])


excel.PutData(AddressFile, ColumnWord, StartRow, EndRow, WordList)
excel.PutData(AddressFile, ColumnExample, StartRow, EndRow, ExampleList)
excel.PutData(AddressFile, ColumnHint, StartRow, EndRow, HintList)
excel.PutData(AddressFile, ColumnCloze, StartRow, EndRow, ClozeList)

print("Done")
time.sleep(3)