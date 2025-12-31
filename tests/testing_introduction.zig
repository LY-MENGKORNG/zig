const std = @import("std");

test "Should output 1 input less than or equal 1" {
    // The Standard Library contains useful functions to help create tests.
    // `expect` is a function that verifies its argument is true.
    // It will return an error if its argument is false to indicate a failure.
    // `try` is used to return an error to the test runner to notify it that the test failed.
    try std.testing.expect(factorial(0) == 1);
    try std.testing.expect(factorial(1) == 1);
}

test factorial {
    // A test name can also be written using an identifier.
    // This is a doctest, and serves as documentation for `factorial`.
    try std.testing.expect(factorial(3) == 6);
}

/// 💡 Calculate factorial of a number.
fn factorial(input: i32) i32 {
    if (input == 0 or input == 1) {
        return 1;
    }
    return input * factorial(input - 1);
}
