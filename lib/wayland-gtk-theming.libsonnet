function() {
    local parts = (
        if "parts" in super then std.objectFields(super.parts)
        else []
    ),
    parts+: {
        # Ship a default set of GSettings schemas so that the correct theme is used
        # in Wayland sessions on Ubuntu (see https://forum.snapcraft.io/t/7806/3).
        "desktop-settings-packages": {
            after: [ "gnome-3-28-extension" ],
            plugin: "nil",
            "build-packages": [
                "libglib2.0-bin",
            ],
            "stage-packages": [
                "gsettings-desktop-schemas",
                "ubuntu-settings",
            ],
            prime: [
                "usr/share/glib-2.0/schemas/*",
            ],
        },

        "desktop-settings-build": {
            plugin: "nil",
            after: std.setUnion(parts, ["desktop-settings-packages"]),
            "override-prime": |||
                set -eux
                glib-compile-schemas usr/share/glib-2.0/schemas
            |||,
        },
    },
}
