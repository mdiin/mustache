resolving
lookup: aToken inContext: aStack
	aStack do: [ :ctx |
		| val |
		val := ctx mustacheLookup: aToken.
		val ifNotNil: [ ^ val ].
		].
	^ nil