as yet unclassified
testMatchFailureOnNonStringInput

	| g result |

	g := OhmGrammar makeGrammar: 'G { start = 5 }'.
	result := g match: 42 startingFrom: 'start'.

	self should: result failed.
	self assert: result message equals: 'match failed at position 0'.
	self assert: result position equals: 0.