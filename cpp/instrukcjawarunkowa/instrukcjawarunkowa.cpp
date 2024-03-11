#include <iostream>
using namespace std;
int main()
{
    int liczba;
    cout << "Podaj liczbe calkowita: ";
    cin >> liczba;
    if (liczba > 0) cout << "liczba jest wieksza od 0";
    else if(liczba < 0) cout << "liczba jest mniejsza od 0";
    else cout << "liczba jest rowna 0";
    return 0;
}
