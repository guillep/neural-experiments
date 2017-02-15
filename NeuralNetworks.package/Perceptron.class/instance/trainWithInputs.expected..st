testing
trainWithInputs: inputs expected: expectedValue

	| prediction learningDirection |
	prediction := self predictionForInputs: inputs.

	learningDirection := expectedValue - prediction.	
	weights := weights collectWithIndex: [ :w :i | | input | 
		input := inputs at: i.
		w + (learningRate * learningDirection * input) ]