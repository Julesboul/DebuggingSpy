Class {
	#name : 'DSDebugPointObjectTargetRecord',
	#superclass : 'DSAbstractDebugPointTargetRecord',
	#instVars : [
		'subTarget'
	],
	#category : 'DebuggingSpy-Records',
	#package : 'DebuggingSpy',
	#tag : 'Records'
}

{ #category : 'actions api' }
DSDebugPointObjectTargetRecord >> record: aDebugPointTarget [

	super record: aDebugPointTarget.
	subTarget := aDebugPointTarget subTarget 
]

{ #category : 'accessing' }
DSDebugPointObjectTargetRecord >> subTarget [ 

	^ subTarget 
]
