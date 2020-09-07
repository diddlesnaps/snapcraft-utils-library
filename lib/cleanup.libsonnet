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
                for CRUFT in bug lintian man; do
                    rm -rf $SNAPCRAFT_PRIME/usr/share/$CRUFT
                done
                find $SNAPCRAFT_PRIME/usr/share/doc/ -type f -not -name 'copyright' -delete
                find $SNAPCRAFT_PRIME/usr/share -type d -empty -delete
            ||| % std.lines([|||
                cd "/snap/%s/current"
                find . -type f,l -exec rm -f "$SNAPCRAFT_PRIME/{}" "$SNAPCRAFT_PRIME/usr/{}" \;
            ||| % snap for snap in dependencies]),
        },
    },
}

