as yet unclassified
testAltMatchesItsTerms

	| altExpression |
	altExpression := OhmPExprAlt newOn: { OhmPExprString newOn: 'a' . OhmPExprString newOn: 'b' }.
	self 
		assertParsingExpression: altExpression 
		compliesWithItsFixture: #expressionMatch.