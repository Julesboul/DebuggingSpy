Extension { #name : 'DebugPointInstanceVariableTarget' }

{ #category : '*DebuggingSpy' }
DebugPointInstanceVariableTarget >> debugPointTargetRecordFor: aDebugPointTarget [

	^ DSDebugPointInstanceVariableTargetEventRecord for: aDebugPointTarget 
]
