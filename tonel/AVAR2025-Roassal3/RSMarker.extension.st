Extension { #name : 'RSMarker' }

{ #category : '*AVAR2025-Roassal3' }
RSMarker >> asRS3AVAR [

	^ {
		#id -> self identityHash.
		#offset -> self offset.
		#offsetRatio -> self offsetRatio.
		#shape -> self shape asRS3AVAR.
		} asOrderedDictionary
]
