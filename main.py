import anki
import openpyxl

def get_value_excel(filename, cellname):
    wb = openpyxl.load_workbook(filename)
    Sheet1 = wb['Sheet1']
    wb.close()
    return Sheet1[cellname].value

def update_value_excel(filename, cellname, value):
    wb = openpyxl.load_workbook(filename)
    Sheet1 = wb['Sheet1']
    Sheet1[cellname].value = value
    wb.close()
    wb.save(filename)

for i_row in range(int(StartLine),int(EndLine)+1):
    Cell_Word = Column_Word + str(i_row)
    Cell_Example = Column_Example + str(i_row)
    Cell_Hint = Column_Hint + str(i_row)
    Cell_ClozeExample = Column_ClozeExample + str(i_row)

    Word = get_value_excel(FileName,Cell_Word)
    Example = get_value_excel(FileName,Cell_Example)

    Word = Word.lower()
    Example = Example.lower()

    Hint = anki.Hint(Word)
    ClozeExample = anki.ClozeExample(Word,Example)

    update_value_excel(FileName,Cell_Word,Word)
    update_value_excel(FileName,Cell_Example,Example)
    update_value_excel(FileName,Cell_Hint,Hint)
    update_value_excel(FileName,Cell_ClozeExample,ClozeExample)

    print(i_row/int(EndLine)*100,"%")

print("done")

def setting():
    pass
    FileName = "C:\\Users\\nghiep\\Desktop\\ank3i.xlsx"
    Column_Word = input("Column word: ")
    Column_Example = input("Column example: ")
    Column_Hint = input("Column hint: ")
    Column_ClozeExample = input("Column cloze example: ")
    StartLine = input("Start line: ")
    EndLine = input("End line: ")