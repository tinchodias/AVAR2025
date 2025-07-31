# AVAR2025

Open Transcript and evaluate in a Workspace:
```smalltalk
	server := AVAR current newEchoMockServer
	server start.
	"server stop."
```
This server will print on Transcript the views converted to JSON, each time `openAVAR` is sent to a `RSView` as in the following example:
```smalltalk
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

  view openAVAR.
```
Additionally, you can send `view open` to open the view in Woden.

Browse `RWBasicExamples` for more view examples.
Browse subclasses of `RWLayout` for alternative layouts.
