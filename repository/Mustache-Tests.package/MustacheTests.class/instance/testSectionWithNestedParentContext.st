tests
testSectionWithNestedParentContext

	| template result testContext |
	testContext := {
		'a' -> 'A'.
		'bs' -> {
			'cs' -> {
				{ 'c' -> 'D' } asDictionary.
				{ 'c' -> 'E' } asDictionary.
			}
		} asDictionary
	} asDictionary.
	template := MustacheTemplate on:
		            'a: {{ a }} | cs: {{ cs }} |{{# bs }}> c: {{ c }}{{# cs }}>> c: {{ c }}{{/ cs}}> c: {{ c }}{{/ bs}} | cs: {{ cs }} | a: {{ a }}'.
	result := template value: testContext.
	self assert: result equals: 'a: A | cs:  |> c: >> c: D>> c: E> c:  | cs:  | a: A'