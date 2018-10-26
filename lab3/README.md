### Lab 3: Polygon Meshes

#### Task

1. Understand geometry in example file
2. Creating a 3D geometry
3. Implementing the geometry
4. Changing the camera view
5. (Extension) Load a 3D polygonal mesh from a file

#### Journey

1.
---
2.
---
3. Implementing the geometry
---
I first started by grabbing a pen and piece of paper, drawing the current
triangle I had built during lab 2.
4.
---
5. Load a 3d polygonal mesh from a file
---
For this task I 

---
Throughout this lab I performed extensive refactoring of the code and 
layout of files. I managed to extract the common libraries and shaders
into a parent directory called `libraries`. This allowed me to have a
cleaner, smaller repo and keeps it DRY (Don't Repeat Yourself).


This required me to edit the `CMake` files to allow for a parent `libraries` project.
It was easier than I had expected, the majority of what needed to be changed
was the paths. Changing these to relative paths (i.e `../../libraries/common`) worked
well.