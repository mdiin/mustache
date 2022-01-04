resolving
value: anObject partials: aDictionary visitor: aVisitor
	| visitor |
	visitor := aVisitor
		partials: aDictionary;
		pushContext: anObject.
	self accept: visitor.
	^ visitor string