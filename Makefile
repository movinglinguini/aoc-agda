DayOne:
	agda --compile --ghc-strict DayOne.agda

clean:
	rm DayOne

.PHONY: clean