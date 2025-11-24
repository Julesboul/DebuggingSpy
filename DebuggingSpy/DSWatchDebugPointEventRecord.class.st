"
I record variable breakpoint events information.
"
Class {
	#name : 'DSWatchDebugPointEventRecord',
	#superclass : 'DSAbstractDebugPointEventRecord',
	#instVars : [
		'targetClassOrMethod',
		'targetVariables',
		'accessStrategy'
	],
	#category : 'DebuggingSpy-Records',
	#package : 'DebuggingSpy',
	#tag : 'Records'
}

{ #category : 'accessing' }
DSWatchDebugPointEventRecord >> accessStrategy [

	^ accessStrategy
]

{ #category : 'converting' }
DSWatchDebugPointEventRecord >> modelClass [

	^ DSVariableBreakpointRecord
]

{ #category : 'actions api' }
DSWatchDebugPointEventRecord >> record: aDebugPointEvent [
	super record: aDebugPointEvent.
	targetClassOrMethod := aDebugPointEvent debugPoint targetClass.
	targetVariables := aDebugPointEvent debugPoint target instanceVariable.
	accessStrategy := aDebugPointEvent debugPoint target accessStrategy
]

{ #category : 'accessing' }
DSWatchDebugPointEventRecord >> targetClassOrMethod [

	^ targetClassOrMethod
]

{ #category : 'accessing' }
DSWatchDebugPointEventRecord >> targetVariables [

	^ targetVariables
]
