as yet unclassified
testAnythingProducesNodes

	| anything |
	anything := OhmPExprAnything new.
	self 
		assertParsingExpression: anything 
		compliesWithItsNodeFixture: #matchTree.