as yet unclassified
testGrammarParsesSymbolLiterals
	
	startRule := #symbolLiteral.
	self
		shouldParseAll: { '#a' . '#asdf897sdf' . '#a456789' . '#a:' . '#A:' . '#a:b:c:d:'
         . '#a:b:c' . '#a:::::::::::::::::::' };
		shouldntParseAny: { '#1' . '#:2' . '#a=' . '#a:+' }.