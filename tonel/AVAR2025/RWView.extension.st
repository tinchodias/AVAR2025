Extension { #name : 'RWView' }

{ #category : '*AVAR2025' }
RWView >> asAVAR [

	^ {
	#id -> self identityHash.
	#elements -> (elements collect: [ :each | each asAVAR ] as: Array)
	} asDictionary
]

{ #category : '*AVAR2025' }
RWView >> openAVAR [

	^ AVAR current submitView: self
]
