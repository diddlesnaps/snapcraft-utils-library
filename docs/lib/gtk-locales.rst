.. _cleanup:

===========
GTK locales
===========

This utility will add the required changes to allow GTK
applications to use the correct locale settings.

Usage with sc-jsonnet
=====================

Applying the utility with sc-jsonnet is the easiest method.
To use, simply import the library and add
`gtk_locales.apply()` to your `snapcraft` tag. The following
code shows a trivial example of using it:

.. literalinclude:: ../../examples/gtk-locales/snapcraft.jsonnet
    :language: jsonnet

Manually adding to snapcraft.yaml
=================================

.. literalinclude:: ../../examples/gtk-locales/snapcraft.yaml
    :language: yaml

