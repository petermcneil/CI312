#include "Viewer.h"

void FileShape::draw() {
    //************** THE OBJ
    std::vector<unsigned short> indices;
    std::vector<glm::vec3> vertices;
    std::vector<glm::vec2> uvs;
    std::vector<glm::vec3> normals;

    bool res = loadAssImp(assetPath, indices, vertices, uvs, normals);

    glGenBuffers(1, &vertexbuffer);
    glBindBuffer(GL_ARRAY_BUFFER, vertexbuffer);
    glBufferData(GL_ARRAY_BUFFER, vertices.size() * sizeof(glm::vec3), &vertices[0], GL_STATIC_DRAW);
    std::vector<glm::vec3> colors;

    for (int i = 0; i < vertices.size(); i++) {
        colors.push_back(glm::vec3(1.0, 0.0, 0.0));
    }

    glGenBuffers(1, &colourbuffer);
    glBindBuffer(GL_ARRAY_BUFFER, colourbuffer);
    glBufferData(GL_ARRAY_BUFFER, colors.size() * sizeof(glm::vec3), &colors[0], GL_STATIC_DRAW);

    Viewer::draw();
}