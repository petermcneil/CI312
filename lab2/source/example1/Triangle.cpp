//
// Created by Peter McNeil on 13/10/2018.
//

#include "Triangle.h"
#include <iostream>
using namespace std;

Triangle::Triangle(int wid, int hei, int x, int y, GLuint vertex, GLuint color) {
    width = wid;
    height = hei;
    xpos = x;
    ypos = y;
    vertexbuffer = vertex;
    colorbuffer = color;
}

Triangle::~Triangle() {
    cout << "\nTriangle is being deleted" << endl;
}

void Triangle::draw() {
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
            (void*)0            // array buffer offset
    );

    // 2nd attribute buffer : colors
    glEnableVertexAttribArray(1);
    glBindBuffer(GL_ARRAY_BUFFER, colorbuffer);
    glVertexAttribPointer(
            1,                  // attribute 0. No particular reason for 0, but must match the layout in the shader.
            3,                  // size
            GL_FLOAT,           // type
            GL_FALSE,           // normalized?
            0,                  // stride
            (void*)0            // array buffer offset
    );



    // Draw the geometry !
    // glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);
    glDrawArrays(GL_TRIANGLES, 0, 3); // 3 indices starting at 0 -> 1

    glDisableVertexAttribArray(0);
    glDisableVertexAttribArray(1);
}
