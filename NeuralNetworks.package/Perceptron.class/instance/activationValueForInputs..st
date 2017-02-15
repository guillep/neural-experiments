testing
activationValueForInputs: inputs

	| activation |
	activation := 0.
	inputs with: weights do: [ :input :weight | activation := activation + (input * weight) ].
	^ activation + bias