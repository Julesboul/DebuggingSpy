Extension { #name : 'DebugPointInstanceVariableTarget' }

{ #category : '*DebuggingSpy' }
DebugPointInstanceVariableTarget >> debugPointTargetRecord [

	^ DSDebugPointInstanceVariableTargetRecord for: self
]
