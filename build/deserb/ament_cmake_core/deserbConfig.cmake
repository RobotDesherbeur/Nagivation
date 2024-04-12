# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_deserb_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED deserb_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(deserb_FOUND FALSE)
  elseif(NOT deserb_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(deserb_FOUND FALSE)
  endif()
  return()
endif()
set(_deserb_CONFIG_INCLUDED TRUE)

# output package information
if(NOT deserb_FIND_QUIETLY)
  message(STATUS "Found deserb: 0.0.0 (${deserb_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'deserb' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${deserb_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(deserb_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${deserb_DIR}/${_extra}")
endforeach()
