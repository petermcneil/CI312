#ifndef GLTUTORIALS_PATHS_H
#define GLTUTORIALS_PATHS_H

#include <cstdlib>
#include <iostream>

char * libraries_path(char file[]) {
    //Change this to download location
    char library[] = "/Users/mcneip01/uni/CI312/";
    char * path = new char[std::strlen(library)+std::strlen(file)+1];
    std::strcpy(path,library);
    std::strcat(path,file);
    return path;
}

// Shaders
char * simple_v_shader = libraries_path(const_cast<char *>("libraries/shaders/SimpleVertexShader.glsl"));
char * simple_f_shader = libraries_path(const_cast<char *>("libraries/shaders/SimpleFragmentShader.glsl"));
char * camera_shader = libraries_path(const_cast<char *>("libraries/shaders/CameraVertexShader.glsl"));

// Assets
char * sphere_asset = libraries_path(const_cast<char *>("libraries/assets/sphere.obj"));

#endif //GLTUTORIALS_PATHS_H
