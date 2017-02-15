as yet unclassified
sonarDataSet

	"self sonarDataSet"
	"Taken from: https://archive.ics.uci.edu/ml/datasets/Connectionist+Bench+(Sonar,+Mines+vs.+Rocks)"
	^ (NeoCSVReader on: self sonarDataSetString readStream) upToEnd