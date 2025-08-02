Extension { #name : 'RWElement' }

{ #category : '*AVAR2025' }
RWElement >> asAVAR [

	^ {
		#id -> self identityHash.
		#position -> self position asAVAR.
		#shape -> (self shape asAVARIn: self).
		#extent -> self extent asAVAR.
		#model -> self model asString
		} asDictionary
]
