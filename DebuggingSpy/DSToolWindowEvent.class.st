Class {
	#name : 'DSToolWindowEvent',
	#superclass : 'DSAbstractEventRecord',
	#instVars : [
		'toolClassName',
		'toolIdentityHash'
	],
	#category : 'DebuggingSpy-Records',
	#package : 'DebuggingSpy',
	#tag : 'Records'
}

{ #category : 'accessing' }
DSToolWindowEvent >> eventName [

	^ [
	  String streamContents: [ :str |
		  str << (toolClassName ifNil: [ 'missing tool name' ]).
		  str space.
		  str << 'opening' ] ]
		  on: Error
		  do: [ '[ERROR] Tool opening' ]
]

{ #category : 'actions api' }
DSToolWindowEvent >> record: window [

	| tool |
	super record: window.

	tool := (window model isKindOf: SpWindowPresenter)
		        ifTrue: [ window model presenter ]
		        ifFalse: [ window model ].

	toolClassName := tool class name.
	toolIdentityHash := tool identityHash
]
