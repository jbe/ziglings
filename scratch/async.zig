const std = @import("std");
const print = std.debug.print;

pub fn main() void {
    var frame = async do_stuff();
    resume frame;
    var result = await frame;
    print("Result: {}", .{result});
}

fn do_stuff() void {
    std.debug.print("Hmm", .{});
    suspend {}
}

fn foo(countdown: u32) u32 {
    var current = countdown;

    while (current > 0) {
        print("{} ", .{current});
        current -= 1;
        // suspend {}
    }

    return 123;
}
