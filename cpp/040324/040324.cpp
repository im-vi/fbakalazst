#include <iostream>
using namespace std;

int main()
{
    int nww, a, b, i, l1, l2, m1, m2, licznik, mianownik;

    cout << "Podaj licznik pierwszego ulamka: ";
    cin >> l1;
    cout << "Podaj mianownik pierwszego ulamka: ";
    cin >> m1;

    cout << "Podaj licznik drugiego ulamka: ";
    cin >> l2;
    cout << "Podaj mianownik drugiego ulamka: ";
    cin >> m2;

    a = m2;
    b = m1;

    while (b!=0)
    {
        i = b;
        b = a%b;
        a = i;
    }

    nww = m1*m2/a;

    mianownik = nww;
    licznik = mianownik/m1*l1 + mianownik/m2*l2;

    cout << l1 << "/" << m1 << " + " << l2 << "/" << m2 << " = " << licznik << "/" << mianownik;

    return 0;
}
