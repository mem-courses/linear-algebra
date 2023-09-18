#include<bits/stdc++.h>
using namespace std;

using int_t = __int128;

constexpr int_t gcd(int_t a,int_t b) {
	return __gcd(a,b);
}

struct frac_t {
	int_t x, y;
	frac_t(){ x = 0, y = 1; }
	frac_t(int_t a, int_t b) {
		x =a,y = b;
		g = gcd(a,b) ;
	}

	friend inline 
}

int main() {

}