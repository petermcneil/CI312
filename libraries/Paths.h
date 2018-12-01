#ifndef GLTUTORIALS_PATHS_H
#define GLTUTORIALS_PATHS_H

#include <cstdlib>
#include <iostream>

char * libraries_path(char file[]) {
    //Change this to download location
    char library[] = "/Users/mcneip01/uni/CI312/";
    auto * path = new char[std::strlen(library)+std::strlen(file)+1];
    std::strcpy(path,library);
    std::strcat(path,file);
    return path;
}

// Shaders
char * simple_v_shader = libraries_path(const_cast<char *>("libraries/shaders/SimpleVertexShader.glsl"));
char * simple_f_shader = libraries_path(const_cast<char *>("libraries/shaders/SimpleFragmentShader.glsl"));
char * light_v_shader = libraries_path(const_cast<char *>("libraries/shaders/LightVertexShader.glsl"));
char * light_f_shader = libraries_path(const_cast<char *>("libraries/shaders/LightFragmentShader.glsl"));
char * camera_shader = libraries_path(const_cast<char *>("libraries/shaders/CameraVertexShader.glsl"));
char * colour_f_shader = libraries_path(const_cast<char *>("libraries/shaders/ColorsFragmentShader.glsl"));
char * colour_v_shader = libraries_path(const_cast<char *>("libraries/shaders/ColorsVertexShader.glsl"));
char * colour_g_shader = libraries_path(const_cast<char *>("libraries/shaders/ColorsGeometryShader.glsl"));


// Assets
char * sphere_asset = libraries_path(const_cast<char *>("libraries/assets/sphere.obj"));
char * moving_asset = libraries_path(const_cast<char *>("libraries/assets/movingObject.obj"));

#endif //GLTUTORIALS_PATHS_H
