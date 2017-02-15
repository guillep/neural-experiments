training
train: perceptron with: trainset times: times

	times timesRepeat: [
		trainset do: [ :input |
			perceptron trainWithInputs: input first expected: input second ] ]