Extension { #name : 'Color' }

{ #category : '*AVAR2025' }
Color >> asJsonDictionary [

	^ {		self red.
			self green.
			self blue.
			self alpha }
]
