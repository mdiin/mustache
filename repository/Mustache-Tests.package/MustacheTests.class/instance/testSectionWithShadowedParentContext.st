tests
testSectionWithShadowedParentContext

	| template result testContext |
	testContext := {
		'a' -> 'A'.
		'b' -> {
			'a' -> 'AA'
		} asDictionary
	} asDictionary.
	template := MustacheTemplate on:
		            'a: {{ a }} |{{# b }} a: {{ a }}{{/ b }} | a: {{ a }}'.
	result := template value: testContext.
	self assert: result equals: 'a: A | a: AA | a: A'