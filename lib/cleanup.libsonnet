function(dependencies) {
    local parts = (
        if "parts" in super then std.objectFields(super.parts)
        else []
    ),
    parts+: {
        cleanup: {
            after: parts,
            plugin: "nil",
            "build-snaps": dependencies,
            "override-prime": |||
                set -eux
                %s
            ||| % std.lines([|||
                cd "/snap/%s/current"
                find . -type f,l -exec rm -f "$SNAPCRAFT_PRIME/{}" \;
            ||| % snap for snap in dependencies]),
        },
    },
}

