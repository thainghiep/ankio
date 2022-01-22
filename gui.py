from cProfile import label
from cgitb import text
from tkinter import *


window = Tk()
window.title("ankio")
window.geometry("400x200")
window.resizable(False, False)


lbName = Label(window, text = "name")
lbName.grid(row = 1, column=0)

lbAge = Label(window, text = "age")
lbAge.grid(row = 2, column=0)

lbFavorite = Label(window, text = "favorite")
lbFavorite.grid(row = 3, column=0)


window.mainloop()