#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=icon\Ankio.ico
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.5
 Author:         Thai Ba Nghiep

 ankio v2.0.0
 Github: github.com/thainghiep/ankio.git

#ce ----------------------------------------------------------------------------

#include <GUI.au3>
#include <Core.au3>

Func _Hint()
	Global $arrWord = StringSplit(GUICtrlRead($Edit_Word),@CR)
	For $i=1 to $arrWord[0]
		$arrWord[$i] = _Filter($arrWord[$i])
	Next

	Global $arrHint = $arrWord
	For $i=1 to $arrHint[0]
		$arrHint[$i] = _CreateHint($arrWord[$i])
	Next

	Global $strWord = _ArrayToString($arrWord,@CRLF,1,$arrWord[0])
	Global $strHint = _ArrayToString($arrHint,@CRLF,1,$arrHint[0])
	GUICtrlSetData($Edit_Word,$strWord)
	GUICtrlSetData($Edit_Hint,$strHint)
EndFunc

Func _Cloze()
	Global $arrWord = StringSplit(GUICtrlRead($Edit_Word),@CR)
	Global $arrExample = StringSplit(GUICtrlRead($Edit_Example),@CR)
	For $i=1 to $arrWord[0]
		$arrWord[$i] = _Filter($arrWord[$i])
		$arrExample[$i] = _Filter($arrExample[$i])
	Next

	Global $arrCloze = $arrWord
	For $i=1 to $arrWord[0]
		$arrCloze[$i] = _CreateCloze($arrExample[$i],$arrWord[$i])
	Next

	Global $strWord = _ArrayToString($arrWord,@CRLF,1,$arrWord[0])
	Global $strExample = _ArrayToString($arrExample,@CRLF,1,$arrExample[0])
	Global $strCloze = _ArrayToString($arrCloze,@CRLF,1,$arrCloze[0])
	GUICtrlSetData($Edit_Word,$strWord)
	GUICtrlSetData($Edit_Example,$strExample)
	GUICtrlSetData($Edit_Cloze,$strCloze)
EndFunc



Func _Start()
	If (GUICtrlRead($Checkbox_CreateHint)=4) And (GUICtrlRead($Checkbox_CreateCloze)=4) Then
		MsgBox(0,$lg_Error,$lg_Error_Option)
	Else
		If GUICtrlRead($Checkbox_CreateHint)=1 Then
			If GUICtrlRead($Edit_Word) = "" Then
				MsgBox(0,$lg_Error,$lg_Error_NOdata1 & $lg_Word)
			Else
				_Hint()
			EndIf
		EndIf
		if GUICtrlRead($Checkbox_CreateCloze)=1 Then
			If (GUICtrlRead($Edit_Word) = "") Or (GUICtrlRead($Edit_Example) = "") Then
				MsgBox(0,$lg_Error,$lg_Error_NOdata1 & $lg_Word & $lg_Error_NOdata2 & $lg_Example)
			Else
				_Cloze()
			EndIf
		EndIf
	EndIf
EndFunc

While 1
	Global $nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		Case $Button_Start
			_Start()
		Case $Button_CopyWord
			ClipPut(GUICtrlRead($Edit_Word))
		Case $Button_CopyHint
			ClipPut(GUICtrlRead($Edit_Hint))
		Case $Button_CopyExample
			ClipPut(GUICtrlRead($Edit_Example))
		Case $Button_CopyCloze
			ClipPut(GUICtrlRead($Edit_Cloze))
		Case $Button_ClearWord
			GUICtrlSetData($Edit_Word,"")
		Case $Button_ClearHint
			GUICtrlSetData($Edit_Hint,"")
		Case $Button_ClearExample
			GUICtrlSetData($Edit_Example,"")
		Case $Button_ClearCloze
			GUICtrlSetData($Edit_Cloze,"")
		Case $Button_Feedback
			MsgBox(0,"ankio",$lg_Feedback_text)
	EndSwitch
WEnd