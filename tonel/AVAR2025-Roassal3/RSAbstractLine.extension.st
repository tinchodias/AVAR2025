Extension { #name : 'RSAbstractLine' }

{ #category : '*AVAR2025-Roassal3' }
RSAbstractLine >> asRS3AVAR [

	| dict |
	dict := super asRS3AVAR.
	
	dict
		at: #from put: self from identityHash;
		at: #to put: self to identityHash.

	self markerStart ifNotNil: [ :aMarker |
		dict at: #markerStart put: aMarker asRS3AVAR ].

	self markerMid ifNotNil: [ :aMarker |
		dict at: #markerMid put: aMarker asRS3AVAR ].

	self markerEnd ifNotNil: [ :aMarker |
		dict at: #markerEnd put: aMarker asRS3AVAR ].

	^ dict
]
