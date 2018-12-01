#version 330 core
//https://www.khronos.org/opengl/wiki/Geometry_Shader
layout(triangles) in;
//6 is because we draw one trianglesand then one point
layout(triangle_strip,max_vertices=9) out;

in vData
{
    vec3 Position_worldspace;
    vec3 Normal_cameraspace;
    vec3 EyeDirection_cameraspace;
    vec3 LightDirection_cameraspace;
    vec3 fragmentColor;
}vertices[];

out vec3 fragmentColor;
out vec3 Normal_cameraspace;
out vec3 Position_worldspace;
out vec3 EyeDirection_cameraspace;
out vec3 LightDirection_cameraspace;
vec4 v1;
vec4 v2;
vec4 v3;

void drawTriangle(vec4 one, vec4 two, vec4 three, vec3 colour){
  fragmentColor = colour;
  Normal_cameraspace = vertices[0].Normal_cameraspace;
  Position_worldspace = vertices[0].Position_worldspace;
  EyeDirection_cameraspace = vertices[0].EyeDirection_cameraspace;
  LightDirection_cameraspace = vertices[0].LightDirection_cameraspace;
  gl_Position = one;
  EmitVertex();

  fragmentColor = colour;
  Normal_cameraspace = vertices[1].Normal_cameraspace;
  Position_worldspace = vertices[1].Position_worldspace;
  EyeDirection_cameraspace = vertices[1].EyeDirection_cameraspace;
  LightDirection_cameraspace = vertices[1].LightDirection_cameraspace;
  gl_Position = two;
  EmitVertex();

  fragmentColor = colour;
  Normal_cameraspace = vertices[2].Normal_cameraspace;
  Position_worldspace = vertices[2].Position_worldspace;
  EyeDirection_cameraspace = vertices[2].EyeDirection_cameraspace;
  LightDirection_cameraspace = vertices[2].LightDirection_cameraspace;
  gl_Position = three;
  EmitVertex();

  EndPrimitive();
}

void main()
{
  //base triangle
  fragmentColor = vertices[0].fragmentColor;
  Normal_cameraspace = vertices[0].Normal_cameraspace;
  Position_worldspace = vertices[0].Position_worldspace;
  EyeDirection_cameraspace = vertices[0].EyeDirection_cameraspace;
  LightDirection_cameraspace = vertices[0].LightDirection_cameraspace;
  gl_Position = gl_in[0].gl_Position;
  EmitVertex();
  
  fragmentColor = vertices[1].fragmentColor;
  Normal_cameraspace = vertices[1].Normal_cameraspace;
  Position_worldspace = vertices[1].Position_worldspace;
  EyeDirection_cameraspace = vertices[1].EyeDirection_cameraspace;
  LightDirection_cameraspace = vertices[1].LightDirection_cameraspace;
  gl_Position = gl_in[1].gl_Position;
  EmitVertex();
  
  fragmentColor = vertices[2].fragmentColor;
  Normal_cameraspace = vertices[2].Normal_cameraspace;
  Position_worldspace = vertices[2].Position_worldspace;
  EyeDirection_cameraspace = vertices[2].EyeDirection_cameraspace;
  LightDirection_cameraspace = vertices[2].LightDirection_cameraspace;
  gl_Position = gl_in[2].gl_Position;
  EmitVertex();
  
  EndPrimitive();

  vec4 centre = (gl_in[2].gl_Position + gl_in[1].gl_Position + gl_in[0].gl_Position) / 3;

  //triangle 1
  v1 = gl_in[0].gl_Position;
  v2 = gl_in[1].gl_Position;
  v3 = centre;

  drawTriangle(v1, v2, v3, vec3(1.0, 0.0, 0.0));

  //triangle 2
  v1 = gl_in[0].gl_Position;
  v2 = gl_in[2].gl_Position;
  v3 = centre;

  drawTriangle(v1, v2, v3, vec3(0.0, 0.0, 1.0));

  //triangle 3
  v1 = gl_in[1].gl_Position;
  v2 = gl_in[2].gl_Position;
  v3 = centre;

  drawTriangle(v1, v2, v3, vec3(0.0, 1.0, 0.0));

}
