# Acne Detection and Assessment

This repository gathers three basic image processing implementation in MATLAB to detect face acne. These methods were implemented from available literature. In addition, it poses a method (```severity.m```) to evaluate severity based on the acne quantity. This severity is classified into 'Mild', 'Moderate', 'Severe' and 'Very Severe', its criteria were taken from the paper:

```
HAYASHI, Nobukazu, et al. Establishment of grading criteria for acne severity. 
The Journal of dermatology, 2008, vol. 35, no 5, p. 255-260.
``` 
The first method is in the file ```min2012.m``` and was implemented from the paper:  

```
MIN, Seonguk, et al. Development and evaluation of an automatic acne lesion detection program 
using digital image processing. Skin Research and Technology, 2013, vol. 19, no 1, p. e423-e432.
```
The second method is in file ```Thanapa.m``` and was implemented from the paper:

```
CHANTHARAPHAICHI, Thanapha, et al. Automatic acne detection for medical treatment. 
En 2015 6th International Conference of Information and Communication Technology 
for Embedded Systems (IC-ICTES). IEEE, 2015. p. 1-6.
```

The third method is in the file ```KmeansAcneSegmentation.m``` and uses k-means for color segmentation. It was implemented from different references. 

The image example used is ```acne-face-1-10.jpg``` It is an example taken from the images examples in the dataset https://dermnetnz.org/  
The following images show the output of each method.

## Example of the output of Thanapa's method
![Image Thanapa's method](https://github.com/Dacapi91/AcneDetectionAssessment/blob/master/Thanapa_Output.png)

## Cite

David Castro Piñol. (2020, February 16). Dacapi91/AcneDetectionAssessment: AcneDetection (Version v1.1). Zenodo. http://doi.org/10.5281/zenodo.3669021

## License

MIT License

Copyright (c) 2020 David Castro Piñol

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
