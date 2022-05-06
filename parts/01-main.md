## BCS Literature Review

### Body condition scoring
A body condition score (BCS) is a subjective evaluation of animal body fat based on visual or tactile features. According to [DairyNZ](https://www.dairynz.co.nz/animal/body-condition-scoring/how-to-bcs/), there are eight pertinent body features for visual condition scoring. Some of these features can be viewed from an animal's side, whereas other features can be viewed from the animal's rear. These body features are:

- Backbone (viewable from both side and rear)
- Long ribs (viewable from side)
- Short ribs (viewable from side)
- Rump (viewable from side)
- Thigh (viewable from side)
- Hip bones (viewable from rear)
- Pin bones (viewable from rear)
- Tailhead (viewable from rear)

<!-- ![](img/bcs_critical_points_1.jpg#center) -->
<!-- ![](img/bcs_critical_points_2.jpg#center) -->
<!-- ![](img/bcs_critical_points_3.jpg#center) -->
<!-- ![](img/bcs_critical_points_4.jpg#center) -->

These body features are shown in the following images from [DairyNZ](https://www.dairynz.co.nz/animal/body-condition-scoring/how-to-bcs/).

<p align="left">
  <img width="460" height="300" src="https://github.com/nckgreene/bcs.github.io/blob/master/img/bcs_critical_points_1.jpg">
  <img width="460" height="300" src="https://github.com/nckgreene/bcs.github.io/blob/master/img/bcs_critical_points_2.jpg">
</p>

<p align="left">
  <img width="460" height="300" src="https://github.com/nckgreene/bcs.github.io/blob/master/img/bcs_critical_points_3.jpg">
  <img width="460" height="300" src="https://github.com/nckgreene/bcs.github.io/blob/master/img/bcs_critical_points_4.jpg">
</p>

Although BCS is a subjective measure, experienced scorers have demonstrated high repeatability and precision between their scores (Schröder and Staufenbiel, 2006). Additionally, scores based on hooks/hips and pins have little variation between both experienced and inexperienced scorers (). In fact, scores based on only the pelvic and tailhead areas (where the hook and pins are located) are most closely related to overall condition scores (Edmonson et al., 1989).

### Current BCS prediction systems




### Depth estimation
Given that x, y, and z, depth information seems useful for BCS prediction. We could estimate depth from tthe 2D image sequences using structure from motion (SfM) as used in topography reconstruction from aerial photos (Mancini et al. 2013) and point cloud constuction of an unknown environment with monocular SLAM (Mur-Artal and Montiel, 2015). The estimated depth information could serve as another channel to be processed in conjunction with our image data. The problem with this approach is that it might violate current patents for depth camera BCS systems, so it is safer/easier to avoid explicitly calculating depth from the image sequences.


### Body weight estimation
Animal body weight prediction and BCS prediction are related problems, so successful image-based approaches for body weight estimation might also be successful when applied to BCS prediction. Gjergji et al. (2020) compared a variety of neural network models on image-based cattle body weight prediction. The authors collected video of the dorsal area of the cattle (in other words, the camera captured data from above the animals), and then trained the models on the resulting animal images. The authors reported that convolutional neural networks (CNNs) performed best. From these results, we can assume that CNN models are a more appropriate choice for BCS prediction than other neural network models (such as recurrent models). 


### Animal pose estimation


### Object detection


### 



### References
