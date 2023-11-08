void main(List<String> args) {
    var n = int.parse(args[0]);
    if (n == 0) {
        print('is zero');
    } else if (n > 0) {
        print('is positive');
    } else {
        print('is negative');
    }
}