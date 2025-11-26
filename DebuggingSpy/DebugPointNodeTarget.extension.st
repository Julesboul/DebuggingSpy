Extension { #name : 'DebugPointNodeTarget' }

{ #category : '*DebuggingSpy' }
DebugPointNodeTarget >> debugPointTargetRecord [

	^ DSDebugPointNodeTargetRecord for: self
]
