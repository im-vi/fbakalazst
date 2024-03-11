#include <iostream>
using namespace std;
int main()
{
    unsigned int n, lp, p, d;
    bool t;

    cout << "Podaj ilosc liczb pierwszych do wygenerowania: ";
    cin >> n; // ile liczb pierwszych ma byæ wygenerowanych
    lp = 0; // lp oznacza aktualnie znalezione liczby pierwsze
    p = 2; // aktualnie badana liczba
    while (lp < n)
    {
        t = true; // badana aktualnie liczba jest potencjalnie liczb¹ pierwsz¹
        for(d = 2; d < p; d++) // d oznacza dzielnik
            if(p % d == 0)
            {
                t = false; // badana liczba nie mo¿e byæ liczb¹ pierwsz¹
                break; // break powoduje przerwanie dzia³ania pêtli (wyœcie poza klamrê)
            }

        if (t) // je¿eli zmienna t mia³a wartoœæ true, to...
        {
            cout << p << " "; // ... wyœwietl badan¹ liczbê pierwsz¹
            lp++; // zwiêksz zmienn¹ przechowuj¹c¹ iloœæ liczb pierwszych o 1
        }
        p++; // pobieramy kolejn¹ liczbê do badañ
    }
    cout << endl;
    return 0;
}
