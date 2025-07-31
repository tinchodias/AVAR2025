Extension { #name : 'RWElement' }

{ #category : '*AVAR2025' }
RWElement >> asJsonDictionary [

	^ {  
		#position -> self position asJsonDictionary.
		#shape -> (self shape asJsonDictionaryIn: self).
		#extent -> self extent asJsonDictionary.
		#model -> self model asString
		} asOrderedDictionary
]
