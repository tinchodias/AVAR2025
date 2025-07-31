Extension { #name : 'RWView' }

{ #category : '*AVAR2025' }
RWView >> asJsonDictionary [

	^ elements collect: [ :each | each asJsonDictionary ]
]

{ #category : '*AVAR2025' }
RWView >> openAVAR [

	AVAR current submitView: self
]
