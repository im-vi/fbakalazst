#include <iostream>
using namespace std;
int main()
{
    int n, p;
	cout << "Podaj liczbe naturalna: ";
	cin >> n;
	for(p=2; p<n; p++)
    if(n % p == 0)
    {
        cout << n << " jest liczba zlozona.";
        exit(0);
    }
    cout << n << " jest liczba pierwsza.";
    exit(0);

}
