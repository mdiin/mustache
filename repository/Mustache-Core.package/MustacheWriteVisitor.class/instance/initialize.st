initialize-release
initialize 
	super initialize.
	strings := OrderedCollection new: 50.
	context := Stack new.