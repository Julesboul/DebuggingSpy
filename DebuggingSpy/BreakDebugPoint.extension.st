Extension { #name : 'BreakDebugPoint' }

{ #category : '*DebuggingSpy' }
BreakDebugPoint >> debugPointRecordFor: aDebugPointEvent [

	^ DSBreakDebugPointEventRecord for: aDebugPointEvent 
]
