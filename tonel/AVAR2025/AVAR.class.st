Class {
	#name : 'AVAR',
	#superclass : 'Object',
	#instVars : [
		'url'
	],
	#classInstVars : [
		'current'
	],
	#category : 'AVAR2025',
	#package : 'AVAR2025'
}

{ #category : 'accessing' }
AVAR class >> current [

	^ current ifNil: [ current := self new ]
]

{ #category : 'accessing' }
AVAR class >> reset [

	current := nil
]

{ #category : 'initialization' }
AVAR >> initialize [

	super initialize.

	url := ZnUrl fromString: 'http://localhost:8080/avar'
]

{ #category : 'debugging' }
AVAR >> newEchoMockServer [

	| server |
	self assert: url isLocalHost.
	
	server := ZnServer startDefaultOn: url port.
	server onRequestRespond: [ :request |
		(request absoluteUrl = url and: [
			request method = #POST and: [
				request contentType = ZnMimeType applicationJson ]])
					ifTrue: [
						(STON toJsonStringPretty: (STON fromString: request contents)) traceCr.
						ZnResponse ok: (ZnStringEntity json: '"done"') ]
					ifFalse: [
						ZnResponse badRequest: request ] ].

	^ server
]

{ #category : 'accessing' }
AVAR >> submitView: aRWView [

	^ ZnClient new
			forJsonREST;
			url: url;
			contents: aRWView asAVAR;
			post
]

{ #category : 'accessing' }
AVAR >> url [

	^ url
]

{ #category : 'accessing' }
AVAR >> url: anObject [

	url := anObject
]
