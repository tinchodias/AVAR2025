Extension { #name : 'RSPolygon' }

{ #category : '*AVAR2025-Roassal3' }
RSPolygon >> asRS3AVAR [

	^ super asRS3AVAR
		at: #points put: (self points collect: #asRS3AVAR as: Array);
		yourself
]
