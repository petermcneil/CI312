#ifndef GLTUTORIALS_SHAPE_H
#define GLTUTORIALS_SHAPE_H
    #include <GL/glew.h>
    #include <iostream>
    // Include GLM
    #include <glm/glm.hpp>

    #include <cstdio>
    #include <cstdlib>
    #include <vector>

    #include "../../common/shader.hpp"
    #include "../../common/objloader.hpp"
    #include "../../common/vboindexer.hpp"
    #include "../../common/controls.hpp"

    using namespace std;

    class Viewer {
    protected:
        int width;
        int height;
        int xpos;
        int ypos;
        GLuint vertexbuffer;
        GLuint colourbuffer;
        bool fill;

    public:
        Viewer(int wid, int hei, int x, int y, GLuint vertex, GLuint color, bool fil);

        virtual void draw();
};

#endif

#ifndef GLTUTORIALS_TRIANGLE_H
#define GLTUTORIALS_TRIANGLE_H

    class Triangle : public Viewer {
    public:
        Triangle(int wid, int hei, int x, int y, GLuint vertex, GLuint colour, bool fil) : Viewer(wid, hei, x, y, vertex, colour, fil) {}

        void draw();
    };

#endif


#ifndef GLTUTORIALS_FILE_SHAPE_H
#define GLTUTORIALS_FILE_SHAPE_H

    class FileShape : public Viewer {
    private:
        char * assetPath;
    public:
        FileShape(int wid, int hei, int x, int y, GLuint vertex, GLuint colour, char * asset)
        : Viewer(wid, hei, x, y, vertex, colour, true) {
            assetPath = asset;
        }

        void draw();
    };

#endif




