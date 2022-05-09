## BCS Literature Review

### Body condition scoring
A body condition score (BCS) is a subjective evaluation of animal body fat based on visual or tactile features. Although BCS is a subjective measure, experienced scorers have demonstrated high agreement between their scores (Schröder and Staufenbiel, 2006). BCS are generally evaluated on a 9-point scale (in NZ), but values from 3.0 to 6.0 are most common. One thing to consider is that a properly managed herd will not have many extreme scores, so an imbalanced data set with need to be managed (Alvarez et al., 2018). According to [DairyNZ](https://www.dairynz.co.nz/animal/body-condition-scoring/how-to-bcs/), there are eight pertinent body features for visual condition scoring. Some of these features can be viewed from an animal's side, whereas other features can be viewed from the animal's rear. These body features are:

- Backbone (viewable from both side and rear)
- Long ribs (viewable from side)
- Short ribs (viewable from side)
- Rump (viewable from side)
- Thigh (viewable from side)
- Hip bones (viewable from rear)
- Pin bones (viewable from rear)
- Tailhead (viewable from rear)

These features are integrated by a scorer into an overall BCS. Scores based on only the pelvic and tailhead areas (the hips and pins) are most closely related to overall condition scores (Edmonson et al., 1989), so accurate video capture of an animal's posterior may prove to necessary for good scoring.

The body features used in visual condition scoring are shown in the following images from [DairyNZ](https://www.dairynz.co.nz/animal/body-condition-scoring/how-to-bcs/).

<p align="left">
  <img width="460" height="300" src="https://github.com/nckgreene/bcs.github.io/blob/master/img/bcs_critical_points_1.jpg">
  <img width="460" height="300" src="https://github.com/nckgreene/bcs.github.io/blob/master/img/bcs_critical_points_2.jpg">
</p>

<p align="left">
  <img width="460" height="300" src="https://github.com/nckgreene/bcs.github.io/blob/master/img/bcs_critical_points_3.jpg">
  <img width="460" height="300" src="https://github.com/nckgreene/bcs.github.io/blob/master/img/bcs_critical_points_4.jpg">
</p>


### BCS prediction from images
Previous image-based systems have BCS from images with external information (such as x, y. and z) or from depth images (cite). 


### Depth estimation
We know that depth can be useful information a BCS system given the success of previous work and that the 3D shape of cattle rear is associated with BCS (Fischer et al., 2015). The problem is that we probably cannot use depth cameras in our BCS systems since this could violate current patents (Liao and Krukowski, 2017). We could estimate depth from the 2D image sequences using structure from motion (SfM) as done in topography reconstruction from aerial photos (Mancini et al. 2013) and point cloud constuction of an unknown environment with a 2D camera (Mur-Artal and Montiel, 2015). But current patents might even make a SfM approach not an option.


### Body weight estimation
Animal body weight prediction and BCS prediction are related problems, so successful image-based approaches for body weight estimation might also be successful when applied to BCS prediction. Gjergji et al. (2020) compared a variety of neural network models on image-based cattle body weight prediction. The authors collected video of the dorsal area of the cattle (in other words, the camera captured data from above the animals), and then trained the models on the resulting animal images. The authors reported that convolutional neural networks (CNNs) performed best. From these results, we can assume that CNN models are a more appropriate choice for BCS prediction than other neural network models (such as recurrent models). 

### BCS estimation with CNNs
Some previous work has applied convolutional neural networks (CNN) models to estimate dairy cow BCS from multiple image channels. For example ..., the 


### Animal pose estimation


### Detection of key parts in dairy cows
Detection of keys parts of cows may prove useful for scoring. As already mentioned, scores based on the rear of an animal are mostly closely associated with overall BCS, so we may want to identify this key part with rear object detection. Dairy cow body part detection has been previously accomplised with a variation of YOLOv3 (Jiang et al., 2019).

### 



### References
