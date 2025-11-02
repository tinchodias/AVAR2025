Extension { #name : 'RWView' }

{ #category : '*AVAR2025-RW' }
RWView >> asAVAR [

	^ {
	#id -> self identityHash.
	#type -> self className.
	#elements -> (elements collect: [ :each | each asAVAR ] as: Array)
	} asDictionary
]

{ #category : '*AVAR2025-RW' }
RWView >> openAVAR [

	^ AVAR current submitAVAR: self asAVAR
]
