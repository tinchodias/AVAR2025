Extension { #name : 'RSBoundingShape' }

{ #category : '*AVAR2025-Roassal3' }
RSBoundingShape >> asRS3AVAR [

	^ super asRS3AVAR
		at: #position put: self position asRS3AVAR;
		at: #extent put: self extent asRS3AVAR;
		yourself
]
