### Lab 3: Polygon Meshes

#### Task

1. Understand geometry in example file
2. Creating a 3D geometry
3. Implementing the geometry
4. Changing the camera view
5. (Extension) Load a 3D polygonal mesh from a file

[Source code found and adapted from Karia Rodriguez](https://github.com/karina-rodriguez/CI312-opengl)

---
#### Journey

1.

2. 

**3. Implementing the geometry**

I first started by grabbing a pen and piece of paper, drawing the current
triangle I had written during lab 2. I had trouble picturing the triangles where they
were, so I moved them to both start drawing at (0,0). The triangles were now at a good
starting point for me to visualise.

Starting at the bottom left corner I labelled the coordinates on the triangle, getting
(0,1), (1,0), (0,1) for all three vertices.

    
**4. Changing the camera view**

**5. Load a 3d polygonal mesh from a file**

For this task I 

---
#### Repo cleanup
I noticed that for my folder structure I was having to copy all
the common code and libraries. Therefore this lab I performed extensive refactoring of the code and 
layout of files. I managed to extract the common libraries and shaders
into a parent directory called `libraries`. This allowed me to have a
cleaner, smaller repo and keeps it DRY (Don't Repeat Yourself).


This required me to edit the `CMake` files to allow for a parent `libraries` project.
It was easier than I had expected, the majority of what needed to be changed
was the paths. Changing these to relative paths (i.e `../../libraries/common`) worked
well.

I also extracted hardcoded paths to the shaders to a common file and using `sed`
have provided a way to setup the project to the specific directory. In addition I added a `Makefile` to give the user easy building
of my project, only requiring a small command `make lab1`.

---
#### Final Product

Input:
```bash
make lab3
...
make lab3File
```

Output:

![3D pyramid](./pyramids.png)

![Imported asset mesh in 3d](./loadedFiles.png)

---
#### Sources
[Stack Overflow](https://www.stackoverflow.com/)

[Tutorials Point](https://www.tutorialspoint.com/cplusplus)

University of Brighton intranet/lectures

