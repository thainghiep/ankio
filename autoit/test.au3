
#cs
#include <MsgBoxConstants.au3>
#include <StringConstants.au3>

; Strip leading and trailing whitespace as well as the double spaces (or more) in between the words.
Local $sString = StringStripWS("   This   is   a   sentence   with   whitespace.    ", $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)
MsgBox($MB_SYSTEMMODAL, "", "*" & $sString & "*")


#include <MsgBoxConstants.au3>

Local $sString = StringLower("This is a string") ; Convert the following string to lowercase.
MsgBox($MB_SYSTEMMODAL, "", "StringLower returned: " & $sString)

#ce

#include <MsgBoxConstants.au3>

Example()

Func Example()
    Local $aDays = StringSplit("Mon,Tues,Wed,Thur,Fri,Sat,Sun", ",") ; Split the string of days using the delimiter "," and the default flag value.

    For $i = 1 To $aDays[0] ; Loop through the array returned by StringSplit to display the individual values.
        MsgBox($MB_SYSTEMMODAL, "", "$aDays[" & $i & "] - " & $aDays[$i])
    Next
EndFunc   ;==>Example
