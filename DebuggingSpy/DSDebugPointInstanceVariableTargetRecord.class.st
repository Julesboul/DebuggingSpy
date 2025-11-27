Class {
	#name : 'DSDebugPointInstanceVariableTargetRecord',
	#superclass : 'DSDebugPointClassTargetRecord',
	#instVars : [
		'accessStrategy'
	],
	#category : 'DebuggingSpy-Records',
	#package : 'DebuggingSpy',
	#tag : 'Records'
}

{ #category : 'accessing' }
DSDebugPointInstanceVariableTargetRecord >> accessStrategy [ 

	^ accessStrategy 
]

{ #category : 'actions api' }
DSDebugPointInstanceVariableTargetRecord >> record: aDebugPointTarget [

	super record: aDebugPointTarget.
	accessStrategy := aDebugPointTarget accessStrategy 
]
