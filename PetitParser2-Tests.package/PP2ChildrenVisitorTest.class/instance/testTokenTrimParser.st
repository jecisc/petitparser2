as yet unclassified
testTokenTrimParser
	parser := $a asParser2 token trim.
	children := parser allChildren.
	
	self assert: children isCollection.
	self assert: children size = 2.
	self assert: (children includes: parser child).
	self assert: (children includes: parser).	