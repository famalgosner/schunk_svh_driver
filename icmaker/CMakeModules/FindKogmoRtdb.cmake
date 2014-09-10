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

# - Try to find KogmoRtdb
# Once done, this will define
#
#  KogmoRtdb_FOUND - system has KogmoRtdb
#  KogmoRtdb_INCLUDE_DIRS - the KogmoRtdb include directories
#  KogmoRtdb_LIBRARIES - link these to use KogmoRtdb

IF( KogmoRtdb_FOUND )
   # in cache already
   SET( KogmoRtdb_FIND_QUIETLY TRUE )
ENDIF()

include(PrintLibraryStatus)
include(LibFindMacros)

# Use pkg-config to get hints about paths
libfind_pkg_check_modules(KogmoRtdb_PKGCONF libkogmo_rtdb)

# Include dir
find_path(KogmoRtdb_INCLUDE_DIR
  NAMES kogmo_rtdb.hxx
  PATHS ${KogmoRtdb_PKGCONF_INCLUDE_DIRS} "/usr/include/kogmo_rtdb"
)

find_path(KogmoObjects_INCLUDE_DIR
  NAMES kogmo_rtdb_obj_defs.h
  PATHS ${KogmoRtdb_PKGCONF_INCLUDE_DIRS} "/usr/include/kogmo_objects"
)

# Finally the library itself
find_library(KogmoRtdb_LIBRARY
  NAMES kogmo_rtdb
  PATHS ${KogmoRtdb_PKGCONF_LIBRARY_DIRS}
)

# Set the include dir variables and the libraries and let libfind_process do the rest.
# NOTE: Singular variables for this library, plural for libraries this this lib depends on.
set(KogmoRtdb_PROCESS_INCLUDES KogmoRtdb_INCLUDE_DIR KogmoObjects_INCLUDE_DIR)
set(KogmoRtdb_PROCESS_LIBS KogmoRtdb_LIBRARY)
libfind_process(KogmoRtdb)

PRINT_LIBRARY_STATUS(KogmoRtdb
  DETAILS "[${KogmoRtdb_LIBRARIES}][${KogmoRtdb_INCLUDE_DIRS}]"
)

