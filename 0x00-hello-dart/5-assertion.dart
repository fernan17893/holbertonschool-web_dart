void main(List<String> args) {
    var n = int.parse(args[0]);
    try {
        assert(n >= 80, 'Uncaught Error: Assertion failed: The score must be bigger or equal to  80');
        print('You Passed');
    }
}
