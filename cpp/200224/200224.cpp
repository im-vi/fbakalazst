#include <iostream>
using namespace std;
int a, b, c, d, reszta;
int main()
{
    cout << "wprowadz pierwsza liczbe: ";
    cin >> a;
    c=a;
    cout << "wprowadz druga liczbe: ";
    cin >> b;
    d=b;
    while(b!=0)
    {
        reszta = a%b;
        a = b;
        b = reszta;
    }
    cout << a << " jest Najwiekszym Wspolnym Dzielnikiem liczb " << c << " i " << d << endl;
    cout << c*d/a << " jest Najmniejsza Wspolna Wielokrotnoscia liczb " << c << " i " << d << endl;
    return 0;
}
