Class {
	#name : 'DSToolWindowOpenedEventRecord',
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
DSToolWindowOpenedEventRecord >> eventName [

	^ [
	  String streamContents: [ :str |
		  str << toolClassName.
		  str space.
		  str << 'opening' ] ]
		  on: Error
		  do: [ '[ERROR] Tool opening' ]
]

{ #category : 'actions api' }
DSToolWindowOpenedEventRecord >> record: window [

	| tool |
	super record: window.

	tool := (window model isKindOf: SpWindowPresenter)
		        ifTrue: [ window model presenter ]
		        ifFalse: [ window model ].

	toolClassName := tool class name.
	toolIdentityHash := tool identityHash
]
