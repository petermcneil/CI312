## Parent project of CI312

This is the parent project for CI312 - Computer Graphics Algorithm module. The sub directories contain completed tutorials.


All code was written on MacOS, therefore contains Bash/MacOS specific commands.

### Build Commands

For your convienice I have written a small `Makefile` in the parent directory.
It will replace the hardcoded path for the shaders/assets to one that is specific
to you.


#### Lab 1

**Easiest**

`make lab1`

**Full**
```
c++ lab1/src/HelloWorld.cpp -o helloWorld
./helloWorld 3 4
 ```

#### Lab 2 
 
**Easiest**

`make lab2`

**Full**

```bash
@sed -i.bu  's','\/Users\/mcneip01\/uni\/CI312\/',"$$PWD\/",'g' libraries/Paths.h
mkdir -p ./lab2/build
cmake -B./lab2/build -H./lab2/
make -C ./lab2/build
./lab2/triangle
```

#### Lab 3:

**Easiest**
- `make lab3`

- `make lab3File`

**Full**
```bash
@sed -i.bu  's','\/Users\/mcneip01\/uni\/CI312\/',"$$PWD\/",'g' libraries/Paths.h
mkdir -p ./lab3/build
cmake -B./lab3/build -H./lab3/
make -C ./lab3/build


./lab3/pyramid

OR

./lab3/pyramid 1
```

#### Lab 4:

**Easiest**

`make lab4`

**Full**
```bash
@sed -i.bu  's','\/Users\/mcneip01\/uni\/CI312\/',"$$PWD\/",'g' libraries/Paths.h
mkdir -p ./lab4/build
cmake -B./lab4/build -H./lab4/
make -C ./lab4/build


./lab4/pyramid

OR

./lab4/triangle no

OR

./lab4/triangle basic

OR

./lab4/triangle load
```

#### Lab 5:

**Easiest**

`make lab5`

**Full**
```bash
@sed -i.bu  's','\/Users\/mcneip01\/uni\/CI312\/',"$$PWD\/",'g' libraries/Paths.h
mkdir -p ./lab5/build
cmake -B./lab5/build -H./lab5/
make -C ./lab5/build
./lab5/pyramid
```