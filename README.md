# uber ludwig examples

Example code illustrating using Uber's [ludwig](https://uber.github.io/ludwig/) deep learning framework.

|Directory|Description|
|---------|-----------|
|bin|bash scripts for various function|
|containers|Docker containers for ludwig software stack|
|mnist|Use of ludwig with mnist data set|

Preparatory steps:

* Create docker images with ludwig software stack.  Run the following bash script.
```
bin/build_images
```