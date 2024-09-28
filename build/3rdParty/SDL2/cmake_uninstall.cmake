if (NOT EXISTS "/Users/ramanlamba/Desktop/CHIP8/Build/install_manifest.txt")
    message(FATAL_ERROR "Cannot find install manifest: \"/Users/ramanlamba/Desktop/CHIP8/Build/install_manifest.txt\"")
endif()

file(READ "/Users/ramanlamba/Desktop/CHIP8/Build/install_manifest.txt" files)
string(REGEX REPLACE "\n" ";" files "${files}")
foreach(file ${files})
    message(STATUS "Uninstalling \"$ENV{DESTDIR}${file}\"")
    execute_process(
        COMMAND /Users/ramanlamba/micromamba/lib/python3.9/site-packages/cmake/data/bin/cmake -E remove "$ENV{DESTDIR}${file}"
        OUTPUT_VARIABLE rm_out
        RESULT_VARIABLE rm_retval
    )
    if(NOT ${rm_retval} EQUAL 0)
        message(FATAL_ERROR "Problem when removing \"$ENV{DESTDIR}${file}\"")
    endif (NOT ${rm_retval} EQUAL 0)
endforeach()
