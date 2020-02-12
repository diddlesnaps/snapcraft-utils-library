{
    apply(dependencies):: {
        local parts = (
            if "parts" in super then std.objectFields(super.parts)
            else []
        ),
        parts+: {
            cleanup: {
                after: parts,
                plugin: "nil",
                "build-snaps": dependencies,
                "override-prime": "set -eux\n" + std.join('', [
                    "cd '/snap/" + snap + "/current' && find . -type f,l -exec rm -f \"$SNAPCRAFT_PRIME/{}\" \\;"
                    for snap in dependencies
                ]),
            },
        },
    }
}
