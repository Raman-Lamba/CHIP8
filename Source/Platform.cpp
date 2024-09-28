#include "Platform.hpp"
#include <glad/glad.h>
#include <SDL.h>
// #include <GL/glu.h>
#include <iostream>

const char *getOpenGLErrorMessage(GLenum error)
{
    switch (error)
    {
    case GL_NO_ERROR:
        return "No error";
    case GL_INVALID_ENUM:
        return "Invalid enum";
    case GL_INVALID_VALUE:
        return "Invalid value";
    case GL_INVALID_OPERATION:
        return "Invalid operation";
    case GL_INVALID_FRAMEBUFFER_OPERATION:
        return "Invalid framebuffer operation";
    case GL_OUT_OF_MEMORY:
        return "Out of memory";
    case GL_STACK_UNDERFLOW:
        return "Stack underflow";
    case GL_STACK_OVERFLOW:
        return "Stack overflow";
    default:
        return "Unknown error";
    }
}

Platform::Platform(char const *title, int windowWidth, int windowHeight, int textureWidth, int textureHeight)
{
    // Initialize SDL
    if (SDL_Init(SDL_INIT_VIDEO) < 0)
    {
        std::cerr << "SDL_Init failed: " << SDL_GetError() << std::endl;
        exit(1);
    }

    // Set OpenGL attributes
    SDL_GL_SetAttribute(SDL_GL_CONTEXT_PROFILE_MASK, SDL_GL_CONTEXT_PROFILE_CORE);
    SDL_GL_SetAttribute(SDL_GL_CONTEXT_MAJOR_VERSION, 3);
    SDL_GL_SetAttribute(SDL_GL_CONTEXT_MINOR_VERSION, 3);

    // Create window
    window = SDL_CreateWindow(
        title,
        SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED,
        windowWidth, windowHeight,
        SDL_WINDOW_OPENGL | SDL_WINDOW_RESIZABLE);

    if (!window)
    {
        std::cerr << "SDL_CreateWindow failed: " << SDL_GetError() << std::endl;
        SDL_Quit();
        exit(1);
    }

    // Create OpenGL context
    gl_context = SDL_GL_CreateContext(window);
    if (!gl_context)
    {
        std::cerr << "SDL_GL_CreateContext failed: " << SDL_GetError() << std::endl;
        SDL_DestroyWindow(window);
        SDL_Quit();
        exit(1);
    }

    // Load GLAD
    if (!gladLoadGLLoader((GLADloadproc)SDL_GL_GetProcAddress))
    {
        std::cerr << "Failed to initialize GLAD" << std::endl;
        SDL_DestroyWindow(window);
        SDL_Quit();
        exit(1);
    }

    // Set swap interval
    if (SDL_GL_SetSwapInterval(1) < 0)
    {
        std::cerr << "SDL_GL_SetSwapInterval failed: " << SDL_GetError() << std::endl;
    }

    // Create renderer
    renderer = SDL_CreateRenderer(window, -1, SDL_RENDERER_ACCELERATED);
    if (!renderer)
    {
        std::cerr << "SDL_CreateRenderer failed: " << SDL_GetError() << std::endl;
        SDL_DestroyWindow(window);
        SDL_Quit();
        exit(1);
    }

    // Create texture
    texture = SDL_CreateTexture(renderer, SDL_PIXELFORMAT_RGBA8888, SDL_TEXTUREACCESS_STREAMING, textureWidth, textureHeight);
    if (!texture)
    {
        std::cerr << "SDL_CreateTexture failed: " << SDL_GetError() << std::endl;
        SDL_DestroyRenderer(renderer);
        SDL_DestroyWindow(window);
        SDL_Quit();
        exit(1);
    }

    // Generate framebuffer texture
    glGenTextures(1, &framebuffer_texture);
    if (glGetError() != GL_NO_ERROR)
    {
        std::cerr << "glGenTextures failed: " << getOpenGLErrorMessage(glGetError()) << std::endl;
    }

    glBindTexture(GL_TEXTURE_2D, framebuffer_texture);
    if (glGetError() != GL_NO_ERROR)
    {
        std::cerr << "glBindTexture failed: " << getOpenGLErrorMessage(glGetError()) << std::endl;
    }

    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);

    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 640, 320, 0, GL_RGBA, GL_UNSIGNED_BYTE, NULL);
    if (glGetError() != GL_NO_ERROR)
    {
        std::cerr << "glTexImage2D failed: " << getOpenGLErrorMessage(glGetError()) << std::endl;
    }

    glBindTexture(GL_TEXTURE_2D, 0);
}

Platform::~Platform()
{
    SDL_DestroyTexture(texture);
    SDL_DestroyRenderer(renderer);
    SDL_DestroyWindow(window);
    SDL_Quit();
}

void Platform::Update(void const *buffer, int pitch)
{
    // Update texture
    if (SDL_UpdateTexture(texture, nullptr, buffer, pitch) < 0)
    {
        std::cerr << "SDL_UpdateTexture failed: " << SDL_GetError() << std::endl;
    }

    // Clear renderer
    if (SDL_RenderClear(renderer) < 0)
    {
        std::cerr << "SDL_RenderClear failed: " << SDL_GetError() << std::endl;
    }

    // Copy texture to renderer
    if (SDL_RenderCopy(renderer, texture, nullptr, nullptr) < 0)
    {
        std::cerr << "SDL_RenderCopy failed: " << SDL_GetError() << std::endl;
    }
    SDL_RenderPresent(renderer);
}

bool Platform::ProcessInput(uint8_t *keys)
{
    bool quit = false;

    SDL_Event event;

    while (SDL_PollEvent(&event))
    {
        switch (event.type)
        {
        case SDL_QUIT:
        {
            quit = true;
        }
        break;

        case SDL_KEYDOWN:
        {
            switch (event.key.keysym.sym)
            {
            case SDLK_ESCAPE:
            {
                quit = true;
            }
            break;

            case SDLK_x:
            {
                keys[0] = 1;
            }
            break;

            case SDLK_1:
            {
                keys[1] = 1;
            }
            break;

            case SDLK_2:
            {
                keys[2] = 1;
            }
            break;

            case SDLK_3:
            {
                keys[3] = 1;
            }
            break;

            case SDLK_q:
            {
                keys[4] = 1;
            }
            break;

            case SDLK_w:
            {
                keys[5] = 1;
            }
            break;

            case SDLK_e:
            {
                keys[6] = 1;
            }
            break;

            case SDLK_a:
            {
                keys[7] = 1;
            }
            break;

            case SDLK_s:
            {
                keys[8] = 1;
            }
            break;

            case SDLK_d:
            {
                keys[9] = 1;
            }
            break;

            case SDLK_z:
            {
                keys[0xA] = 1;
            }
            break;

            case SDLK_c:
            {
                keys[0xB] = 1;
            }
            break;

            case SDLK_4:
            {
                keys[0xC] = 1;
            }
            break;

            case SDLK_r:
            {
                keys[0xD] = 1;
            }
            break;

            case SDLK_f:
            {
                keys[0xE] = 1;
            }
            break;

            case SDLK_v:
            {
                keys[0xF] = 1;
            }
            break;
            }
        }
        break;

        case SDL_KEYUP:
        {
            switch (event.key.keysym.sym)
            {
            case SDLK_x:
            {
                keys[0] = 0;
            }
            break;

            case SDLK_1:
            {
                keys[1] = 0;
            }
            break;

            case SDLK_2:
            {
                keys[2] = 0;
            }
            break;

            case SDLK_3:
            {
                keys[3] = 0;
            }
            break;

            case SDLK_q:
            {
                keys[4] = 0;
            }
            break;

            case SDLK_w:
            {
                keys[5] = 0;
            }
            break;

            case SDLK_e:
            {
                keys[6] = 0;
            }
            break;

            case SDLK_a:
            {
                keys[7] = 0;
            }
            break;

            case SDLK_s:
            {
                keys[8] = 0;
            }
            break;

            case SDLK_d:
            {
                keys[9] = 0;
            }
            break;

            case SDLK_z:
            {
                keys[0xA] = 0;
            }
            break;

            case SDLK_c:
            {
                keys[0xB] = 0;
            }
            break;

            case SDLK_4:
            {
                keys[0xC] = 0;
            }
            break;

            case SDLK_r:
            {
                keys[0xD] = 0;
            }
            break;

            case SDLK_f:
            {
                keys[0xE] = 0;
            }
            break;

            case SDLK_v:
            {
                keys[0xF] = 0;
            }
            break;
            }
        }
        break;
        }
    }

    return quit;
}
