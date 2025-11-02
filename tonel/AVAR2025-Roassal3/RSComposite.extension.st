Extension { #name : 'RSComposite' }

{ #category : '*AVAR2025-Roassal3' }
RSComposite >> asRS3AVAR [

	^ super asRS3AVAR
		addAll: {
			#nodes -> (nodes collect: [ :each | each asRS3AVAR ] as: Array).
			#edges -> (lines collect: [ :each | each asRS3AVAR ] as: Array).
			} asDictionary;
		yourself
]
