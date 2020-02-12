local snapcraft = import 'snapcraft.libsonnet';
local wayland_gtk_theming = import 'https://raw.githubusercontent.com/diddlesnaps/snapcraft-utils-library/master/lib/wayland-gtk-theming.libsonnet';

snapcraft {
    name: wayland-gtk-theming-example,
    version: "0.1",
    summary: "Example of using the 'wayland-gtk-theming' library",
    description:
"
This is my-snap's description. You have a paragraph or two to tell the
most important story about your snap. Keep it under 100 words though,
we live in tweetspace and your description wants to look good in the snap
store.
",

    base: core18,

    # Add the rest of your snapcraft build config here
}
+ wayland_gtk_theming.apply()
