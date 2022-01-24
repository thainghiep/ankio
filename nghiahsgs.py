import openpyxl

def get_value_excel(filename, cellname):
    wb = openpyxl.load_workbook(filename)
    Sheet1 = wb['Sheet2']
    wb.close()
    return Sheet1[cellname].value
	

def update_value_excel(filename, cellname, value):
    wb = openpyxl.load_workbook(filename)
    Sheet1 = wb['Sheet1']
    Sheet1[cellname].value = value
    wb.close()
    wb.save(filename)

col_name_acc="F"
col_name_pass="G"
filename='file.xlsx'

for i_row in range(7,18):
	cell_name_acc="%s%s"%(col_name_acc,i_row)
	cell_name_pass="%s%s"%(col_name_pass,i_row)
	
	account=get_value_excel(filename, cell_name_acc)
	password=get_value_excel(filename, cell_name_pass)
	print(account)
	print(password)