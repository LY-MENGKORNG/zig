const std = @import("std");

// "!void" means the function returns nothing and might throw an error
pub fn main() !void {
    try std.debug.print("hi {s}", .{"mom"});
}
