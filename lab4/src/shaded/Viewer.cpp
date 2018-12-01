#include "Viewer.h"

Viewer::Viewer(int wid, int hei, int x, int y, GLuint vertex, GLuint color, bool fil) {
    width = wid;
    height = hei;
    xpos = x;
    ypos = y;
    vertexbuffer = vertex;
    colourbuffer = color;
    fill = fil;
}

void Viewer::draw() {
    glViewport(xpos, ypos, width, height);

    //********Add the Geometry
    // 1rst attribute buffer : vertices
    glEnableVertexAttribArray(0);
    glBindBuffer(GL_ARRAY_BUFFER, vertexbuffer);
    glVertexAttribPointer(
            0,                  // attribute 0. No particular reason for 0, but must match the layout in the shader.
            3,                  // size
            GL_FLOAT,           // type
            GL_FALSE,           // normalized?
            0,                  // stride
            (void *) 0            // array buffer offset
    );

    // 2nd attribute buffer : colors
    glEnableVertexAttribArray(1);
    glBindBuffer(GL_ARRAY_BUFFER, colourbuffer);
    glVertexAttribPointer(
            1,                  // attribute 0. No particular reason for 0, but must match the layout in the shader.
            3,                  // size
            GL_FLOAT,           // type
            GL_FALSE,           // normalized?
            0,                  // stride
            (void *) 0            // array buffer offset
    );

    if (!fill){
        glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);
    }
    glDrawArrays(GL_TRIANGLES, 0, 100000); // 3 indices starting at 0 -> 1

    glDisableVertexAttribArray(0);
    glDisableVertexAttribArray(1);
}

