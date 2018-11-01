#version 330 core


// Input vertex data, different for all executions of this shader.
layout(location = 0) in vec3 vertexPosition_modelspace;
layout(location = 1) in vec3 vertexColor;
layout(location = 2) in vec3 vertexNormal_modelspace;

out vData
{
    vec3 fragmentColor;
    vec3 Position_worldspace;
    vec3 Normal_cameraspace;
    vec3 EyeDirection_cameraspace;
    vec3 LightDirection_cameraspace;

}vertex;

// Values that stay constant for the whole mesh.
uniform mat4 MVP;
uniform mat4 V;
uniform mat4 M;
uniform vec3 LightPosition_worldspace;

void main(){
    
    // Output position of the vertex, in clip space : MVP * position
    gl_Position =  MVP * vec4(vertexPosition_modelspace,1);
    
    // Position of the vertex, in worldspace : M * position
    vertex.Position_worldspace = (M * vec4(vertexPosition_modelspace,1)).xyz;
    
    // Vector that goes from the vertex to the camera, in camera space.
    // In camera space, the camera is at the origin (0,0,0).
    vec3 vertexPosition_cameraspace = ( V * M * vec4(vertexPosition_modelspace,1)).xyz;
    vertex.EyeDirection_cameraspace = vec3(0,0,0) - vertexPosition_cameraspace;
    
    // Vector that goes from the vertex to the light, in camera space. M is ommited because it's identity.
    vec3 LightPosition_cameraspace = ( V * vec4(LightPosition_worldspace,1)).xyz;
    vertex.LightDirection_cameraspace = LightPosition_cameraspace + vertex.EyeDirection_cameraspace;
    
    // Normal of the the vertex, in camera space
    vertex.Normal_cameraspace = ( V * M * vec4(vertexNormal_modelspace,0)).xyz; // Only correct if ModelMatrix does not scale the model ! Use its inverse transpose if not.

    // UV of the vertex. No special space for this one.
    vertex.fragmentColor = vertexColor;
}



