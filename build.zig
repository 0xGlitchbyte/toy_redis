const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const exe = b.addExecutable(.{
        .name = "redis-server",
        .root_source_file = null, //b.path("src/main.cpp"),
        .target = target,
        .optimize = optimize,
    });

    exe.addCSourceFiles(.{
        .files = &[_][]const u8{"src/main.cpp"},
        .flags = &.{ "-std=c++17", "-Wall", "-Wextra" },
    });

    exe.linkLibC();
    exe.linkLibCpp();

    b.installArtifact(exe);
}
