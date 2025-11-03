Extension { #name : 'Point' }

{ #category : '*AVAR2025-Roassal3' }
Point >> asRS3AVAR [

	^ Array
		with: (x roundTo: 0.001)
		with: (y roundTo: 0.001)
]
