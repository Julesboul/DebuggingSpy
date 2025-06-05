"
I record info about tools opened by windows
"
Class {
	#name : 'DSToolWindowEvent',
	#superclass : 'DSAbstractEventRecord',
	#instVars : [
		'toolInfo'
	],
	#category : 'DebuggingSpy-Records',
	#package : 'DebuggingSpy',
	#tag : 'Records'
}

{ #category : 'accessing' }
DSToolWindowEvent >> eventName [

	toolInfo ifNil: [ ^ '[ERROR] Missing tool info' ].
	^ String streamContents: [ :str | toolInfo printOn: str ]
]

{ #category : 'actions api' }
DSToolWindowEvent >> record: window [

	| tool |
	super record: window.
	tool := DSSpy toolInWindow: window.
	tool ifNil: [ ^ self ]. 
	toolInfo := DSToolInfo
		            toolNamed: tool class name
		            id: tool identityHash
		            windowId: windowId
		            action: self toolAction
]

{ #category : 'accessing' }
DSToolWindowEvent >> toolAction [
	 ^self subclassResponsibility 
]
