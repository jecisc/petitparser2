test - parsing
testMap2
	| parser |
	parser := #any asParser2, #any asParser2
		map: [ :a :b | Array with: b with: a ].

	self assert: parser parse: 'ab' to: #($b $a)