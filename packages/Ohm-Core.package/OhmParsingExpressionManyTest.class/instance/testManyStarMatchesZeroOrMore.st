as yet unclassified
testManyStarMatchesZeroOrMore

	| starExpression |
	starExpression := OhmPExprMany newStarOn: ( OhmPExprString newOn: 'a' ).
	self 
		assertParsingExpression: starExpression 
		compliesWithFixture: #expressionMatch
		fromFixtureSet: #ohmPExprStar.