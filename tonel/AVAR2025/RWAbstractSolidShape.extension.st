Extension { #name : 'RWAbstractSolidShape' }

{ #category : '*AVAR2025' }
RWAbstractSolidShape >> asJsonDictionaryIn: aRWElement [ 

	^ { 
		#color -> (self colorFor: aRWElement) asJsonDictionary.
		#shapeDescription -> self className.
		#extent -> (self extentFor: aRWElement) asJsonDictionary.
		} asOrderedDictionary
]
