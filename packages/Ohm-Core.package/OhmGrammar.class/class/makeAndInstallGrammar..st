instance creation
makeAndInstallGrammar: description

	| grammar |
	grammar := OhmCompiler compileGrammarDefinition: description inNamespace: OhmNamespace defaultNamespaceName.
	OhmCompiler installGrammar: grammar intoNamespace: OhmNamespace defaultNamespaceName.
	^ grammar
	