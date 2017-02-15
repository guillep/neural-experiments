training
go

	| folds results |

	results := Set new.
	folds := self foldDataset: dataset into: kfold.

	folds do: [ :fold | | perceptron trainset testset |
		perceptron := Perceptron newWithWeights: ((1 to: dataset first first size) collect: [ :i | 0 ]).
		perceptron learningRate: learningRate.
	
		testset := fold.
		trainset := (folds copyWithout: fold) flatCollect: #value.
		
		self train: perceptron with: trainset times: epoch.
		results add: (self evaluate: perceptron with: testset) 
	].

	^ { results . results average }