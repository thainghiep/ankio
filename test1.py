import openpyxl

cardlist = [x for x in range(144)]

wb = openpyxl.load_workbook("anki.xlsx")
Sheet1 = wb['Sheet1']
wb.close()

for i in range(144):
    cell = "B" + str(int(i) + 1)
    cardlist[i] = Sheet1[cell].value

print(cardlist)

#print(data)
