### Lab 1

#### Requirements:
    
    - Write a hello world program in C++
    - Write simple funcitons for add/subtract/multiply/divide
---
#### Journey
I had never written C++ before, so this exercise was useful for getting to understand
the basic syntax and intricacies - and to pointers!

I started by defining a simple main function 

```cpp
#include <iostream>
using namespace std;

int main(){
    cout << "Hello, world!" << endl;
    return 0;
}

```

and compiling and running it with the command `c++ lab1/src/HelloWorld.cpp -o helloWorld && ./helloWorld`

I then started creating the functions `add/divide/subtract/multiply` and hard-coding values
inside the `main()` function.

```cpp
void add(int num1, int num2) {
    cout << num1 + num2 << endl;
}

/* other functions */

int main(){
    add(1, 2)
    ...
    return 0;
}
```

From here I progressed to passing in arguments from the command line. Here is where I ran into my first runtime error.
To pass arguments into a C++ program you simply add a counter for the number of args and an array of `char*`. `char*` 
being a pointer.

A pointer, points to an address in memory where a variable is stored. For the case of `char*` this effectively means we 
can simulate a Java string.

```cpp
int main(int argc, char* argv[]) {}
```

After receiving the arguments I tried to index `argv` to extract the arguments. I tried using `argc` as the index (CI101 error)
and didn't check `argc` properly. This led to a runtime error - `Segemtation fault: 11`. This was an out of bounds error
meaning that the I was falling outside of the array.

```cpp
if (argc > 0) {
    num1 = argv[argc];
    num2 = argv[argc -1];
} else {
    cout << "Need 2 arguments, not " << argc -1 << endl ;
    return 1;
}
```

Quite clearly the fix was check to that `argc > 1`. However I also needed to fix `num1` as it causes
the same runtime error. So I implemented a more complex if statement to only accept two arguments.

```cpp
if (4 > argc && argc >= 3) {
    num1 = atoi(argv[argc - 1]);
    num2 = atoi(argv[argc - 2]);
} else {
    cout << "Need 2 arguments, not " << argc -1 << endl ;
    return 1;
}
```
The `atoi()` function came from the `cstdlib` and converted the `char` to `int`.

After this I decided to play around with casting and global variables. Setting global formatted `char[]` to be 
displayed in the output. In the `division()` function I decided to compare to have two divisions performed one with
the `int` passed in and one with the ints casted to doubles - to compare the outputs.

#### Final product
Input:
`c++ lab1/src/HelloWorld.cpp -o helloWorld && ./helloWorld 3 4`

Output:

```bash
Add              |  7
Subtract         |  1
Multiply         |  12
DOUBLE Divide    |  1
INT Divide       |  1.33333
```

#### Conclusion
I feel I received a good introduction into a basic c++ and structure. I learnt how to write basic functions, how to use
global variables, a very basic introduction in to packages, and an introduction to compiler errors from mismanaging 
memory.

I look forward to a deeper dive in C++ with classes, header files etc.


#### Sources
[Stack Overflow](https://www.stackoverflow.com/)

[Tutorials Point](https://www.tutorialspoint.com/cplusplus)


