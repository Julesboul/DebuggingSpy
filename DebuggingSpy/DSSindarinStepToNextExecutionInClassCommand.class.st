"
I specialize SindarinStepToNextCallInClassCommand with debugging spy record creation.
	I am meant to replace SindarinStepToNextCallInClassCommand commands in the debugger in order to provide such instrumentation.
"
Class {
	#name : 'DSSindarinStepToNextExecutionInClassCommand',
	#superclass : 'SindarinStepToNextExecutionInClassCommand',
	#traits : 'DSTCommandForTests',
	#classTraits : 'DSTCommandForTests classTrait',
	#category : 'DebuggingSpy-Commands',
	#package : 'DebuggingSpy',
	#tag : 'Commands'
}
