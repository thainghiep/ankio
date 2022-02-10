#include <StringConstants.au3>



Func _Filter($string)
	$string = StringLower($string)
	$string = StringStripWS($string, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)
	Return $string
EndFunc


Func _CreateCloze($example,$word)
	Return StringReplace($example,$word,"{{c1::" & $word & "}}")
EndFunc
