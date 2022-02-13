#include <StringConstants.au3>
#include <Array.au3>

Opt("MustDeclareVars", 1)


Func _Filter($string)
	$string = StringLower($string)
	$string = StringStripWS($string, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)
	Return $string
EndFunc


Func _CreateCloze($example,$word)
	Return StringReplace($example,$word,"{{c1::" & $word & "}}")
EndFunc


Func _CreateHint_single($Word)
	Local $underscore = "_"
	for $i= 1 to StringLen($Word)-2
		$underscore = $underscore & " _"
	Next
	Return StringLeft($Word,1) & $underscore
EndFunc

Func _CreateHint($Word)
	Local $arrWord = StringSplit($Word, " ")
	for $i=1 to $arrWord[0]
		$arrWord[$i] = _CreateHint_single($arrWord[$i])
	Next
	Return _ArrayToString($arrWord, " ", 1, $arrWord[0])
EndFunc