# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "E:/Programmieren/Cpp/Tests/CMakeTest/Resources/box2d/build/imgui")
  file(MAKE_DIRECTORY "E:/Programmieren/Cpp/Tests/CMakeTest/Resources/box2d/build/imgui")
endif()
file(MAKE_DIRECTORY
  "E:/Programmieren/Cpp/Tests/CMakeTest/Resources/box2d/build/samples/imgui-build"
  "E:/Programmieren/Cpp/Tests/CMakeTest/Resources/box2d/build/samples/imgui-subbuild/imgui-populate-prefix"
  "E:/Programmieren/Cpp/Tests/CMakeTest/Resources/box2d/build/samples/imgui-subbuild/imgui-populate-prefix/tmp"
  "E:/Programmieren/Cpp/Tests/CMakeTest/Resources/box2d/build/samples/imgui-subbuild/imgui-populate-prefix/src/imgui-populate-stamp"
  "E:/Programmieren/Cpp/Tests/CMakeTest/Resources/box2d/build/samples/imgui-subbuild/imgui-populate-prefix/src"
  "E:/Programmieren/Cpp/Tests/CMakeTest/Resources/box2d/build/samples/imgui-subbuild/imgui-populate-prefix/src/imgui-populate-stamp"
)

set(configSubDirs Debug)
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "E:/Programmieren/Cpp/Tests/CMakeTest/Resources/box2d/build/samples/imgui-subbuild/imgui-populate-prefix/src/imgui-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "E:/Programmieren/Cpp/Tests/CMakeTest/Resources/box2d/build/samples/imgui-subbuild/imgui-populate-prefix/src/imgui-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()