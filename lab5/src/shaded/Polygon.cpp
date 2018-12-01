// Include standard headers
#include <cstdio>
#include <cstdlib>
// Include GLEW
#include <GL/glew.h>
// Include GLFW
#include <glfw3.h>
// Include GLM
#include <glm/glm.hpp>

#include <iostream>
#include <vector>
#include "../../common/shaders.hpp"
#include "../../common/objloader.hpp"
#include "../../common/vboindexer.hpp"
#include "../../common/controls.hpp"
#include <glm/gtx/transform.hpp>
#include "Viewer.h"
#include "../../Paths.h"

using namespace glm;

// Global variables
GLFWwindow *window;

int width = 1000;
int height = 500;

GLuint vertexbuffer;
GLuint colourbuffer;

GLuint normalbuffer;
GLfloat s;
GLfloat z;
GLfloat H;
GLfloat h;
GLuint programID;
Viewer *t1;
Viewer *t2;

int main(int argc, char *argv[]) {

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

    // Open a window and create its OpenGL context
    window = glfwCreateWindow(width, height, "Shaded Polygon", nullptr, nullptr);
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
    // Hide the mouse and enable unlimited movement
    //glfwSetInputMode(window, GLFW_CURSOR, GLFW_CURSOR_DISABLED);

    // Set the mouse at the center of the screen
    glfwPollEvents();
    //we set the cursor at the centre so that it always start on our origin (0,0,0)
    glfwSetCursorPos(window, width / 2, height / 2);

    // Dark blue background
    glClearColor(0.0f, 0.4f, 0.4f, 0.0f);

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

    s = 1;
    z = 0.0;
    H = static_cast<GLfloat>((sqrt(3) * s) / 2);
    h = static_cast<GLfloat>((sqrt(6) * s) / 3);

    //--------------------------------------------------
    // Base Triangle
    //--------------------------------------------------
    glm::vec3 base_p0(z, z, z);
    glm::vec3 base_p1(s / 2, h, z);
    glm::vec3 base_p2(s, z, z);
    glm::vec3 base_norm = glm::normalize(glm::cross(glm::vec3(base_p1 - base_p0),
                                                    glm::vec3(base_p2 - base_p0)));

    //--------------------------------------------------
    //  Triangle 1
    //--------------------------------------------------
    glm::vec3 t1_p0(z, z, z);
    glm::vec3 t1_p1(s / 2, h / 3, H);
    glm::vec3 t1_p2(s / 2, h, z);
    glm::vec3 t1_norm = glm::normalize(glm::cross(glm::vec3(t1_p1 - t1_p0),
                                                  glm::vec3(t1_p2 - t1_p0)));

    //--------------------------------------------------
    //  Triangle 2
    //--------------------------------------------------
    glm::vec3 t2_p0(z, z, z);
    glm::vec3 t2_p1(s / 2, h / 3, H);
    glm::vec3 t2_p2(s, z, z);
    glm::vec3 t2_norm = glm::normalize(glm::cross(glm::vec3(t2_p1 - t2_p0),
                                                  glm::vec3(t2_p2 - t2_p0)));

    //--------------------------------------------------
    //  Triangle 3
    //--------------------------------------------------
    glm::vec3 t3_p0(s, z, z);
    glm::vec3 t3_p1(s / 2, h / 3, H);
    glm::vec3 t3_p2(s / 2, h, z);
    glm::vec3 t3_norm = glm::normalize(glm::cross(glm::vec3(t3_p1 - t3_p0),
                                                  glm::vec3(t3_p2 - t3_p0)));


    //--------------------------------------------------
    //  Vertex Buffer
    //--------------------------------------------------
    static const GLfloat g_vertex_buffer_data[] = {
            //Base Triangle
            base_p0.x, base_p0.y, base_p0.z,
            base_p1.x, base_p1.y, base_p1.z,
            base_p2.x, base_p2.y, base_p2.z,
            // 1
            t1_p0.x, t1_p0.y, t1_p0.z,
            t1_p1.x, t1_p1.y, t1_p1.z,
            t1_p2.x, t1_p2.y, t1_p2.z,
            // 2
            t2_p0.x, t2_p0.y, t2_p0.z,
            t2_p1.x, t2_p1.y, t2_p1.z,
            t2_p2.x, t2_p2.y, t2_p2.z,
            // 3
            t3_p0.x, t3_p0.y, t3_p0.z,
            t3_p1.x, t3_p1.y, t3_p1.z,
            t3_p2.x, t3_p2.y, t3_p2.z,
    };

    glGenBuffers(1, &vertexbuffer);
    glBindBuffer(GL_ARRAY_BUFFER, vertexbuffer);
    glBufferData(GL_ARRAY_BUFFER, sizeof(g_vertex_buffer_data), g_vertex_buffer_data, GL_STATIC_DRAW);

    //--------------------------------------------------
    //  Colour Buffer
    //--------------------------------------------------
    static const GLfloat g_color_buffer_data[] = {
            z, z, 1.0f,
            z, z, 1.0f,
            z, z, 1.0f,
            1.0, z, z,
            1.0, z, z,
            1.0, z, z,
            z, 1.0, z,
            z, 1.0, z,
            z, 1.0, z,
    };

    glGenBuffers(1, &colourbuffer);
    glBindBuffer(GL_ARRAY_BUFFER, colourbuffer);
    glBufferData(GL_ARRAY_BUFFER, sizeof(g_color_buffer_data), g_color_buffer_data, GL_STATIC_DRAW);

    //--------------------------------------------------
    //  Normal Buffer
    //--------------------------------------------------
    static const GLfloat normals[] = {
            //Base Triangle
            base_norm.x, base_norm.y, base_norm.z,
            base_norm.x, base_norm.y, base_norm.z,
            base_norm.x, base_norm.y, base_norm.z,
            // 1
            t1_norm.x, t1_norm.y, t1_norm.z,
            t1_norm.x, t1_norm.y, t1_norm.z,
            t1_norm.x, t1_norm.y, t1_norm.z,
            // 2
            t2_norm.x, t2_norm.y, t2_norm.z,
            t2_norm.x, t2_norm.y, t2_norm.z,
            t2_norm.x, t2_norm.y, t2_norm.z,
            // 3
            t3_norm.x, t3_norm.y, t3_norm.z,
            t3_norm.x, t3_norm.y, t3_norm.z,
            t3_norm.x, t3_norm.y, t3_norm.z,
    };


    glGenBuffers(1, &normalbuffer);
    glBindBuffer(GL_ARRAY_BUFFER, normalbuffer);
    glBufferData(GL_ARRAY_BUFFER, sizeof(normals) * sizeof(glm::vec3), &normals[0], GL_STATIC_DRAW);

    //--------------------------------------------------
    //  Build pyramids.
    //--------------------------------------------------
    t1 = new Triangle(width, height * 2, 0, 0, vertexbuffer, colourbuffer, true);
    t2 = new Triangle(width, height * 2, width, 0, vertexbuffer, colourbuffer, true);

    GLuint programID = LoadShaders(colour_g_shader,
                                   colour_v_shader,
                                   colour_f_shader);

    auto MatrixID = static_cast<GLuint>(glGetUniformLocation(programID, "MVP"));
    auto ViewID = static_cast<GLuint>(glGetUniformLocation(programID, "V"));
    auto ModelID = static_cast<GLuint>(glGetUniformLocation(programID, "M"));
    auto LightID = static_cast<GLuint>(glGetUniformLocation(programID, "LightPosition_worldspace"));
    auto CameraID = static_cast<GLuint>(glGetUniformLocation(programID, "CameraPosition_worldspace"));

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
                glm::vec3(s/2, H/3, s*3), // Camera is at (0,0,-1), in World Space
                glm::vec3(0, 0, 0), // and looks at the origin
                glm::vec3(0, 1, 0)  // Head is up (set to 0,-1,0 to look upside-down)
        );
        //***********MODEL*****************
        glm::mat4 Model = glm::mat4(1.0);

        // Our ModelViewProjection : multiplication of our 3 matrices
        glm::mat4 mvp = Projection * View * Model; // Remember, matrix multiplication is the other way around
        glUniformMatrix4fv(MatrixID, 1, GL_FALSE, &mvp[0][0]);
        glUniformMatrix4fv(ModelID, 1, GL_FALSE, &View[0][0]);
        glUniformMatrix4fv(ViewID, 1, GL_FALSE, &View[0][0]);

        // Camera view
        glm::vec3 lightPosition(-1, -1, -1);
        glm::vec3 cameraPosition(0, 0, 0);
        glUniform3f(LightID, lightPosition.x, lightPosition.y, lightPosition.z);
        glUniform3f(CameraID, cameraPosition.x, cameraPosition.y, cameraPosition.z);

        // Lighting
        glEnableVertexAttribArray(2);
        glBindBuffer(GL_ARRAY_BUFFER, normalbuffer);
        glVertexAttribPointer(
                2,                  // attribute 0. No particular reason for 0, but must match the layout in the shader.
                3,                  // size
                GL_FLOAT,           // type
                GL_FALSE,           // normalized?
                0,                  // stride
                (void *) nullptr            // array buffer offset
        );

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


