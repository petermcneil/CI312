#include <iostream>
#include <cstdlib>
using namespace std;

char ch_dub_divide[30]   = "INT Divide       |  ";
char ch_int_divide[30]   = "DOUBLE Divide    |  ";
char ch_multiply[30]     = "Multiply         |  ";
char ch_add[30]          = "Add              |  ";
char ch_subtract[30]     = "Subtract         |  ";

void add(int num1, int num2) {
    cout << ch_add << num1 + num2 << endl;
}

void subtract(int num1, int num2) {
    cout << ch_subtract << num1 - num2 << endl;
}

void multiply(int num1, int num2) {
    cout << ch_multiply << num1 * num2 << endl;
}

void divide(int num1, int num2) {
    cout << ch_int_divide << num1 / num2 << endl;
    cout << ch_dub_divide << (double) num1 / (double) num2 << endl;
}

int main(int argc, char* argv[] ) {
    int num1, num2;

    if (4 > argc && argc >= 3) {
        num1 = atoi(argv[argc - 1]);
        num2 = atoi(argv[argc - 2]);
    } else {
        cout << "Need 2 arguments, not " << argc -1 << endl ;
        return 1;
    }

    add(num1, num2);
    subtract(num1, num2);
    multiply(num1, num2);
    divide(num1, num2);

    return 0;
}

