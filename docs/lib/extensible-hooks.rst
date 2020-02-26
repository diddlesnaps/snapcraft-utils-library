.. _extensible_hooks:

================
Extensible Hooks
================

This library will allow you to use many scripts for each
`Snap Hook <https://snapcraft.io/docs/supported-snap-hooks>`_.
When using this library, simply drop your hook script(s) into
``[snap_dir]/hooks.d/[hook_name]/*``, where ``[snap_dir]`` is
the top-level of your snap filesystem, and ``[hook_name]`` is
the name of the hook from the following supported list:

- install
- configure
- pre-refresh
- post-refresh
- remove

Usage with sc-jsonnet
=====================

Applying the utility with sc-jsonnet is the easiest method.
To use, simply import the library and add `extensible_hooks()`
to your `snapcraft` tag. The following code shows a trivial
example of using it:

.. literalinclude:: ../../examples/extensible-hooks/snapcraft.jsonnet
    :language: jsonnet

Manually adding to snapcraft.yaml
=================================

Simply add the following part into your ``snapcraft.yaml``:

.. literalinclude:: ../../examples/extensible-hooks/snapcraft.yaml
    :language: yaml
    :start-after: ### START part
    :end-before: ### END part
