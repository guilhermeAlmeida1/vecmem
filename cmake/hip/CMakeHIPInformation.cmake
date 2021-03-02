# VecMem project, part of the ACTS project (R&D line)
#
# (c) 2021 CERN for the benefit of the ACTS project
#
# Mozilla Public License Version 2.0

# Set up how HIP object file compilation should go.
set( CMAKE_HIP_COMPILE_OBJECT
   "HIP_PLATFORM=${CMAKE_HIP_PLATFORM} <CMAKE_HIP_COMPILER> ${CMAKE_HIP_COMPILE_OPTIONS_PIC} <DEFINES> <INCLUDES> <FLAGS> ${CMAKE_HIP_COMPILE_SOURCE_TYPE_FLAG} -o <OBJECT> -c <SOURCE>" )

# Set up how shared library building should go.
set( CMAKE_SHARED_LIBRARY_SONAME_HIP_FLAG
   "${CMAKE_SHARED_LIBRARY_SONAME_CXX_FLAG}" )
set( CMAKE_HIP_CREATE_SHARED_LIBRARY
   "${CMAKE_HIP_HOST_LINKER} <CMAKE_SHARED_LIBRARY_CXX_FLAGS> <LINK_FLAGS> <CMAKE_SHARED_LIBRARY_CREATE_CXX_FLAGS> <SONAME_FLAG><TARGET_SONAME> -o <TARGET> <OBJECTS> <LINK_LIBRARIES> ${CMAKE_HIP_IMPLICIT_LINK_LIBRARIES}" )

# Set up how module library building should go.
set( CMAKE_HIP_CREATE_SHARED_MODULE
   "${CMAKE_HIP_HOST_LINKER} <CMAKE_SHARED_LIBRARY_CXX_FLAGS> <LINK_FLAGS> <CMAKE_SHARED_LIBRARY_CREATE_CXX_FLAGS> -o <TARGET> <OBJECTS> <LINK_LIBRARIES> ${CMAKE_HIP_IMPLICIT_LINK_LIBRARIES}" )

# Set up how executable building shoul go.
set( CMAKE_HIP_LINK_EXECUTABLE
   "${CMAKE_HIP_HOST_LINKER} <CMAKE_CXX_LINK_FLAGS> <LINK_FLAGS> <OBJECTS> -o <TARGET> <LINK_LIBRARIES> ${CMAKE_HIP_IMPLICIT_LINK_LIBRARIES}" )

# Tell CMake that the information was loaded.
set( CMAKE_HIP_INFORMATION_LOADED TRUE )
