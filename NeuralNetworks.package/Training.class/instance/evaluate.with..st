training
evaluate: perceptron with: testset

	| positiveResults |
	positiveResults := testset count: [ :each | (perceptron predictionForInputs: each first) = each second ].
	^ (positiveResults / testset size) asFloat * 100