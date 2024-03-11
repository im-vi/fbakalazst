#include <iostream>
using namespace std;
int a, b, c, d;
int main()
{
    cout << "Wprowadz pierwsza liczbe: ";
    cin >> a;
    c=a; // zmienna c przechowuje pierwotna wartosc pierwszej liczby
    cout << "Wprowadz druga liczbe: ";
    cin >> b;
    d=b; // zmienna d przechowuje pierwotna wartosc drugiej liczby
    while(a!=b) // petla wykonuje sie w sytuacjach, gdy liczby s¹ ró¿ne od siebie
        if(a > b) a = a - b; // od wiekszej wartosci zmiennej (a) odejmowana jest liczba mniejsza (b); wynik jest przypisywany do zmiennej a
        else b = b - a; // od wiekszej wartosci zmiennej b odejmujemy zmienna a
    cout << a << " jest Najwiekszym Wspolnym Dzielnikiem liczb " << c << " oraz " << d << endl;
    return 0;
}
