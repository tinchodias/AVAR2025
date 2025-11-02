Class {
	#name : 'AVAR',
	#superclass : 'Object',
	#instVars : [
		'url'
	],
	#classInstVars : [
		'current'
	],
	#category : 'AVAR2025-Core',
	#package : 'AVAR2025-Core'
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
AVAR >> submitAVAR: anObject [

	^ ZnClient new
			forJsonREST;
			url: url;
			contents: anObject;
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
