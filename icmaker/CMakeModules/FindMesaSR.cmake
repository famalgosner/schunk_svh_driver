# this is for emacs file handling -*- mode: cmake; indent-tabs-mode: nil -*-

# -- BEGIN LICENSE BLOCK ----------------------------------------------
# This file is part of the SCHUNK SVH Driver suite.
#
# This program is free software licensed under the LGPL
# (GNU LESSER GENERAL PUBLIC LICENSE Version 3).
# You can find a copy of this license in LICENSE.txt in the top
# directory of the source code.
#
# © Copyright 2014 SCHUNK Mobile Greifsysteme GmbH, Lauffen/Neckar Germany
# © Copyright 2014 FZI Forschungszentrum Informatik, Karlsruhe, Germany
#
# -- END LICENSE BLOCK ------------------------------------------------

#----------------------------------------------------------------------
# \file
#
# \author  Jan Oberlaender <oberlaender@fzi.de>
# \date    2014-08-13
#
# Try to find MesaSR.  Once done, this will define:
#  MesaSR_FOUND:          System has MesaSR
#  MesaSR_INCLUDE_DIRS:   The '-I' preprocessor flags (w/o the '-I')
#  MesaSR_LIBRARY_DIRS:   The paths of the libraries (w/o the '-L')
# Variables defined if pkg-config was employed:
#  MesaSR_DEFINITIONS:    Preprocessor definitions.
#  MesaSR_LIBRARIES:      only the libraries (w/o the '-l')
#  MesaSR_LDFLAGS:        all required linker flags
#  MesaSR_LDFLAGS_OTHER:  all other linker flags
#  MesaSR_CFLAGS:         all required cflags
#  MesaSR_CFLAGS_OTHER:   the other compiler flags
#  MesaSR_VERSION:        version of the module
#  MesaSR_PREFIX:         prefix-directory of the module
#  MesaSR_INCLUDEDIR:     include-dir of the module
#  MesaSR_LIBDIR:         lib-dir of the module
#----------------------------------------------------------------------

include(PrintLibraryStatus)
include(LibFindMacros)

libfind_lib_with_pkg_config(MesaSR libMesaSR
  HEADERS libMesaSR.h
  LIBRARIES mesasr
  DEFINE _IC_BUILDER_SWISSRANGER_
  )
