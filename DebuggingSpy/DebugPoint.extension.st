Extension { #name : 'DebugPoint' }

{ #category : '*DebuggingSpy' }
DebugPoint >> breakpointRecordFor: aBreakpointEvent [
	^DSBreakpointEventRecord for: aBreakpointEvent 
]
