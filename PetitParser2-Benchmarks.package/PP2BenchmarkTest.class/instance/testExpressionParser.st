testing - expressions
testExpressionParser
	| parser bench result |
	bench := PP2Benchmark new setupExpressionParser.
	parser := bench parser.
	
	self assert: parser class equals: PP2ExpressionParser.
	
	result := parser end parse: '1 + (2 * 3)'.
	self assert: result value size = 3.
	self assert: result value first equals: 1.

	self assert: (parser end parse: bench input anyOne) isPetit2Failure not.