Extension { #name : 'Color' }

{ #category : '*AVAR2025-Core' }
Color >> asAVAR [

	^ {  self red.
		  self green.
		  self blue.
		  self alpha } collect: [ :each | each roundTo: 0.001 ]
]
