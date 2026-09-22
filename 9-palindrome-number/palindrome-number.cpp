class Solution {
public:
    bool isPalindrome(int n) {
        if (n < 0) return false;

        int dup = n;
        long long revNum = 0;
        int ld = 0;
        while ( n > 0) {
            ld = n % 10;
            revNum = (revNum * 10) + ld;
            n = n / 10;
        }

        if (revNum == dup) {
            return true;
        }
        else {
            return false;
        }
    }
};