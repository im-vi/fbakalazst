#include <iostream>
using namespace std;

int NWD(int a, int b)
{
    int i;
    while(b!=0)
    {
        i = b;
        b = a%b;
        a = i;
    }
    return (a);
}


int NWW(int a, int b)
{
    return a/NWD(a,b)*b;
}

int main()
{
    int c, i, l1, l2, m1, m2, licznik, mianownik;


    cout << "Podaj licznik pierwszego ulamka: ";
    cin >> l1;
    cout << "Podaj mianownik pierwszego ulamka: ";
    cin >> m1;

    cout << "Podaj licznik drugiego ulamka: ";
    cin >> l2;
    cout << "Podaj mianownik drugiego ulamka: ";
    cin >> m2;

    mianownik = NWW(m1, m2);
    i = licznik = mianownik/m1*l1 + mianownik/m2*l2;
    licznik = licznik / NWD(i, mianownik);
    mianownik = mianownik / NWD(i, mianownik);

    if(licznik/mianownik != 0)
    {
        c=licznik/mianownik;
        licznik=licznik-c*mianownik;
        cout << l1 << "/" << m1 << " + " << l2 << "/" << m2 << " = " << c << " i " << licznik << "/" << mianownik;
    }
    else
        cout<<l1<<"/"<<m1<<" + "<<l2<<"/"<<m2<<" = "<<licznik<<"/"<<mianownik;

    return 0;
}
