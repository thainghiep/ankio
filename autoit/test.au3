$word = "example"
$example = "this is example"

Func _CreateCloze($example,$word)
	Return StringReplace($example,$word,"{{c1::" & $word & "}}")
EndFunc

MsgBox(0,0,_CreateCloze($example,$word))


