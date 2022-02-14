#include-once
#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <language.au3>

Opt("MustDeclareVars", 1)

#Region ### START Koda GUI section ### Form=
Global $Form_ankio = GUICreate("ankio", 483, 429, -1, -1)

Global $Group_Option = GUICtrlCreateGroup($lg_Option, 8, 8, 313, 105)
Global $Group_Word = GUICtrlCreateGroup("", 8, 120, 225, 145)
Global $Group_Example = GUICtrlCreateGroup("", 8, 272, 225, 145)
Global $Group_Hint = GUICtrlCreateGroup("", 248, 120, 225, 145)
Global $Group_Cloze = GUICtrlCreateGroup("", 248, 272, 225, 145)

Global $Edit_Word = GUICtrlCreateEdit("", 8, 154, 224, 110)
Global $Edit_Hint = GUICtrlCreateEdit("", 248, 154, 224, 110)
Global $Edit_Example = GUICtrlCreateEdit("", 8, 306, 224, 110)
Global $Edit_Cloze = GUICtrlCreateEdit("", 248, 306, 224, 110)

Global $Label_Word = GUICtrlCreateLabel($lg_Word, 16, 135, 70, 17)
Global $Label_Hint = GUICtrlCreateLabel($lg_Hint, 256, 135, 70, 17)
Global $Label_Example = GUICtrlCreateLabel($lg_Example, 16, 287, 70, 17)
Global $Label_Cloze = GUICtrlCreateLabel($lg_Cloze, 256, 287, 70, 17)

Global $Checkbox_CreateHint = GUICtrlCreateCheckbox($lg_CreateHint, 24, 32, 200, 17)
Global $Checkbox_CreateCloze = GUICtrlCreateCheckbox($lg_CreateCloze, 24, 56, 200, 17)

Global $Button_Start = GUICtrlCreateButton($lg_Start, 368, 16, 75, 25)
Global $Button_Feedback = GUICtrlCreateButton($lg_Feedback, 368, 48, 75, 25)

Global $Button_CopyWord = GUICtrlCreateButton($lg_Copy, 104, 128, 59, 25)
Global $Button_CopyHint = GUICtrlCreateButton($lg_Copy, 344, 128, 59, 25)
Global $Button_CopyExample = GUICtrlCreateButton($lg_Copy, 104, 280, 59, 25)
Global $Button_CopyCloze = GUICtrlCreateButton($lg_Copy, 344, 280, 59, 25)

Global $Button_ClearWord = GUICtrlCreateButton($lg_Clear, 168, 128, 59, 25)
Global $Button_ClearHint = GUICtrlCreateButton($lg_Clear, 408, 128, 59, 25)
Global $Button_ClearExample = GUICtrlCreateButton($lg_Clear, 168, 280, 59, 25)
Global $Button_ClearCloze = GUICtrlCreateButton($lg_Clear, 408, 280, 59, 25)

GUISetState(@SW_SHOW,$Form_ankio)
#EndRegion ### END Koda GUI section ###




