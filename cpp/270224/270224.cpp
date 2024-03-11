#include <iostream>
using namespace std;
unsigned NWD(unsigned a, unsigned b)
{
    if(b == 0) return a;
    else return NWD(b, a%b);
}

int main()
{
    unsigned a, b;
    cout << "Podaj dwie liczby: " << endl;
    cin >> a >> b;
    cout << "NWD(" << a << ", " << b << ") = " << NWD(a, b) << endl << endl; // Wersja rekurencyjna

    unsigned x, y, t;

    cin >> x >> y;
    while(y) // Wersja iteracyjna
    {
        t = y;
        y = x % y;
        x = t;
    }
    cout << x << endl;
    return 0;
}
