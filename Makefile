.PHONY: setup
.PHONY: lab1
.PHONY: lab2
.PHONY: lab3

setup:
	@sed -i.bu  's','\/Users\/mcneip01\/uni\/CI312\/',"$$PWD\/",'g' libraries/Paths.h

lab1: setup
	c++ lab1/src/HelloWorld.cpp -o helloWorld && ./helloWorld 3 4

lab2: setup
	mkdir -p ./lab2/build && \
	cmake -B./lab2/build -H./lab2/ && \
	make -C ./lab2/build && \
	./lab2/triangle

lab3: setup
	mkdir -p ./lab3/build && \
	cmake -B./lab3/build -H./lab3/ && \
	make -C ./lab3/build && \
	./lab3/pyramid

lab3File: setup
	mkdir -p ./lab3/build && \
	cmake -B./lab3/build -H./lab3/ && \
	make -C ./lab3/build && \
	./lab3/pyramid 1

clean:
	@rm -rf ./lab2/build/ && rm -rf ./lab3/build/ && rm -rf ./libraries/Paths.h.bu
