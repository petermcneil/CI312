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
    bool fill;

public:
    Triangle(int wid, int hei, int x, int y, GLuint vertex, GLuint color, bool fil);

    void draw();

    ~Triangle();
};

#endif //GLTUTORIALS_TRIANGLE_H