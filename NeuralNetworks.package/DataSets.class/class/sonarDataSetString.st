as yet unclassified
sonarDataSetString
	"self sonarDataSetString"
	| url response |
	url := 'https://archive.ics.uci.edu/ml/machine-learning-databases/undocumented/connectionist-bench/sonar/sonar.all-data'.
	response := ZnEasy client
		url: url;
		get;
		response.
	^ response entity contents