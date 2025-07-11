const std = @import("std");

extern fn c_main() c_int;

pub fn main() void {
    const exit_code = c_main();
    std.process.exit(@intCast(exit_code));
}
