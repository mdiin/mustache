tests
testSingleTokenParentContext

	| template result |
	template := MustacheTemplate on:
		            'This is a test for {{ name }}. {{# list}}{{ name }} is {{ age }}{{/ list}}'.
	result := template value: { 
			          ('name' -> 'aName').
			          ('list' -> { ('age' -> 42) } asDictionary) } asDictionary.
	self assert: result equals: 'This is a test for aName. aName is 42'