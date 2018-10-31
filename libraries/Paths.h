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
extern char * simple_v_shader = libraries_path(const_cast<char *>("libraries/shaders/SimpleVertexShader.glsl"));
extern char * simple_f_shader = libraries_path(const_cast<char *>("libraries/shaders/SimpleFragmentShader.glsl"));
extern char * light_v_shader = libraries_path(const_cast<char *>("libraries/shaders/LightVertexShader.glsl"));
extern char * light_f_shader = libraries_path(const_cast<char *>("libraries/shaders/LightFragmentShader.glsl"));
extern char * camera_shader = libraries_path(const_cast<char *>("libraries/shaders/CameraVertexShader.glsl"));

// Assets
extern char * sphere_asset = libraries_path(const_cast<char *>("libraries/assets/sphere.obj"));

#endif //GLTUTORIALS_PATHS_H
