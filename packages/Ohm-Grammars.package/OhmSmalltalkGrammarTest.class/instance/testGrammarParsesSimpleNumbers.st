as yet unclassified
testGrammarParsesSimpleNumbers

	{	{'1' . 		#integerLiteral } .
	 	{'1000' . 	#integerLiteral } .
		{'-1000' .	#integerLiteral }.
		{'-1' .		#integerLiteral }.
		{'1.0' .		#floatingPointLiteral }.
		{'1.12412'.	#floatingPointLiteral }.
		{'-1.0' .		#floatingPointLiteral }.
		{'-1.12412'.	#floatingPointLiteral } }
		do: [ :t | |r|
			r := OhmSmalltalk matchContents: t first startingFrom: t second.
			self assert: r MatchedWithContent: t first andRuleName: t second.].

	{	{'1 2' . 		#integerLiteral } .
	 	{'1 2 3' . 	#integerLiteral } .
		{'- 1000' .	#integerLiteral }.
		{'- 1' .		#integerLiteral }.
		{'1. 0' .		#floatingPointLiteral }.
		{'1. 12412'.	#floatingPointLiteral }.
		{'- 1 .0' .	#floatingPointLiteral } }
		do: [ :t | |r|
			r := OhmSmalltalk matchContents: t first startingFrom: t second.
			self assert: false equals: r.]