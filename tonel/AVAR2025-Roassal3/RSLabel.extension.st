Extension { #name : 'RSLabel' }

{ #category : '*AVAR2025-Roassal3' }
RSLabel >> asRS3AVAR [

	^ super asRS3AVAR
		addAll: {
			#text -> self text.
			#fontName -> self fontName.
			#fontSize -> self fontSize.
			} asDictionary;
		yourself
]
