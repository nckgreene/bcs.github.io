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

Deep learning has been applied to BCS prediction from images. Li et al. (2019) applied a convolutional neural network (CNN) for BCS prediction from 2D images where each image was a top-down view of a cow rear; the authors found that applying a YOLO subnetwork for discriminating areas of interest prior to classification performed better than classification from only raw images. Rodrı́guez Alvarez et al. (2018) applied a CNN for BCS prediction from 3-channel images (a depth channel, an edge channel, and a fourier channel) where each image was a top-down view of a cow's rear. Rodrı́guez Alvarez et al. (2019) extended their previous approach by applying an ImageNet pretrained CNN and model ensembling techniques for BCS prediction from the same 3-channel images. Yukun et al. (2019) performed BCS prediction with a CNN to 3-channel images (a depth channel, a gray channel, and a phase congruency (edge) channel) where each image was a top-down view of a cow's back; notably, the authors used ultrasound to measure cattle backfat thickness, which determined the ground-truth BCS for the training and test sets. 

### Depth estimation
We know that depth can be useful information a BCS system given the success of previous work. Also, the 3D shape of cattle rear is known to be associated with BCS (Fischer et al., 2015). The problem is that we probably cannot use depth cameras in our BCS systems since this could violate current patents (Liao and Krukowski, 2017). We could estimate depth from the 2D image sequences using structure from motion (SfM) as done in topography reconstruction from aerial photos (Mancini et al. 2013) and point cloud constuction of an unknown environment with a 2D camera (Mur-Artal and Montiel, 2015). But current patents might even make a SfM approach not an option.

### Detection of key parts in dairy cattle
Detection of key parts of cattle may prove useful for scoring. As already mentioned, scores based on the rear of an animal are mostly closely associated with overall BCS, so we may want to identify the rear with object detection. Key parts could be identified with animal pose estimation (Pereira et al., 2019, Graving et al., 2019). Dairy cattle body part detection has been previously accomplised with a variation of YOLOv3 (Jiang et al., 2019). If we use a YOLO model for body part detection and we want a completely end-to-end deep learning approach for BCS prediction, it could be possible to use only a YOLO model (or some variation) given that YOLO already performs regression (Redman et al. 2016); we could include a dimension in the output tensor dedicated to BCS prediction.

### References
Azzaro, Giuseppe, Margherita Caccamo, James D Ferguson, Sebastiano
Battiato, Giovanni Maria Farinella, Giuseppe Claudio Guarnera, Giovanni
Puglisi, Rosario Petriglieri, and Giuseppe Licitra. 2011. “Objective
Estimation of Body Condition Score by Modeling Cow Body Shape from
Digital Images.” *Journal of Dairy Science* 94 (4): 2126–37.

Bewley, JM, AM Peacock, O Lewis, RE Boyce, DJ Roberts, MP Coffey, SJ
Kenyon, and MM Schutz. 2008. “Potential for Estimation of Body Condition
Scores in Dairy Cattle from Digital Images.” *Journal of Dairy Science*
91 (9): 3439–53.

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

Graving, Jacob M, Daniel Chae, Hemal Naik, Liang Li, Benjamin Koger,
Blair R Costelloe, and Iain D Couzin. 2019. “DeepPoseKit, a Software
Toolkit for Fast and Robust Animal Pose Estimation Using Deep Learning.”
*Elife* 8: e47994.

Halachmi, I, M Klopčič, P Polak, DJ Roberts, and JM Bewley. 2013.
“Automatic Assessment of Dairy Cattle Body Condition Score Using Thermal
Imaging.” *Computers and Electronics in Agriculture* 99: 35–40.

Hansen, Mark F, Melvyn L Smith, Lyndon N Smith, K Abdul Jabbar, and
Duncan Forbes. 2018. “Automated Monitoring of Dairy Cow Body Condition,
Mobility and Weight Using a Single 3d Video Capture Device.” *Computers
in Industry* 98: 14–22.

Jiang, Bo, Qian Wu, Xuqiang Yin, Dihua Wu, Huaibo Song, and Dongjian He.
2019. “FLYOLOv3 Deep Learning for Key Parts of Dairy Cow Body
Detection.” *Computers and Electronics in Agriculture* 166: 104982.

Li, Xinru, Zelin Hu, Xiaoping Huang, Tao Feng, Xuanjiang Yang, and Miao
Li. 2019. “Cow Body Condition Score Estimation with Convolutional Neural
Networks.” In *2019 IEEE 4th International Conference on Image, Vision
and Computing (ICIVC)*, 433–37. IEEE.

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
Daniel Jatip, Juan M Rodriguez, Alfredo Teyseyre, et al. 2019.
“Estimating Body Condition Score in Dairy Cows from Depth Images Using
Convolutional Neural Networks, Transfer Learning and Model Ensembling
Techniques.” *Agronomy* 9 (2): 90.

Rodrı́guez Alvarez, Juan, Mauricio Arroqui, Pablo Mangudo, Juan Toloza,
Daniel Jatip, Juan M Rodrı́guez, Alfredo Teyseyre, et al. 2018. “Body
Condition Estimation on Cows from Depth Images Using Convolutional
Neural Networks.” *Computers and Electronics in Agriculture* 155: 12–22.

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
