## BCS Literature Review

### Body condition scoring
A body condition score (BCS) is a subjective evaluation of animal body fat based on visual or tactile features. Although BCS is a subjective measure, experienced scorers have demonstrated high agreement between their scores (Schröder and Staufenbiel, 2006). BCS are generally evaluated on a 9-point scale (in NZ), but values from 3.0 to 6.0 are most common. One thing to consider is that a properly managed herd will not have many extreme scores, so an imbalanced data set will need to be managed (Rodrı́guez Alvarez et al., 2018). According to [DairyNZ](https://www.dairynz.co.nz/animal/body-condition-scoring/how-to-bcs/), there are eight pertinent body features for visual condition scoring. Some of these features can be viewed from an animal's side, whereas other features can be viewed from the animal's rear. These body features are:

- Backbone 
- Long ribs 
- Short ribs 
- Rump 
- Thigh 
- Hip bones 
- Pin bones 
- Tailhead 

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
Previous approaches for cattle BCS prediction can be divided into those that modeled with 2D images and those that modeled with depth images. Approaches based on 2D images include use of mixed models on the angles between anatomical points (Bewley et al., 2008), use of parabolic fitting on top-down views of cattle (Halachmi et al. 2013), and use of active shape models based on appearance (Azzaro et al. 2011) or contour (Weber et al., 2020). Approaches based on depth images include use of the animals' topology to engineer features for further processing by models (Spoliansky et al., 2016, Liao and Krukowski, 2017) and use of 3D morphological techniques to measure an animal's angularity/bonyness (Hansen et al., 2018).

Deep learning has been applied to BCS prediction from images. Li et al. (2019) applied a convolutional neural network (CNN) for BCS prediction from 2D images where each image was a top-down of a cow rear; the authors found that applying a YOLO subnetwork for discriminating areas of interest prior to classification performed better than classification from raw images. Rodrı́guez Alvarez et al. (2018) applied a CNN for BCS prediction from 3-channel images (a depth channel, an edge channel, and a fourier channel) where each image was a top-down view of a cow's rear. Rodrı́guez Alvarez et al. (2019) extended their previous approach by applying an ImageNet pretrained CNN and model ensembling techniques for BCS prediction from the same 3-channel images. Yukun et al. (2019) performed BCS prediction with a CNN to 3-channel images (a depth channel, a gray channel, and a phase congruency (edge) channel) where each image was a top-down view of a cow's back; notably, the authors used ultrasound to measure cattle backfat thickness, which determined the ground-truth BCS for the training and test sets. 

### Depth estimation
We know that depth can be useful information a BCS system given the success of previous work and that the 3D shape of cattle rear is associated with BCS (Fischer et al., 2015). The problem is that we probably cannot use depth cameras in our BCS systems since this could violate current patents (Liao and Krukowski, 2017). We could estimate depth from the 2D image sequences using structure from motion (SfM) as done in topography reconstruction from aerial photos (Mancini et al. 2013) and point cloud constuction of an unknown environment with a 2D camera (Mur-Artal and Montiel, 2015). But current patents might even make a SfM approach not an option.

### Detection of key parts in dairy cattle
Detection of keys parts of cattle may prove useful for scoring. As already mentioned, scores based on the rear of an animal are mostly closely associated with overall BCS, so we may want to identify this key part with rear object detection. Key parts could be identified with animal pose estimation (Pereira et al., 2019, Graving et al., 2019). Dairy cattle body part detection has been previously accomplised with a variation of YOLOv3 (Jiang et al., 2019). If we use a YOLO model for body part detection and we want a completely end-to-end deep learning approach for BCS prediction, it could be possible to use only a YOLO model (or some variation) given that YOLO already performs regression (Redman et al. 2016); we could include a dimension in the output tensor dedicated to BCS prediction.

### References
