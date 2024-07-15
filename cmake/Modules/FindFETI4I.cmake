# CMake script for finding Permon for Elmer

SET(_feti4iIfaceF90 "feti4i_mod.F90")
SET(_feti4iLibName "libfeti4i.so")

# If MKL_LIBRARIES libraries are already defined, do nothing
SET(FETI4I_FOUND FALSE)

IF (NOT FETI4I_ROOT)
  SET(FETI4I_ROOT "$ENV{FETI4I_ROOT}")
ENDIF()

#SET(_feti4iIncludePaths
#  "$ENV{FETI4I_ROOT}/include"
#  "${FETI4I_ROOT}/include"
#  INTERNAL
#)

SET(_feti4iLibPaths
  "$ENV{FETI4I_ROOT}"
  "${FETI4I_ROOT}"
  INTERNAL
)

#TODO different subdir
SET(_feti4iInterfaceSrcPaths
  "$ENV{FETI4I_ROOT}/${_feti4iIfaceF90}"
  "${FETI4I_ROOT}/${_feti4iIfaceF90}"
  INTERNAL
)

# Find Feti4i library
#FIND_LIBRARY(FETI4I_LIBRARIES ${_feti4iLibName}${SHL_EXTENSION} HINTS ${_feti4iLibPaths})
#SET(FETI4I_LIBRARIES ${PROJECT_SOURCE_DIR}/feti4i/feti4i_fortran_test/lib/${_feti4iLibName} CACHE FILE "")
SET(FETI4I_LIBRARIES "${FETI4I_ROOT}/${_feti4iLibName}" CACHE FILE "")

# Find the actual interface file
#FIND_FILE(FETI4I_INTERFACE_SOURCE NAMES ${_feti4iIfaceF90} PATHS ${_feti4iInterfaceSrcPaths})
#SET(FETI4I_INTERFACE_SOURCE ${PROJECT_SOURCE_DIR}/feti4i/${_feti4iIfaceF90} CACHE FILE "")
SET(FETI4I_INTERFACE_SOURCE "${FETI4I_ROOT}/${_feti4iIfaceF90}" CACHE FILE "")

message(STATUS "FETI4I_LIBRARIES=${FETI4I_LIBRARIES}")
message(STATUS "FETI4I_INTERFACE_SOURCE=${FETI4I_INTERFACE_SOURCE}")


IF(FETI4I_LIBRARIES AND FETI4I_INTERFACE_SOURCE)
  SET(FETI4I_FOUND TRUE)
ENDIF()

IF(FETI4I_FOUND)
  IF (NOT FETI4I_FIND_QUIETLY)
    MESSAGE(STATUS "A library with FETI4I API found.")
  ENDIF()
ELSE()
  IF (FETI4I_FIND_REQUIRED)
    MESSAGE(FATAL_ERROR ${FETI4I_FAILMSG})
  ENDIF()
ENDIF()

MARK_AS_ADVANCED(
  FETI4I_LIBRARIES
  FETI4I_INTERFACE_SOURCE
)
