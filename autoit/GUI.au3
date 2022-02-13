#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### Form=
$Form1_1 = GUICreate("Form1", 483, 429, -1, -1)
GUICtrlCreateGroup("", 8, 120, 225, 145)
$Edit2 = GUICtrlCreateEdit("", 8, 154, 224, 110)

$Label1 = GUICtrlCreateLabel("Label1", 16, 135, 36, 17)
$Button1 = GUICtrlCreateButton("Button1", 104, 128, 59, 25)
$Button2 = GUICtrlCreateButton("Button2", 168, 128, 59, 25)
GUICtrlCreateGroup("", -99, -99, 1, 1)
GUICtrlCreateGroup("", 248, 120, 225, 145)
$Edit1 = GUICtrlCreateEdit("", 248, 154, 224, 110)

$Label2 = GUICtrlCreateLabel("Label1", 256, 135, 36, 17)
$Button3 = GUICtrlCreateButton("Button1", 344, 128, 59, 25)
$Button4 = GUICtrlCreateButton("Button2", 408, 128, 59, 25)
GUICtrlCreateGroup("", -99, -99, 1, 1)
GUICtrlCreateGroup("", 8, 272, 225, 145)
$Edit3 = GUICtrlCreateEdit("", 8, 306, 224, 110)

$Label3 = GUICtrlCreateLabel("Label1", 16, 287, 36, 17)
$Button5 = GUICtrlCreateButton("Button1", 104, 280, 59, 25)
$Button6 = GUICtrlCreateButton("Button2", 168, 280, 59, 25)
GUICtrlCreateGroup("", -99, -99, 1, 1)
GUICtrlCreateGroup("", 248, 272, 225, 145)
$Edit4 = GUICtrlCreateEdit("", 248, 306, 224, 110)

$Label4 = GUICtrlCreateLabel("Label1", 256, 287, 36, 17)
$Button7 = GUICtrlCreateButton("Button1", 344, 280, 59, 25)
$Button8 = GUICtrlCreateButton("Button2", 408, 280, 59, 25)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group1 = GUICtrlCreateGroup("Group1", 8, 8, 313, 105)
$Checkbox1 = GUICtrlCreateCheckbox("Checkbox1", 24, 32, 97, 17)
$Checkbox2 = GUICtrlCreateCheckbox("Checkbox2", 24, 56, 97, 17)
$Checkbox3 = GUICtrlCreateCheckbox("Checkbox3", 24, 80, 97, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Button9 = GUICtrlCreateButton("Button9", 368, 16, 75, 25)
$Button10 = GUICtrlCreateButton("Button10", 368, 48, 75, 25)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit

	EndSwitch
WEnd

