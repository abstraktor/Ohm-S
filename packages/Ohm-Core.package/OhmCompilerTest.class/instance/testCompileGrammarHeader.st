as yet unclassified
testCompileGrammarHeader

	| aGrammar |
	aGrammar := OhmCompiler compileGrammarHeader: 'OhmTestingPackage.G1'.
	
	self assert: 'G1' equals: aGrammar grammarName.
	self assert: OhmBaseGrammar OhmInstance equals: aGrammar superGrammar.
	self assert: (OhmNamespace named: 'OhmTestingPackage') equals: aGrammar namespace.