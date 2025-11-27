Class {
	#name : 'DSAbstractDebugPointTargetRecord',
	#superclass : 'Object',
	#instVars : [
		'target'
	],
	#category : 'DebuggingSpy-Records',
	#package : 'DebuggingSpy',
	#tag : 'Records'
}

{ #category : 'instance creation' }
DSAbstractDebugPointTargetRecord class >> for: aDebugPointTarget [

	^ self new record: aDebugPointTarget 
]

{ #category : 'actions api' }
DSAbstractDebugPointTargetRecord >> record: aDebugPointTarget [

	target := aDebugPointTarget target asString
]

{ #category : 'accessing' }
DSAbstractDebugPointTargetRecord >> target [

	^ target
]
