Extension { #name : 'RSShape' }

{ #category : '*AVAR2025-Roassal3' }
RSShape >> asRS3AVAR [

	| dict |
	dict := OrderedDictionary new.
	dict
		at: #id put: self identityHash;
		at: #type put: self className asString.

	self hasModel ifTrue: [
		dict at: #model put: self model asString ].

	self color ifNotNil: [
		dict at: #color put: self color asRS3AVAR ].

	self hasBorder ifTrue: [
		dict
			at: #borderWidth put: self border width;
			at: #borderColor put: self border color asRS3AVAR ].

	^ dict
]
