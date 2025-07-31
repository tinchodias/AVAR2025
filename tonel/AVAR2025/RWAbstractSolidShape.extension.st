Extension { #name : 'RWAbstractSolidShape' }

{ #category : '*AVAR2025' }
RWAbstractSolidShape >> asAVARIn: aRWElement [ 

	^ { 
		#color -> (self colorFor: aRWElement) asAVAR.
		#shapeDescription -> self className.
		#extent -> (self extentFor: aRWElement) asAVAR.
		} asDictionary
]
