const std = @import("std");

pub fn main() void {
    var x: u32 = undefined;
    var y: u32 = undefined;
    var z: u32 = undefined;

    // Turple
    const turple = .{ 1, 2, 3 };
    x, y, z = turple;
    std.debug.print("turple: x = {}, y = {}, z = {}\n", .{ x, y, z });

    // Array
    const array = [_]u32{ 4, 5, 6 };
    x, y, z = array;
    std.debug.print("array: x = {}, y = {}, z = {}\n", .{ x, y, z });

    // Vector
    const vector: @Vector(3, u32) = .{ 7, 8, 9 };
    x, y, z = vector;
    std.debug.print("vector: x = {}, y = {}, z = {}\n", .{ x, y, z });
}
