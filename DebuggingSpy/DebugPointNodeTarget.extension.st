Extension { #name : 'DebugPointNodeTarget' }

{ #category : '*DebuggingSpy' }
DebugPointNodeTarget >> debugPointTargetRecordFor: aDebugPointTarget [

	^ DSDebugPointNodeTargetEventRecord for: aDebugPointTarget 
]
