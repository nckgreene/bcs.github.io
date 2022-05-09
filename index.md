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
Some approaches have used active shape models based on appearance (Azzaro et al. 2011) or contour (Weber et al., 2020).

Many approaches have used depth cameras and then, using the cows' topology, have engineered features that a processed by models (Spoliansky et al., 2016, Liao and Krukowski, 2017)

Previous image-based systems have BCS from images with external information (such as x, y. and z) or from depth images (cite). 

Deep learning has been applied to BCS prediction from depth images. Rodrı́guez Alvarez et al. (2018) performed BCS prediction by applying a convolutional neural network (CNN) to 3-channel images (a depth channel, an edge channel, and a fourier channel) where each image was a top-down view of a cow's rear. Rodrı́guez Alvarez et al. (2019) extended their previous approach by applying an ImageNet pretrained CNN and model ensembling techniques for BCS prediction from the same 3-channel images. Yukun et al. (2019) performed BCS prediction a CNN to 3-channel images (a depth channel, a gray channel, and a phase congruency (edge) channel) where each image was a top-down view of a cow's back; notably, the authors used ultrasound to measure the cows' backfat thickness, which determined the ground-truth BCS for the training and test sets.

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
Azzaro, Giuseppe, Margherita Caccamo, James D Ferguson, Sebastiano
Battiato, Giovanni Maria Farinella, Giuseppe Claudio Guarnera, Giovanni
Puglisi, Rosario Petriglieri, and Giuseppe Licitra. 2011. “Objective
Estimation of Body Condition Score by Modeling Cow Body Shape from
Digital Images.” *Journal of Dairy Science* 94 (4): 2126–37.

Dohmen, Roel, Cagatay Catal, and Qingzhi Liu. 2022. “Computer
Vision-Based Weight Estimation of Livestock: A Systematic Literature
Review.” *New Zealand Journal of Agricultural Research* 65 (2-3):
227–47.

Edmonson, AJ, IJ Lean, LD Weaver, T Farver, and G Webster. 1989. “A Body
Condition Scoring Chart for Holstein Dairy Cows.” *Journal of Dairy
Science* 72 (1): 68–78.

Fischer, Amélie, T Luginbühl, L Delattre, JM Delouard, and Philippe
Faverdin. 2015. “Rear Shape in 3 Dimensions Summarized by Principal
Component Analysis Is a Good Predictor of Body Condition Score in
Holstein Dairy Cows.” *Journal of Dairy Science* 98 (7): 4465–76.

Gjergji, Mikel, Vanessa de Moraes Weber, Luiz Otávio Campos Silva,
Rodrigo da Costa Gomes, Thiago Luı́s Alves Campos De Araújo, Hemerson
Pistori, and Marco Alvarez. 2020. “Deep Learning Techniques for Beef
Cattle Body Weight Prediction.” In *2020 International Joint Conference
on Neural Networks (IJCNN)*, 1–8. IEEE.

Liao, Bohao, and Marilyn Krukowski. 2017. “Arrangement and Method for
Determining a Body Condition Score of an Animal.” Google Patents.

Mancini, Francesco, Marco Dubbini, Mario Gattelli, Francesco Stecchi,
Stefano Fabbri, and Giovanni Gabbianelli. 2013. “Using Unmanned Aerial
Vehicles (UAV) for High-Resolution Reconstruction of Topography: The
Structure from Motion Approach on Coastal Environments.” *Remote
Sensing* 5 (12): 6880–98.

Mur-Artal, Raul, Jose Maria Martinez Montiel, and Juan D Tardos. 2015.
“ORB-SLAM: A Versatile and Accurate Monocular SLAM System.” *IEEE
Transactions on Robotics* 31 (5): 1147–63.

Pereira, Talmo D, Diego E Aldarondo, Lindsay Willmore, Mikhail Kislin,
Samuel S-H Wang, Mala Murthy, and Joshua W Shaevitz. 2019. “Fast Animal
Pose Estimation Using Deep Neural Networks.” *Nature Methods* 16 (1):
117–25.

Redmon, Joseph, Santosh Divvala, Ross Girshick, and Ali Farhadi. 2016.
“You Only Look Once: Unified, Real-Time Object Detection.” In
*Proceedings of the IEEE Conference on Computer Vision and Pattern
Recognition*, 779–88.

Rodrı́guez Alvarez, Juan, Mauricio Arroqui, Pablo Mangudo, Juan Toloza,
Daniel Jatip, Juan M Rodrı́guez, Alfredo Teyseyre, et al. 2018. “Body
Condition Estimation on Cows from Depth Images Using Convolutional
Neural Networks.” *Computers and Electronics in Agriculture* 155: 12–22.

———, et al. 2019. “Estimating Body Condition Score in Dairy Cows from
Depth Images Using Convolutional Neural Networks, Transfer Learning and
Model Ensembling Techniques.” *Agronomy* 9 (2): 90.

Schröder, U J, and R Staufenbiel. 2006. “Invited Review: Methods to
Determine Body Fat Reserves in the Dairy Cow with Special Regard to
Ultrasonographic Measurement of Backfat Thickness.” *Journal of Dairy
Science* 89 (1): 1–14.

Spoliansky, Roii, Yael Edan, Yisrael Parmet, and Ilan Halachmi. 2016.
“Development of Automatic Body Condition Scoring Using a Low-Cost
3-Dimensional Kinect Camera.” *Journal of Dairy Science* 99 (9):
7714–25.

Weber, Vanessa Aparecida Moraes, Fabricio de Lima Weber, Adair da Silva
Oliveira, Gilberto Astolfi, Geazy Vilharva Menezes, João Vitor de
Andrade Porto, Fábio Prestes Cesar Rezende, et al. 2020. “Cattle Weight
Estimation Using Active Contour Models and Regression Trees Bagging.”
*Computers and Electronics in Agriculture* 179: 105804.

Yukun, Sun, Huo Pengju, Wang Yujie, Cui Ziqi, Li Yang, Dai Baisheng, Li
Runze, and Zhang Yonggen. 2019. “Automatic Monitoring System for
Individual Dairy Cows Based on a Deep Learning Framework That Provides
Identification via Body Parts and Estimation of Body Condition Score.”
*Journal of Dairy Science* 102 (11): 10140–51.
