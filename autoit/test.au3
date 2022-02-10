
#cs
#include <MsgBoxConstants.au3>
#include <StringConstants.au3>

; Strip leading and trailing whitespace as well as the double spaces (or more) in between the words.
Local $sString = StringStripWS("   This   is   a   sentence   with   whitespace.    ", $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)
MsgBox($MB_SYSTEMMODAL, "", "*" & $sString & "*")
#ce

#include <MsgBoxConstants.au3>

Local $sString = StringLower("This is a string") ; Convert the following string to lowercase.
MsgBox($MB_SYSTEMMODAL, "", "StringLower returned: " & $sString)