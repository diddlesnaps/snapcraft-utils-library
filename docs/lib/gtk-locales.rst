.. _gtk-locales:

===========
GTK locales
===========

This utility will add the required changes to allow GTK
applications to use the correct locale settings.

Usage with sc-jsonnet
=====================

Applying the utility with sc-jsonnet is the easiest method.
To use, simply import the library and add `gtk_locales()` to
your `snapcraft` tag. The following code shows a trivial
example of using it:

.. literalinclude:: ../../examples/gtk-locales/snapcraft.jsonnet
    :language: jsonnet

Manually adding to snapcraft.yaml
=================================

Add the following part into your ``snapcraft.yaml``, and change
``my-part`` to a list of all of your snap's other parts:

.. literalinclude:: ../../examples/gtk-locales/snapcraft.yaml
    :language: yaml
    :start-after: ### START part
    :end-before: ### END part
