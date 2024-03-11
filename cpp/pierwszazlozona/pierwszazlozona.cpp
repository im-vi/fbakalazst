#include <iostream>
using namespace std;
int main()
{
    int i = 2, n, k;

    do
    {
        cout << endl << "podaj liczbe naturalna wieksza od 1: ";
        cin >> n;

        while (n%i != 0 &&  i <= n)

            i++;
            if (i*i <= n)
                cout << n << " jest liczba zlozona." << endl;
            else
                cout << n << " jest liczba pierwsza." << endl;

        cout << "Wprowadzasz nowa liczbe? 1 - TAK. dowolny klawisz - NIE ";
        cin >> k;
        i=2;
    }
    while (k == 1);

    cout << endl << "koniec programu";
    exit(0);
}
