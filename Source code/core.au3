#include <StringConstants.au3>
#include <Array.au3>


Opt("MustDeclareVars", 1)


Func _Filter($string)
	$string = StringLower($string)
	$string = StringStripWS($string, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)
	Return $string
EndFunc


Func _CreateCloze($example,$word)
	if StringInStr($example,$word) = 0 Then
		MsgBox(0,$lg_Error,$lg_Error_Cloze1 & $lg_Error_Cloze2 & $word & $lg_Error_Cloze3 & $example & """")
		Return $lg_Error_Cloze1 & $lg_Error_Cloze2 & $word & $lg_Error_Cloze3 & $example & """"
	Else
		Return StringReplace($example,$word,"{{c1::" & $word & "}}")
	EndIf
EndFunc


Func _CreateHint_single($Word)
	If StringLen($Word)=1 Then
		Return $Word
	Else
		Local $underscore = "_"
		for $i= 1 to StringLen($Word)-2
			$underscore = $underscore & " _"
		Next
		Return StringLeft($Word,1) & $underscore
	EndIf
EndFunc

Func _CreateHint($Word)
	Local $arrWord = StringSplit($Word, " ")
	for $i=1 to $arrWord[0]
		$arrWord[$i] = _CreateHint_single($arrWord[$i])
	Next
	Return _ArrayToString($arrWord, " ", 1, $arrWord[0])
EndFunc

