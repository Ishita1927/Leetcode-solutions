class Solution {
public:
    int countPrimes(int n) {
        if (n <= 2) return 0;
        std::vector isPrime(n / 2, true);
        isPrime[0] = false; 

        for (int i = 1; 2 * i * i + 2 * i < n; ++i) {
            if (isPrime[i]) {
                for (int j = 2 * i * i + 2 * i; j < n / 2; j += 2 * i + 1) {
                    isPrime[j] = false;
                }
            }
        }

        int count = 1; 
        for (int i = 1; i < n / 2; ++i) {
            if (isPrime[i]) {
                count++;
            }
        }

        return count;
    }
};