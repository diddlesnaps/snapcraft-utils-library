.. _linker_cache:

====================
Dynamic Linker Cache
====================

This utility will cache your shared libraries into an
``ld.so.cache`` file. Caching the shared libraries in this
way should help to speed up your application start times.

This library is meant to be used in combination with the
:ref:`Extensible Hooks <extensible_hooks>`.

Usage with sc-jsonnet
=====================

Applying the utility with sc-jsonnet is the easiest method.
To use, simply import the library and add `linker-cache()`
to your `snapcraft` tag. The following code shows a trivial
example of using it:

.. literalinclude:: ../../examples/linker-cache/snapcraft.jsonnet
    :language: jsonnet

If you are using multiple utilities then put the cleanup utility
last in the chain. This library expects you to apply
:ref:`Extensible Hooks <extensible_hooks>`, too.

Manually adding to snapcraft.yaml
=================================

Add the following part into your ``snapcraft.yaml``, and change
``my-part`` to a list of all of your snap's other parts:

.. literalinclude:: ../../examples/linker-cache/snapcraft.yaml
    :language: yaml
    :start-after: ### START part
    :end-before: ### END part

Ensure you set the environment block's ``FINAL_BINARY`` to the
path of your application executable file. This **must** be
prefixed with ``$SNAP/``:

.. literalinclude:: ../../examples/linker-cache/snapcraft.yaml
    :language: yaml
    :start-after: ### START environ
    :end-before: ### END environ

This library expects you to have added
the :ref:`Extensible Hooks <extensible_hooks>` customisations, too.
