import openpyxl
import os

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

col_name_acc="A"
col_name_pass="B"
filename='file.xlsx'
FirstLine = 1
LastLine = 50
for i_row in range(FirstLine,LastLine):
	cell_name_acc="%s%s"%(col_name_acc,i_row)
	cell_name_pass="%s%s"%(col_name_pass,i_row)
	#print(cell_name_acc)
	account=get_value_excel(filename, cell_name_acc)
	password=get_value_excel(filename, cell_name_pass)

	print(int(i_row/LastLine*100),"%")
print("done")