test - parsing
testPredicateAny
	|  parser |
	
	parser := #any asParser2.

	self assert: parser parse: 'a' to: $a.
	self assert: parser parse: 'b' to: $b.
	self assert: parser parse: 'z' to: $z.
	self assert: parser fail: ''.