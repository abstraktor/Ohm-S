compiling
compileGrammarDefinition: textualRepresentation inNamespace: namespaceName

	| cst |

	cst := OhmGrammarOfOhm 
				matchContents: textualRepresentation 
				startingFrom: 'Grammar' 
				failureAsException: true.
	
	^ (OhmGrammarOfOhm 
			semanticAction: (OhmCompileGrammar newIn: (OhmNamespace named: namespaceName))) value: cst
	