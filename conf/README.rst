Configuration files
===================

These are just bash files.  Each one defines a project.

The conventions is to name them ``${project}.sh``.  They must end in ``.sh``,
but the project name can be anything.

code-block:: bash

   project=dummy
   repo=vcs_system+vcs_url
   layout=gnu

project
-------
The name of the project.  This will be used to store the data and refer to the
project.  Data is stored in ``data/$project``

repo
----
The repo type and URL are stored here.  The scripts will know how to checkout
the data based on the vcs_system and where to find the data based on vcs_url.

Thus::

  repo=git+git://someurl.com/translations

Will make use of Git to checkout the data from ``git://someurl.com/translations``

layout
------
One of ``gnu`` or ``nongnu``.  The tells the system where the layout is as follows::

  gnu/af.po
      br.po
      ....
      zu.po

  nongnu/af/some.po
         br/some.po
         .....
         zu/some.po
