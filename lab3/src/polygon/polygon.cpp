// Include standard headers
#include <cstdio>
#include <cstdlib>

// Include GLEW
#include <GL/glew.h>

// Include GLFW
#include <glfw3.h>

GLFWwindow *window;

// Include GLM
#include <glm/glm.hpp>

using namespace glm;

#include <iostream>
#include <vector>
#include "../../common/shader.hpp"
#include "../../common/objloader.hpp"
#include "../../common/vboindexer.hpp"
#include "../../common/controls.hpp"
#include "Viewer.h"
#include "../../Paths.h"
#include <glm/gtx/transform.hpp>


int main(int argc, char* argv[]) {
    bool triangle = argc <= 1;

    if (!glfwInit()) {
        fprintf(stderr, "Failed to initialize GLFW\n");
        getchar();
        return -1;
    }

    glfwWindowHint(GLFW_SAMPLES, 4);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE); // To make MacOS happy; should not be needed
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

    int width = 1000;
    int height = 500;

    // Open a window and create its OpenGL context
    window = glfwCreateWindow(width, height, "Polygon mesh", nullptr, nullptr);
    if (window == nullptr) {
        fprintf(stderr,
                "Failed to open GLFW window. If you have an Intel GPU, they are not 3.3 compatible. Try the 2.1 version of the tutorials.\n");
        getchar();
        glfwTerminate();
        return -1;
    }
    glfwMakeContextCurrent(window);

    // Ensure we can capture the escape key being pressed below
    glfwSetInputMode(window, GLFW_STICKY_KEYS, GL_TRUE);
    // Hide the mouse and enable unlimited mouvement
    glfwSetInputMode(window, GLFW_CURSOR, GLFW_CURSOR_DISABLED);

    // Set the mouse at the center of the screen
    glfwPollEvents();
    //we set the cursor at the centre so that it always start on our origin (0,0,0)
    glfwSetCursorPos(window, width / 2, height / 2);

    // Dark blue background
    glClearColor(0.0f, 0.0f, 0.4f, 0.0f);

    // Initialize GLEW
    glewExperimental = static_cast<GLboolean>(true); // Needed for core profile


    // Initialize GLEW
    if (glewInit() != GLEW_OK) {
        fprintf(stderr, "Failed to initialize GLEW\n");
        getchar();
        glfwTerminate();
        return -1;
    }

    glEnable(GL_DEPTH_TEST);
    // Accept fragment if it closer to the camera than the former one
    glDepthFunc(GL_LESS);

    // Cull triangles which normal is not towards the camera
    //glEnable(GL_CULL_FACE);

    GLuint VertexArrayID;
    glGenVertexArrays(1, &VertexArrayID);
    glBindVertexArray(VertexArrayID);

    GLfloat s = .5;
    GLfloat z = 0.0;
    GLfloat H = ((sqrt(3) * s) / 2);
    GLfloat h = ((sqrt(6) * s) / 3);

    static const GLfloat g_vertex_buffer_data[] = {
            //Base Viewer
            z, z, z,
            s, z, z,
            s / 2, h, z,
            //
            z, z, z,
            s / 2, h / 3, H,
            s / 2, h, z,
            //
            s, z, z,
            s / 2, h / 3, H,
            s / 2, h, z,
            //
            z, z, z,
            s / 2, h / 3, H,
            s, z, z,
    };

    GLuint vertexbuffer;
    glGenBuffers(1, &vertexbuffer);
    glBindBuffer(GL_ARRAY_BUFFER, vertexbuffer);
    glBufferData(GL_ARRAY_BUFFER, sizeof(g_vertex_buffer_data), g_vertex_buffer_data, GL_STATIC_DRAW);

    static const GLfloat g_color_buffer_data[] = {
            0.0, 1.0, 1.0f,
            0.0, 1.0, 1.0f,
            0.0, 1.0, 1.0f,
            1.0, 1.0, 1.0f,
            1.0, 1.0, 1.0f,
            1.0, 1.0, 1.0f,
            1.0, 1.0, 1.0f,
            1.0, 1.0, 1.0f,
            1.0, 1.0, 1.0f,
    };

    GLuint colorbuffer;
    glGenBuffers(1, &colorbuffer);
    glBindBuffer(GL_ARRAY_BUFFER, colorbuffer);
    glBufferData(GL_ARRAY_BUFFER, sizeof(g_color_buffer_data), g_color_buffer_data, GL_STATIC_DRAW);

    GLuint programID = LoadShaders(camera_shader, simple_f_shader);

    Viewer* t1;
    Viewer* t2;

    if(triangle){
        t1 = new Triangle(width, height * 2, 0, 0, vertexbuffer, colorbuffer);
        t2 = new Triangle(width, height * 2, width, 0, vertexbuffer, colorbuffer);
    } else {
        t1 = new FileShape(width, height * 2, 0, 0, vertexbuffer, colorbuffer, sphere_asset);
        t2 = new FileShape(width, height * 2, width, 0, vertexbuffer, colorbuffer, sphere_asset);
    }

    GLint MatrixID = glGetUniformLocation(programID, "MVP");

    do {
        // Clear the screen. It's not mentioned before Tutorial 02, but it can cause flickering, so it's there nonetheless.
        glClear(GL_DEPTH_BUFFER_BIT | GL_COLOR_BUFFER_BIT);


        glUseProgram(programID);

        computeMatricesFromInputs(window, width, height);

        //********Calculate the MVP matrix
        //***********PROJECTION*****************
        glm::mat4 Projection = getProjectionMatrix();
        //***********CAMERA*****************
        // Camera matrix
        glm::mat4 View = glm::lookAt(
                glm::vec3(0.7, 0.5, 0.5), // Camera is at (0,0,-1), in World Space
                glm::vec3(0, 0, 0), // and looks at the origin
                glm::vec3(0, 1, 0)  // Head is up (set to 0,-1,0 to look upside-down)
        );
        //***********MODEL*****************
        glm::mat4 Model = glm::mat4(1.0);
        // Our ModelViewProjection : multiplication of our 3 matrices
        glm::mat4 mvp = Projection * View * Model; // Remember, matrix multiplication is the other way around
        glUniformMatrix4fv(MatrixID, 1, GL_FALSE, &mvp[0][0]);

        t1->draw();
        t2->draw();

        // Swap buffers
        glfwSwapBuffers(window);
        glfwPollEvents();

    } // Check if the ESC key was pressed or the window was closed
    while (glfwGetKey(window, GLFW_KEY_ESCAPE) != GLFW_PRESS &&
           glfwWindowShouldClose(window) == 0);

    // Cleanup VBO and shader
    glDeleteBuffers(1, &vertexbuffer);
    glDeleteProgram(programID);
    glDeleteVertexArrays(1, &VertexArrayID);


    // Close OpenGL window and terminate GLFW
    glfwTerminate();

    return 0;
}


