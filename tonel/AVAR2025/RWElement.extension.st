Extension { #name : 'RWElement' }

{ #category : '*AVAR2025' }
RWElement >> asAVAR [

	^ {  
		#position -> self position asAVAR.
		#shape -> (self shape asAVARIn: self).
		#extent -> self extent asAVAR.
		#model -> self model asString
		} asDictionary
]
