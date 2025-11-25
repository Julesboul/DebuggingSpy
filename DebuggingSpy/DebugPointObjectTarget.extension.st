Extension { #name : 'DebugPointObjectTarget' }

{ #category : '*DebuggingSpy' }
DebugPointObjectTarget >> debugPointTargetRecordFor: aDebugPointTarget [

	^ DSDebugPointObjectTargetEventRecord for: aDebugPointTarget 
]
