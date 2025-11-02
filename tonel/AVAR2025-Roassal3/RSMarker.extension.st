Extension { #name : 'RSMarker' }

{ #category : '*AVAR2025-Roassal3' }
RSMarker >> asRS3AVAR [

	^ {
		#id -> self identityHash.
		#shape -> self shape asRS3AVAR.
		#offset -> self offset.
		#offsetRatio -> self offsetRatio.
		} asDictionary
]
