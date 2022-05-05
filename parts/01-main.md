## BCS Literature Review

### Body condition scoring
According to [DairyNZ](https://www.dairynz.co.nz/animal/body-condition-scoring/how-to-bcs/#bcs), there are eight pertinent body features for condition scoring. Four of these features can be viewed from an animal's posterior, and they are:
- blah
- blah
- blah
- blah

The other four features are viewable from an animal's side, and they are:
- blah
- blah
- blah
- blah

![](img/bcs_critical_points_1.jpg, "Side view of an animal.")
![](img/bcs_critical_points_2.jpg, "Posterior view of an animal.")
![](img/bcs_critical_points_3.jpg, "BCS from backbone, ribs, and hips.")
![](img/bcs_critical_points_4.jpg, "BCS from pins, tail, rump, and thigh")

### Current BCS prediction systems



### Depth estimation
Given that x, y, and z, depth information seems useful for BCS prediction. We could estimate depth from tthe 2D image sequences using structure from motion (SfM) as used in topography reconstruction from aerial photos (Mancini et al. 2013) and point cloud constuction of an unknown environment with monocular SLAM (Mur-Artal and Montiel, 2015). The estimated depth information could serve as another channel to be processed in conjunction with our image data. The problem with this approach is that it might violate current patents for depth camera BCS systems, so it is safer/easier to avoid explicitly calculating depth from the image sequences.


### Body weight estimation
Animal body weight prediction and BCS prediction are related problems, so successful image-based approaches for body weight estimation might also be successful for BCS prediction. Gjergji et al. (2020) compared a variety of neural network models on image-based cattle body weight prediction. The authors collected video of the dorsal area of the cattle (in other words, the camera captured data from above the animals), and then trained the models on the resulting animal images. The authors reported that convolutional neural networks (CNNs) performed best. From these results, we can assume that CNN models are a more appropriate choice for BCS prediction than other neural network models (such as recurrent models). 


### Animal pose estimation


### Object detection


### 



### References
