Lab 6-8: Using real world 3D acquisition/modelling techniques
---

- Capture real world objects using 3D acquisition tools
- Use Meshlab to clean and construct a 3D mesh suitable for visualisation
- Upload your 3D mesh to Sketchfab, tag it, and discuss the struggles and gains from platforms like it.

Lab 6
--
The first decision I made was on which technique I would use to build the 3D models, either
with a normal camera or a proper 3D scanner. I chose to use the scanner, in this case the Sense 3D scanner,
as it would give me increased clarity of the 3D models in comparison to a photogrammetry technique. A single camera
does not work well with objects that lack visual detail, or objects with large flat surfaces. The advantage
of using a camera being that it can be much cheaper than a scanner, and have more that one use - however I had
easy access to a scanner.

I identified a list of objects that I would like to gather; me, my partner, a chair, an aluminium can, and a Vive controller.
This was a good range of objects, big to small, simple to complex. I found that
capturing these objects with the scanner was far more challenging than I had first thought. 

Starting with the Vive controller, I passed the scanner around the controller trying to achieve a coherent object.
This failed. It is a complex object and having the Sense3D software recognise the object as I moved
it around the controller was difficult. It ended up "cloning" itself in the model, which rendered 
 it useless. I also had difficulty rotating this object and gaining a full 360° view.

![3D model of a scanned Vive Controller](./screenshots/vive.png)

I had the same problem scanning in the drink can. I tried pausing the scanner
with the software, so that rotation could happen without muddying
the model. However the software would get "lost" and not be able to find
a point that it had scanned previously. I eventually gave up trying to model the whole object
and moved on to scanning people.

![3D model of a scanned aluminium can](./screenshots/can.png)

More success was found in scanning people. I had my partner sit on a rotating chair,
this allowed me to be able to perform a 360° scan of her. It was not without its struggles
however. I had to try scanning her 10+ before generating a decent enough 3D scan.
This process was repeated to create model of myself.

![3D model of my partner](./screenshots/kasey.png)

![3D model of myself](./screenshots/me.png)

I also modelled a chair with some success as this was a free-standing object
that I could walk around. However I struggled to model the underside of the chair
and the legs. The Sense3D scanner had trouble tracking the object when moving to these
points.

![3D model of a chair](./screenshots/chair.png)

I am happy with the models I produced, although they are far from perfect. I definitely gained 
good experience with using 3D model acquisition tools and an appreciation for the tooling/methods.

Lab 7
--

For this lab I decided to use a model of myself as it was one of the ones with most clarity.
I loaded this 3D model in to Meshlab and began to fixes the problems with the model.

There were a series of holes on top of my head, due to the fact it was difficult to reach and hair
is a complex obejct to model. So I used a re-meshing filter, Close Holes,  to fill in the holes
![Holes in my head](./screenshots/holes_before.png)

After using the filter extensively on the little holes around my head, it ended up looking like
this
![No more holes in my head](./screenshots/holes_after.png)

As you can see there is a massive improvement in the overall mesh in the head. I also filled in 
other holes throughout the rest of the model.

The next step I took was to remove all the artifacts on the model that don't belong there, such
as a rogue piece of hair that the scanner generated, or a piece of nose it thought existed. To do this
I used the selection tool `Select faces in a rectangular region`, and then used the delete tool.
This proved to be tricky as rectangles don't lend themselves as an easy tool to remove triangular faces.


Finally I decided to smooth the model. I used the `Taubin smoothing` filter, along with the 
`Smooth face normals`. Below is the difference that the smoothing had to the model, the grey being
smoothed model. As you can see the smoothing algorithms, smoothed out a significant portion of my head model
![Difference between the original model and the smoothed model](./screenshots/taubin_smooth.png)

The model, in my eyes, was as complete as I could make it, so I exported the model for use
in a later lab.

Lab 8
--
I signed up for a Sketchfab account and uploaded the final model that I produced last week.
This was a smooth and simple process. [Viewable here](https://skfb.ly/6FVBI)

The tags I chose for this object were:

 - peter
 - man
 - face
 - neutral
 - mcneil
 - stare
 - bust

When searching these tags I found that my model ranks highly for certain tags; 
`stare`, `neutral`, and `mcneil`. My model being ranked high for `mcneil` makes sense as there is unlikely to be many models 
labelled that. However, the more interesting tags are the stare, and neutral. These are
both fairly abstract concepts, that aren't necessarily thought of when developers/designers/modellers
upload their models to this search engine.

This is one of the major struggles with categorising 3D models. Traditionally search engines
use keywords (amongst other factors) to find relevant content, however with 3D models this isn't such an
easy job as the model has is just a set of vectors - it doesn't hold much context as to what the object is.
Humans are very good at identifying and categorising objects, but teaching a computer the same thing is tedious and very labour 
intensive. Requiring thousands, even millions, of examples that are verified by humans before it can maybe understand the 
content of a model. There also isn't a good way of teaching a computer about abstract concepts such as `neutral`.

Therefore it is up to the submitter to a service like Sketchfab to categorise the model themselves. This is not the most 
ideal solution as the submitter may not care to add such a detailed description and tags.

Sketchfab provides an invaluable service for the modelling community. They provide a platform to openly share or sell 
models to others. It's barrier to entry is extremely low, which is encouraging to newcomers.


Sources
---

University of Brighton intranet/lectures

