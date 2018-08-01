
#include <string>
#include <iostream>
#include <stdio.h>

// OpenGL / glew Headers
#define GL3_PROTOTYPES 1
#include "../ThirdParty/GLEW/include/glew.h"

// SDL2 Header
#include "../ThirdParty/SDL/include/SDL.h"

#include "../ThirdParty/rapidjson/document.h"
#include "../ThirdParty/rapidjson/filereadstream.h"

// Our SDL_Window ( just like with SDL2 wihout OpenGL)
SDL_Window *mainWindow;

// Our opengl context handle
SDL_GLContext mainContext;

bool SetOpenGLAttributes();
void PrintSDL_GL_Attributes();
void CheckSDLError(int line);
void RunGame();
void Cleanup();

bool Init(const char *wndName)
{
    // Initialize SDL's Video subsystem
    if (SDL_Init(SDL_INIT_VIDEO) < 0)
    {
        std::cout << "Failed to init SDL\n";
        return false;
    }

    SDL_Log("Blablah\n");

    freopen_s(NULL, "CON", "w", stdout); // redirects stdout
    freopen_s(NULL, "CON", "w", stderr); // redirects stderr

    // Create our window centered at 512x512 resolution
    mainWindow = SDL_CreateWindow(wndName, SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED,
                                  512, 512, SDL_WINDOW_OPENGL);

    // Check that everything worked out okay
    if (!mainWindow)
    {
        std::cout << "Unable to create window\n";
        CheckSDLError(__LINE__);
        return false;
    }

    // Create our opengl context and attach it to our window
    mainContext = SDL_GL_CreateContext(mainWindow);

    SetOpenGLAttributes();

    // This makes our buffer swap syncronized with the monitor's vertical refresh
    SDL_GL_SetSwapInterval(1);

    // Init GLEW
    // Apparently, this is needed for Apple. Thanks to Ross Vander for letting me know
#ifdef __APPLE__
    glewExperimental = GL_TRUE;
    glewInit();
#endif

    return true;
}

bool SetOpenGLAttributes()
{
    // Set our OpenGL version.
    // SDL_GL_CONTEXT_CORE gives us only the newer version, deprecated functions are disabled
    SDL_GL_SetAttribute(SDL_GL_CONTEXT_PROFILE_MASK, SDL_GL_CONTEXT_PROFILE_CORE);

    // 3.2 is part of the modern versions of OpenGL, but most video cards whould be able to run it
    SDL_GL_SetAttribute(SDL_GL_CONTEXT_MAJOR_VERSION, 3);
    SDL_GL_SetAttribute(SDL_GL_CONTEXT_MINOR_VERSION, 2);

    // Turn on double buffering with a 24bit Z buffer.
    // You may need to change this to 16 or 32 for your system
    SDL_GL_SetAttribute(SDL_GL_DOUBLEBUFFER, 1);

    return true;
}

int main(int argc, char *argv[])
{
    FILE* pFile = fopen("C:\\Users\\and_s\\Desktop\\test.json", "rb");
    char buffer[65536];
    rapidjson::FileReadStream is(pFile, buffer, sizeof(buffer));
    rapidjson::Document document;
    document.ParseStream<0, rapidjson::UTF8<>, rapidjson::FileReadStream>(is);

    printf("Json: %s\n", document["id"].GetString());

    std::cout << "Started OpenGL" << std::endl;

    if (!Init(document["id"].GetString()))
        return -1;



    // Clear our buffer with a black background
    // This is the same as :
    // 		SDL_SetRenderDrawColor(&renderer, 255, 0, 0, 255);
    // 		SDL_RenderClear(&renderer);
    //
    glClearColor(0.7, 0.0, 0.0, 1.0);
    glClear(GL_COLOR_BUFFER_BIT);
    SDL_GL_SwapWindow(mainWindow);

    RunGame();

    Cleanup();

    return 0;
}

void RunGame()
{
    bool loop = true;

    while (loop)
    {
        SDL_Event event;
        while (SDL_PollEvent(&event))
        {
            if (event.type == SDL_QUIT)
                loop = false;

            if (event.type == SDL_KEYDOWN)
            {
                switch (event.key.keysym.sym)
                {
                    case SDLK_ESCAPE:
                        loop = false;
                        break;
                    case SDLK_r:
                        // Cover with red and update
                        glClearColor(1.0, 0.0, 0.0, 1.0);
                        glClear(GL_COLOR_BUFFER_BIT);
                        SDL_GL_SwapWindow(mainWindow);
                        break;
                    case SDLK_g:
                        // Cover with green and update
                        glClearColor(0.0, 1.0, 0.0, 1.0);
                        glClear(GL_COLOR_BUFFER_BIT);
                        SDL_GL_SwapWindow(mainWindow);
                        break;
                    case SDLK_b:
                        // Cover with blue and update
                        glClearColor(0.0, 0.0, 1.0, 1.0);
                        glClear(GL_COLOR_BUFFER_BIT);
                        SDL_GL_SwapWindow(mainWindow);
                        break;
                    default:
                        break;
                }
            }
        }

        // Swap our back buffer to the front
        // This is the same as :
        // 		SDL_RenderPresent(&renderer);
    }
}

void Cleanup()
{
    // Delete our OpengL context
    SDL_GL_DeleteContext(mainContext);

    // Destroy our window
    SDL_DestroyWindow(mainWindow);

    // Shutdown SDL 2
    SDL_Quit();
}

void CheckSDLError(int line = -1)
{
    std::string error = SDL_GetError();

    if (error != "")
    {
        std::cout << "SLD Error : " << error << std::endl;

        if (line != -1)
            std::cout << "\nLine : " << line << std::endl;

        SDL_ClearError();
    }
}

void PrintSDL_GL_Attributes()
{
    int value = 0;
    SDL_GL_GetAttribute(SDL_GL_CONTEXT_MAJOR_VERSION, &value);
    std::cout << "SDL_GL_CONTEXT_MAJOR_VERSION : " << value << std::endl;

    SDL_GL_GetAttribute(SDL_GL_CONTEXT_MINOR_VERSION, &value);
    std::cout << "SDL_GL_CONTEXT_MINOR_VERSION: " << value << std::endl;
}