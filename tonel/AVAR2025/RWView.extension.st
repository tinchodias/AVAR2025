Extension { #name : 'RWView' }

{ #category : '*AVAR2025' }
RWView >> asAVAR [

	^ elements collect: [ :each | each asAVAR ] as: Array
]

{ #category : '*AVAR2025' }
RWView >> openAVAR [

	^ AVAR current submitView: self
]
