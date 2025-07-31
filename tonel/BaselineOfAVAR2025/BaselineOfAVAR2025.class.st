Class {
	#name : 'BaselineOfAVAR2025',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfAVAR2025',
	#package : 'BaselineOfAVAR2025'
}

{ #category : 'baseline' }
BaselineOfAVAR2025 >> baseline: spec [

	<baseline>
	spec for: #common do: [
			self declareWodenRoassalOn: spec.

			spec
				package: 'AVAR2025'
				with: [ spec requires: #( 'WodenRoassal' ) ] ]
]

{ #category : 'external projects' }
BaselineOfAVAR2025 >> declareWodenRoassalOn: spec [

	spec
		baseline: 'WodenRoassal'
		with: [ spec repository: 'github://desromech/woden-core-roassal' ]
]
