as yet unclassified
OhmInstance

	"Super lazy loading of grammar from serialization in case the class comes from version control --pre"

	^ OhmInstance 
		ifNil: [ 
			isLoading ifNil: [isLoading := false].
			isLoading 
					ifFalse: [
						isLoading := true.
					 	[OhmInstance := 
							OhmCompiler compileGrammarDefinition: self serializedGrammar
											inNamespace: self packageInfo packageName .
						OhmInstance smalltalkPlaceholder: self] 
							ensure: [isLoading := false].
					 	OhmInstance]
					ifTrue: [ nil ]].