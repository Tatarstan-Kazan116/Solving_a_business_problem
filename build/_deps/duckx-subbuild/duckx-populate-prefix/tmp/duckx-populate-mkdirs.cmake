# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION ${CMAKE_VERSION}) # this file comes with cmake

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "C:/Users/Зульфия/source/repos/Goznak/Solving_a_business_problem/build/_deps/duckx-src")
  file(MAKE_DIRECTORY "C:/Users/Зульфия/source/repos/Goznak/Solving_a_business_problem/build/_deps/duckx-src")
endif()
file(MAKE_DIRECTORY
  "C:/Users/Зульфия/source/repos/Goznak/Solving_a_business_problem/build/_deps/duckx-build"
  "C:/Users/Зульфия/source/repos/Goznak/Solving_a_business_problem/build/_deps/duckx-subbuild/duckx-populate-prefix"
  "C:/Users/Зульфия/source/repos/Goznak/Solving_a_business_problem/build/_deps/duckx-subbuild/duckx-populate-prefix/tmp"
  "C:/Users/Зульфия/source/repos/Goznak/Solving_a_business_problem/build/_deps/duckx-subbuild/duckx-populate-prefix/src/duckx-populate-stamp"
  "C:/Users/Зульфия/source/repos/Goznak/Solving_a_business_problem/build/_deps/duckx-subbuild/duckx-populate-prefix/src"
  "C:/Users/Зульфия/source/repos/Goznak/Solving_a_business_problem/build/_deps/duckx-subbuild/duckx-populate-prefix/src/duckx-populate-stamp"
)

set(configSubDirs Debug)
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "C:/Users/Зульфия/source/repos/Goznak/Solving_a_business_problem/build/_deps/duckx-subbuild/duckx-populate-prefix/src/duckx-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "C:/Users/Зульфия/source/repos/Goznak/Solving_a_business_problem/build/_deps/duckx-subbuild/duckx-populate-prefix/src/duckx-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
