as yet unclassified
testSemanticActionsTraverseTheTree

	| result testActions |
	testActions := self fixtureGrammar semanticAction: OhmAttributeGenerationTestAttribute new.
	result := self fixtureGrammar matchContents: 'foobar' startingFrom: #bar.
	result := testActions value: result.

	self assert: result first equals: #bar.
	self assert: result second first equals: #foo.