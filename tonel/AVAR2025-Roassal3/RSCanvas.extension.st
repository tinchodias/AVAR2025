Extension { #name : 'RSCanvas' }

{ #category : '*AVAR2025-Roassal3' }
RSCanvas >> asAVAR [

	^ {
	#id -> self identityHash.
	#type -> self className.
	#nodes -> (nodes collect: [ :each | each asRS3AVAR ] as: Array).
	#edges -> (edges collect: [ :each | each asRS3AVAR ] as: Array).
	} asDictionary
]

{ #category : '*AVAR2025-Roassal3' }
RSCanvas >> openAVAR [

	^ AVAR current submitAVAR: self asAVAR
]
