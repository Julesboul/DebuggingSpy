"
I specialize SindarinStepToNextCallInObjectCommand with debugging spy record creation.
	I am meant to replace SindarinStepToNextCallInObjectCommand commands in the debugger in order to provide such instrumentation.
"
Class {
	#name : 'DSSindarinStepToNextExecutionInObjectCommand',
	#superclass : 'SindarinStepToNextExecutionInObjectCommand',
	#traits : 'DSTCommandForTests',
	#classTraits : 'DSTCommandForTests classTrait',
	#category : 'DebuggingSpy-Commands',
	#package : 'DebuggingSpy',
	#tag : 'Commands'
}
