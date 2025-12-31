const print = @import("std").debug.print;

pub fn main() void {
    var x: u32 = undefined;

    const turple = .{ 1, 2, 3 };
    x, var y: u32, const z = turple;

    print("x = {}, y = {}, z = {}\n", .{ x, y, z });

    // `y` is mutable!
    y = 100;

    // We can use `_` to throw away unwanted values.
    _, x, _ = turple;
    print("x = {}\n", .{x});
}
