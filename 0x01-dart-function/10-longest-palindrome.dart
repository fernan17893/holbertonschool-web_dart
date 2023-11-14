bool isPalindrome(String s) {
    if (s == null || s.length == 0) {
        return true;
    }
    if (s.length <= 2) {
        return false;
    }
    int left = 0;
    int right = s.length - 1;
    while (left < right) {
        if (s[left] != s[right]) {
        return false;
        }
        left++;
        right--;
    }
    return true;
}

String longestPalindrome(String s) {
    if (s == null || s.length == 0) {
        return 'none';
    }
    if (s.length <= 2) {
        return 'none';
    }
    int left = 0;
    int right = s.length - 1;
    String longest = "";
    while (left < right) {
        if (s[left] == s[right]) {
            String sub = s.substring(left, right + 1);
            if (isPalindrome(sub)) {
                if (sub.length > longest.length) {
                    longest = sub;
                }
            }
        }
        right--;
        if (right == left) {
            left++;
            right = s.length - 1;
        }
    }
    return longest;
}