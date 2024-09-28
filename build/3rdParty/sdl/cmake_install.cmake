# Install script for directory: /Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Library/Developer/CommandLineTools/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/ramanlamba/Desktop/CHIP8/Build/3rdParty/SDL/libSDL2-2.0.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2-2.0.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2-2.0.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2-2.0.dylib")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/ramanlamba/Desktop/CHIP8/Build/3rdParty/SDL/libSDL2main.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2main.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2main.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2main.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2Targets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2Targets.cmake"
         "/Users/ramanlamba/Desktop/CHIP8/Build/3rdParty/SDL/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2Targets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2Targets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2Targets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/Users/ramanlamba/Desktop/CHIP8/Build/3rdParty/SDL/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2Targets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/Users/ramanlamba/Desktop/CHIP8/Build/3rdParty/SDL/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2Targets-noconfig.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2mainTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2mainTargets.cmake"
         "/Users/ramanlamba/Desktop/CHIP8/Build/3rdParty/SDL/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2mainTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2mainTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2mainTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/Users/ramanlamba/Desktop/CHIP8/Build/3rdParty/SDL/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2mainTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/Users/ramanlamba/Desktop/CHIP8/Build/3rdParty/SDL/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2mainTargets-noconfig.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/SDL2Config.cmake"
    "/Users/ramanlamba/Desktop/CHIP8/Build/SDL2ConfigVersion.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SDL2" TYPE FILE FILES
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_assert.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_atomic.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_audio.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_bits.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_blendmode.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_clipboard.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_config_android.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_config_emscripten.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_config_iphoneos.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_config_macosx.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_config_minimal.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_config_os2.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_config_pandora.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_config_psp.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_config_windows.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_config_winrt.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_config_wiz.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_copying.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_cpuinfo.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_egl.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_endian.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_error.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_events.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_filesystem.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_gamecontroller.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_gesture.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_haptic.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_hidapi.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_hints.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_joystick.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_keyboard.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_keycode.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_loadso.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_locale.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_log.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_main.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_messagebox.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_metal.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_misc.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_mouse.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_mutex.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_name.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_opengl.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_opengl_glext.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_opengles.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_opengles2.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_opengles2_gl2.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_opengles2_gl2ext.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_opengles2_gl2platform.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_opengles2_khrplatform.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_pixels.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_platform.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_power.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_quit.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_rect.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_render.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_rwops.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_scancode.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_sensor.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_shape.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_stdinc.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_surface.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_system.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_syswm.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_test.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_test_assert.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_test_common.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_test_compare.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_test_crc32.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_test_font.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_test_fuzzer.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_test_harness.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_test_images.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_test_log.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_test_md5.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_test_memory.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_test_random.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_thread.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_timer.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_touch.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_types.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_version.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_video.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/SDL_vulkan.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/begin_code.h"
    "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/include/close_code.h"
    "/Users/ramanlamba/Desktop/CHIP8/Build/3rdParty/SDL/include/SDL_config.h"
    "/Users/ramanlamba/Desktop/CHIP8/Build/3rdParty/SDL/include/SDL_revision.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  
          execute_process(COMMAND /Users/ramanlamba/micromamba/lib/python3.9/site-packages/cmake/data/bin/cmake -E create_symlink
            "libSDL2-2.0.dylib" "libSDL2.dylib"
            WORKING_DIRECTORY "/Users/ramanlamba/Desktop/CHIP8/Build/3rdParty/SDL")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE FILES "/Users/ramanlamba/Desktop/CHIP8/Build/3rdParty/SDL/libSDL2.dylib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/Users/ramanlamba/Desktop/CHIP8/Build/3rdParty/SDL/sdl2.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE PROGRAM FILES "/Users/ramanlamba/Desktop/CHIP8/Build/3rdParty/SDL/sdl2-config")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/aclocal" TYPE FILE FILES "/Users/ramanlamba/Desktop/CHIP8/3rdParty/SDL/sdl2.m4")
endif()

