### Lab 5: Manipulation of polygons using shaders

[Code for this lab found](https://github.com/petermcneil/CI312/tree/master/lab5/), however it is recommended you
clone the whole repository.

#### Task

1. Update shaders
2. Look at shaders
3. Use the shaders to draw 3 extra triangles per face

[Source code found and adapted from Karia Rodriguez](https://github.com/karina-rodriguez/CI312-opengl)

---
#### Journey

Using the lab 4 source code as my base, I removed all the unnecessary functions such as `basicCamera()` to keep it
simple (KISS). 

My first approach on this task was to find the centre of the triangle being rendered and then change the
position of each vertex, as detailed below. All the code would have to do then is draw it three times
in different positions.

```glsl
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

void main(){
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
```
`drawTriangle` was a function that takes in three vectors and a colour vector and emits the primitive.

However this method did not work the way I expected... changing nothing.

![A pyramid that hasn't changed](./unchanged.png)

This needed more investigation. So in the next tutorial I consulted with Karina, and she helped me find a solution.
The main error I made was assuming that only the vector position had to be centered and changed. In the process of fixing
this I removed the `drawTriangle()` function as it made the code more obtuse. To fix this error, I found the averaged
positions of everything.

```glsl
  vec4 centre = ((gl_in[2].gl_Position + gl_in[1].gl_Position + gl_in[0].gl_Position) / 3);
  vec3 normal = ((vertices[2].Normal_cameraspace + vertices[1].Normal_cameraspace + vertices[0].Normal_cameraspace) / 3);
  vec3 eye = ((vertices[2].EyeDirection_cameraspace + vertices[1].EyeDirection_cameraspace + vertices[0].EyeDirection_cameraspace) / 3);
  vec3 position = ((vertices[2].Position_worldspace + vertices[1].Position_worldspace + vertices[0].Position_worldspace) / 3);
  vec3 light = ((vertices[2].LightDirection_cameraspace + vertices[1].LightDirection_cameraspace + vertices[0].LightDirection_cameraspace) / 3);
```

Once I had all the variables for the centre vertex calculated, I could then start drawing each triangle on the base face
manually. This resulted in:

![A pyramid that displays all three triangles](./completed.png)

Unfortunately there is an error with my lighting code that is causing a dark spot on top of the centre vector.
I tried for more than two hours to fix this, and consulted with Karina, but I was unable to get rid of it. I decided
it wasn't worth any more time spent on it, as I had achieved the main goal of displaying 3 different coloured vectors.

---
#### Final Product

Input:
```bash
make lab5
```

Output:
![A pyramid that displays all three triangles](./completed.png)

---
#### Conclusion
It was interesting to learn about the GLSL shaders and how they can be used
 to manipulate the final graphical output.

---
#### Sources
[Stack Overflow](https://www.stackoverflow.com/)

[Tutorials Point](https://www.tutorialspoint.com/cplusplus)

University of Brighton intranet/lectures

