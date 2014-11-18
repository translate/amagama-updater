===================
Configuration files
===================

These are just bash files.  Each one defines a project.

The conventions is to name them ``${project}.sh``.  They must end in ``.sh``,
but the project name can be anything.

code-block:: bash

   project=dummy
   repo=vcs_system+vcs_url
   layout=gnu


Configuration options
=====================

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

Not implemented yet ideas
=========================

include and exclude
-------------------
Include and exclude specific languages from the import.::

    include=af zu
    exclude=es fr

language_mapping
----------------
In cases where amagama and upstream codes do not match then we need to remap them.::

    language_mapping=<from>:<to>
    language_mapping=<checkout>:<amagama>

    language_mapping=fr-FR:fr hy-AM:hy hi-IN:hi

translation_dirs
---------------
The directories that contain the translations we want to use. By default we
assume the checkout dir.::

    translation_dirs=path/to/translations
    translation_dirs=path/to/translations another-path/to/translations

    translation_dirs=po
    translation_dirs=code/po website


Others
------
* Special handling of imports
* Processes e.g. moz2po to execute before import
* Cleanups
* Prep scripts, we have some wget like snippets that are run to find the actual upstream Git repos
