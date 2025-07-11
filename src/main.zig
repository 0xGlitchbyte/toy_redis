const std = @import("std");

extern fn c_main() void;

pub fn main() void {
    c_main();
}
