.PHONY: setup
.PHONY: lab1
.PHONY: lab2
.PHONY: lab3
.PHONY: lab3File
.PHONY: lab4

setup:
	@sed -i.bu  's','\/Users\/mcneip01\/uni\/CI312\/',"$$PWD\/",'g' libraries/Paths.h

lab1: setup
	c++ lab1/src/HelloWorld.cpp -o helloWorld
	 ./helloWorld 3 4

lab2: setup
	mkdir -p ./lab2/build
	cmake -B./lab2/build -H./lab2/
	make -C ./lab2/build
	./lab2/triangle

lab3: setup
	mkdir -p ./lab3/build
	cmake -B./lab3/build -H./lab3/
	make -C ./lab3/build
	./lab3/pyramid

lab3File: setup
	mkdir -p ./lab3/build
	cmake -B./lab3/build -H./lab3/
	make -C ./lab3/build
	./lab3/pyramid 1

lab4: setup
	mkdir -p ./lab4/build
	cmake -B./lab4/build -H./lab4/
	make -C ./lab4/build
	./lab4/pyramid

lab5: setup
	mkdir -p ./lab5/build
	cmake -B./lab5/build -H./lab5/
	make -C ./lab5/build
	./lab5/pyramid

clean:
	rm -rf ./**/build/  && \
	rm -rf ./libraries/Paths.h.bu  && \
	rm -rf ./helloWorld && \
	rm -rf ./lab2/triangle && \
	rm -rf ./lab3/pyramid && \
	rm -rf ./lab4/pyramid && \
	rm -rf ./lab5/pyramid
