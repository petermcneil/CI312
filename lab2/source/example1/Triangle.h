//
// Created by Peter McNeil on 13/10/2018.
//

#ifndef GLTUTORIALS_TRIANGLE_H
#define GLTUTORIALS_TRIANGLE_H

#include <GL/glew.h>
class Triangle {
private:
    int width;
    int height;
    int xpos;
    int ypos;
    GLuint vertexbuffer;
    GLuint colorbuffer;

public:
    Triangle(int wid, int hei, int x, int y, GLuint vertex, GLuint color);
    void draw();
    ~Triangle();
};

#endif //GLTUTORIALS_TRIANGLE_H
