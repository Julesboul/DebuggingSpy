Extension { #name : 'DebugPointObjectTarget' }

{ #category : '*DebuggingSpy' }
DebugPointObjectTarget >> debugPointRecordFor: aDebugPointEvent [

	^ DSVariableDebugPointEventRecord for: aDebugPointEvent 
]
