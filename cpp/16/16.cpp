#include <iostream>
using namespace std;
int main()
{
    unsigned int n, lp, p, d;
    bool t;

    cout << "Podaj ilosc liczb pierwszych do wygenerowania: ";
    cin >> n; // ile liczb pierwszych ma by� wygenerowanych
    lp = 0; // lp oznacza aktualnie znalezione liczby pierwsze
    p = 2; // aktualnie badana liczba
    while (lp < n)
    {
        t = true; // badana aktualnie liczba jest potencjalnie liczb� pierwsz�
        for(d = 2; d < p; d++) // d oznacza dzielnik
            if(p % d == 0)
            {
                t = false; // badana liczba nie mo�e by� liczb� pierwsz�
                break; // break powoduje przerwanie dzia�ania p�tli (wy�cie poza klamr�)
            }

        if (t) // je�eli zmienna t mia�a warto�� true, to...
        {
            cout << p << " "; // ... wy�wietl badan� liczb� pierwsz�
            lp++; // zwi�ksz zmienn� przechowuj�c� ilo�� liczb pierwszych o 1
        }
        p++; // pobieramy kolejn� liczb� do bada�
    }
    cout << endl;
    return 0;
}
