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

To calculate the normals I used the OpenGL function `normalize`, with the cross product of the 

Following the tutorial I ended up with the function `lightingCamera()`, this function applied lighting 
to the pyramids and gave them a shadow.

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


---
#### Sources
[Stack Overflow](https://www.stackoverflow.com/)

[Tutorials Point](https://www.tutorialspoint.com/cplusplus)

University of Brighton intranet/lectures

