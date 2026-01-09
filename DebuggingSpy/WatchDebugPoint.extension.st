Extension { #name : 'WatchDebugPoint' }

{ #category : '*DebuggingSpy' }
WatchDebugPoint >> debugPointRecordFor: aDebugPointEvent [

	^ DSWatchDebugPointEventRecord for: aDebugPointEvent 
]
