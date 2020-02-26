local extensible_hooks = import 'https://raw.githubusercontent.com/diddlesnaps/snapcraft-utils-library/master/lib/extensible-hooks.libsonnet';

function(final_binary) {
    local parts = (
        if "parts" in super then std.objectFields(super.parts)
        else []
    ),
    parts+: {
        "ld-precache": {
            after: parts,
            plugin: "dump",
            source: "https://github.com/diddlesnaps/snapcraft-utils-library.git",
            "source-subdir": "snapcraft-assets/ld-precache",
        },
    },
    environment+: {
        FINAL_BINARY: final_binary,
    },
}
