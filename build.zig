const std = @import("std");

const headers = [_][]const u8{};

pub fn build(b: *std.Build) void {
    const install_step = b.addInstallDirectory(.{
        .install_dir = .header,
        .install_subdir = "glm",
        .source_dir = .{ .path = "glm" },
    });
    b.getInstallStep().dependOn(&install_step.step);
}
