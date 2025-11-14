Extension { #name : 'DebugPoint' }

{ #category : '*DebuggingSpy' }
DebugPoint >> debugPointRecordFor: aDebugPointEvent [
	^DSDebugPointEventRecord for: aDebugPointEvent 
]
