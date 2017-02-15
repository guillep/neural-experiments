testing
predictionForInputs: inputs

	"Prediction function for a perceptron.
	This is a binary prediction function that returns either 1 if the activation value is bigger or equals to 0 or 0 otherwise"
	^ (self activationValueForInputs: inputs) >= 0
		ifTrue: [ 1.0 ]
		ifFalse: [ 0.0 ]