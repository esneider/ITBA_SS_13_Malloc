TARGETS = bin/simulator/run_lifo bin/simulator/run_best bin/simuGui

all: $(TARGETS)

bin/simulator/run_lifo:
	cd simulator && make release NAME=lifo && cd ..

bin/simulator/run_best:
	cd simulator && make release NAME=best && cd ..

bin/simuGui:
	cd ui && qmake && make && cd ..
	
clean:
	rm $(TARGETS); cd ui && make clean && cd ..
	
