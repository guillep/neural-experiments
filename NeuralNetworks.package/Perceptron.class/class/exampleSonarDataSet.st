examples
exampleSonarDataSet

	"self exampleSonarDataSet"
	| sonarDataSet training |
	sonarDataSet := DataSets sonarDataSet collect: [ :row | | class |
		class := row last = 'R' ifTrue: [ 1 ] ifFalse: [ 0 ].
		{row allButLast collect: #asNumber . class } ].
	
	training := Training new.
	training dataset: sonarDataSet.
	training learningRate: 0.01.
	training epoch: 500.
	training kfold: 3.
	
	^ training go