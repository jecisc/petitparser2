optimizations
doPass: node
	| children child |
	self visit: node.
	children := node allNodes.
	
	[child := children detect: [ :e | (e hasProperty: #neverFails) not ] 
							ifNone: [ nil ] ] whileNotNil: [ 		
		self visit: child
	]