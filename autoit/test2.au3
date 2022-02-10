#include <StringConstants.au3>


$word = "   to the  moon  "

Func _Filter($string)
	$string = StringLower($string)
	$string = StringStripWS($string, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)
	Return $string
EndFunc

MsgBox(0,0,"#" & _Filter($word) & "#")
