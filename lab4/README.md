### Lab 4: Implementing normals

#### Task

1. Compute the normals of your mesh
2. Add the normals to the vertex buffer
3. Using new shaders for lighting
4. Define the light and camera positions

[Source code found and adapted from Karia Rodriguez](https://github.com/karina-rodriguez/CI312-opengl)

---
#### Journey

I started by extracting out the functions to display different types of shape/shaded/lighting.
This was to aid readability inside the class. From here I had a good base to get started calculating the normals.

The normal for a face is necessary to accurately render lighting for it. Since we are only using straight-edged
polygons the normal will be the same across the whole face, meaning we only have to calculate one normal per face.
In this case I then have to find the difference between a base vector and two other vectors, then calculate the
cross product from them. From there we can use the normalise function in OpenGL to find the normal vector for the face.

The resulting code looks like:
```cpp
	glm::vec3 base_p0(z, z, z);		//Base vector
    glm::vec3 base_p1(s / 2, h, z);	//1st vector
    glm::vec3 base_p2(s, z, z);		//2nd vector
    glm::vec3 base_norm = glm::normalize(glm::cross(glm::vec3(base_p1 - base_p0),
                                                    glm::vec3(base_p2 - base_p0)));
```

Following this process for the next three triangles I ended up with a normal buffer array, `normals`,
```cpp
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
```

which were then drawn by the shaders - `LightFragmentShader` and `LightVertexShader`. The normal buffer may look
strange, it is using the same value for each three vector points. This is due to the fact, as previously mentioned,
the normal will be the same across the face so is just repeated.

After some tweaking with the shaders as detailed in the tutorial and some tidy up of code I had the finished product of
the of pyramid lit up. Changing the position of the light source with the line `glm::vec3 lightPosition(-1, -1, -1);`.

[Shaded pyramid](./shaded.png)

---
#### Final Product

Input:
```bash
make lab4
```

Output:
[Shaded pyramid](./shaded.png)

---
#### Conclusion

In this tutorial I was exposed on how lighting can work when rendering objects. I learnt how to effectively

---
#### Sources
[Stack Overflow](https://www.stackoverflow.com/)

[Tutorials Point](https://www.tutorialspoint.com/cplusplus)

University of Brighton intranet/lectures

