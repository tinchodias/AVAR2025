Class {
	#name : 'AVARExamples',
	#superclass : 'Object',
	#category : 'AVAR2025',
	#package : 'AVAR2025'
}

{ #category : 'as yet unclassified' }
AVARExamples class >> exampleGrid [

	| view |
	view := RWView new.

	SequenceableCollection withAllSubclassesDo: [ :each |
		| shape |
		shape := each hasComment
			ifTrue: [ RWBox new ]
			ifFalse: [ RWCylinder new ].
		shape color: (each hasSubclasses
			ifTrue: [ Color green ]
			ifFalse: [ Color red ]).
		view add:
			(RWElement new
				model: each;
				shape: shape;
				yourself) ].

	RWXYGridLayout on: view elements.

	^ view
]

{ #category : 'see class side' }
AVARExamples >> seeClassSide [
]
