Class {
	#name : 'DSAbstractToolWindowEvent',
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
DSAbstractToolWindowEvent >> eventName [

	^ [
	  String streamContents: [ :str |
		  str << (toolClassName ifNil: [ 'missing tool name' ]).
		  str space.
		  str << 'opening' ] ]
		  on: Error
		  do: [ '[ERROR] Tool opening' ]
]

{ #category : 'actions api' }
DSAbstractToolWindowEvent >> record: window [

	| tool |
	super record: window.

	tool := (window model isKindOf: SpWindowPresenter)
		        ifTrue: [ window model presenter ]
		        ifFalse: [ window model ].

	toolClassName := tool class name.
	toolIdentityHash := tool identityHash
]
