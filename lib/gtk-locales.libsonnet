{
    apply():: {
        local parts = (
            if "parts" in super then std.objectFields(super.parts)
            else []
        ),
        parts+: {
            "gtk-locales": {
                after: parts,
                plugin: "nil",
                "build-packages": [
                    "apt",
                    "dpkg",
                ],
                "override-pull":
"
set -eux
apt download \"language-pack-gnome-*-base\"
",
                "override-build":
"
set -eux
for deb in *.deb; do dpkg-deb -x $deb .; done
find usr/share/locale-langpack -type f -not -name \"gtk30*.mo\" -exec rm '{}' \\;
mkdir -p \"$SNAPCRAFT_PART_INSTALL/usr/share\"
cp -R usr/share/locale-langpack \"$SNAPCRAFT_PART_INSTALL/usr/share/\"
",
            },
        },
    }
}
