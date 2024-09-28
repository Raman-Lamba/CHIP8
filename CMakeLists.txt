cmake_minimum_required(VERSION 3.14)
project(chip8)

set(CMAKE_CXX_STANDARD 11)

# Add glad manually
add_library(glad STATIC
    3rdParty/glad/src/glad.c
)

# Specify include directories for glad
target_include_directories(glad PUBLIC
    3rdParty/glad/include
)

# Find SDL2 package installed on your system
find_package(SDL2 REQUIRED)

# Add ImGui manually
add_library(imgui STATIC
    3rdParty/imgui-1.88/imgui.cpp
    3rdParty/imgui-1.88/imgui_draw.cpp
    3rdParty/imgui-1.88/imgui_tables.cpp
    3rdParty/imgui-1.88/imgui_widgets.cpp
    3rdParty/imgui-1.88/imgui_demo.cpp  # Include this only if you want the demo window
)

# Specify include directories for ImGui
target_include_directories(imgui PUBLIC
    3rdParty/imgui-1.88
)

# Define the executable
add_executable(
    chip8
    Source/Chip8.cpp
    Source/Main.cpp
    Source/Platform.cpp
)

# Enable warnings
target_compile_options(chip8 PRIVATE -Wall)

# Link libraries: imgui, SDL2, and glad
target_link_libraries(chip8 PRIVATE imgui SDL2::SDL2 glad)

# Include SDL2 and other directories if necessary
target_include_directories(chip8 PRIVATE ${SDL2_INCLUDE_DIRS})
