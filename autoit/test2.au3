$word = "to the moon"

$arrWord = StringSplit($word, " ")

for $i in $arrWord
	MsgBox(0,0, $i)
Next

for $i to $arrWord[0]
	$arrWord