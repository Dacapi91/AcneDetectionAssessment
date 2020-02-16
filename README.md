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

**Output of the method Min2012**
![Image description](https://github.com/Dacapi91/AcneDetectionAssessment/blob/master/Min2012_Output.png)

**Output of the method Thanapa**
![Image description](https://github.com/Dacapi91/AcneDetectionAssessment/blob/master/Thanapa_Output.png)

**Output of the kmeans acne segmentation**
![Image description](https://github.com/Dacapi91/AcneDetectionAssessment/blob/master/KmeansAcneSegmentation_Desired_Output.png)


## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
