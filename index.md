## BCS Literature Review

You can use the [editor on GitHub](https://github.com/nckgreene/bcs.github.io/edit/master/index.md) to maintain and preview the content for your website in Markdown files.

Whenever you commit to this repository, GitHub Pages will run [Jekyll](https://jekyllrb.com/) to rebuild the pages in your site, from the content in your Markdown files.


### Visual body condition scoring
According to [DairyNZ](https://www.dairynz.co.nz/animal/body-condition-scoring/how-to-bcs/#bcs), pertinent features for BCS are:

    1. blah
    2. blah
    3. blah


### Current BCS prediction systems



### Depth estimation
Given that x, y, and z, depth information seems useful for BCS prediction. We could estimate depth from tthe 2D image sequences using structure from motion (SfM) as used in topography reconstruction from aerial photos (Mancini et al. 2013) and point cloud constuction of an unknown environment with monocular SLAM (Mur-Artal and Montiel, 2015). The estimated depth information could serve as another channel to be processed in conjunction with our image data. The problem with this approach is that it might violate current patents for depth camera BCS systems, so it is safer/easier to avoid explicitly calculating depth from the image sequences.


### Body weight estimation
Animal body weight prediction and BCS prediction are related problems, so successful image-based approaches for body weight estimation might also be successful for BCS prediction. Gjergji et al. (2020) compared a variety of neural network models on image-based cattle body weight prediction. The authors collected video of the dorsal area of the cattle (in other words, the camera captured data from above the animals), and then trained the models on the resulting animal images. The authors reported that convolutional neural networks (CNNs) performed best. From these results, we can assume that CNN models are a more appropriate choice for BCS prediction than other neural network models (such as recurrent models). 


### Animal pose estimation


### Object detection


### 



### References
Dohmen, Roel, Cagatay Catal, and Qingzhi Liu. 2022. “Computer
Vision-Based Weight Estimation of Livestock: A Systematic Literature
Review.” *New Zealand Journal of Agricultural Research* 65 (2-3):
227–47.

Gjergji, Mikel, Vanessa de Moraes Weber, Luiz Otávio Campos Silva,
Rodrigo da Costa Gomes, Thiago Luı́s Alves Campos De Araújo, Hemerson
Pistori, and Marco Alvarez. 2020. “Deep Learning Techniques for Beef
Cattle Body Weight Prediction.” In *2020 International Joint Conference
on Neural Networks (IJCNN)*, 1–8. IEEE.

Liao, Bohao, and Marilyn Krukowski. 2017. “Arrangement and Method for
Determining a Body Condition Score of an Animal.” Google Patents.

Pereira, Talmo D, Diego E Aldarondo, Lindsay Willmore, Mikhail Kislin,
Samuel S-H Wang, Mala Murthy, and Joshua W Shaevitz. 2019. “Fast Animal
Pose Estimation Using Deep Neural Networks.” *Nature Methods* 16 (1):
117–25.

Redmon, Joseph, Santosh Divvala, Ross Girshick, and Ali Farhadi. 2016.
“You Only Look Once: Unified, Real-Time Object Detection.” In
*Proceedings of the IEEE Conference on Computer Vision and Pattern
Recognition*, 779–88.
