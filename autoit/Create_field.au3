Func _CreateCloze($example,$word)
	Return StringReplace($example,$word,"{{c1::" & $word & "}}")
EndFunc
