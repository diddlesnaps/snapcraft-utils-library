.. _cleanup:

==================
Post-build Cleanup
==================

This utility will clean up any files that have been included
in your Snap during build which also exist in the base Snap
or any content-Snaps that you are using.

Usage with sc-jsonnet
=====================

Applying the utility with sc-jsonnet is the easiest method.
To use, simply import the library and add `cleanup([])`
to your `snapcraft` tag. Pass-into the function all your
content-Snaps and base Snap in between the square brackets
separated by commas. The following code shows a trivial
example of using it:

.. literalinclude:: ../../examples/cleanup/snapcraft.jsonnet
    :language: jsonnet

If you are using multiple utilities then put the cleanup utility
last in the chain.

Manually adding to snapcraft.yaml
=================================

.. literalinclude:: ../../examples/cleanup/snapcraft.yaml
    :language: yaml

Adjust the `after` definition to ensure that the cleanup
part runs after every other part defined in your yaml.
