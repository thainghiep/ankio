#include <MsgBoxConstants.au3>

; Replace a blank space (' ') with a - (minus) character.
Local $sString = StringReplace("This is a sentence with whitespace.", " ", "-")
Local $iReplacements = @extended
MsgBox($MB_SYSTEMMODAL, "", $iReplacements &  @CRLF & @CRLF & $sString)