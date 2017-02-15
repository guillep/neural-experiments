training
foldDataset: inputDataset into: numberOfFolds
	
	| datasetCopy folds |
	datasetCopy := inputDataset copy asOrderedCollection.
	folds := Set new.
	kfold timesRepeat: [ | newFold |
		newFold := Set new.
		(inputDataset size / kfold) asInteger timesRepeat: [ | element |
			element := datasetCopy atRandom.
			datasetCopy remove: element.
			newFold add: element.
		].
		folds add: newFold
	].
	^ folds