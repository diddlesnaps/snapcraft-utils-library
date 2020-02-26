.. _wayland-gtk-theming:

======================
GTK theming on Wayland
======================

This utility will add the required changes to fix GTK
applications' styling when run under Wayland. This utility
requires that your Snap is using the ``gnome-3-28``
extension.

Usage with sc-jsonnet
=====================

Applying the utility with sc-jsonnet is the easiest method. To
use, simply import the library and add `wayland_gtk_theming()`
to your `snapcraft` tag. The following code shows a trivial
example of using it:

.. literalinclude:: ../../examples/wayland-gtk-theming/snapcraft.jsonnet
    :language: jsonnet

Manually adding to snapcraft.yaml
=================================

Add the following parts into your ``snapcraft.yaml``, and change
``my-part`` to a list of all of your snap's other parts:

.. literalinclude:: ../../examples/wayland-gtk-theming/snapcraft.yaml
    :language: yaml
    :start-after: ### START parts
    :end-before: ### END parts

Remember, that this library expects you to be using the ``gnome-3-28``
extension.
