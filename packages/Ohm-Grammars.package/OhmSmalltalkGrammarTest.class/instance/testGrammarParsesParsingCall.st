as yet unclassified
testGrammarParsesParsingCall
	
	startRule := #ExecutableCode.
	self shouldParse: 'OhmSmalltalk
		matchContents: ''foo: arg1''
		startingFrom: #KeywordMessage
		failureAsException: true'.
