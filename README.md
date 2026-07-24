# papers
Papers, reproducible artifacts, and references to experiments.

[简体中文](README.zh-CN.md)

## Core Reading: AI/CV Foundations & Geo-Grounded 3D Vision-Language Reasoning

These 20 papers form two complementary reading paths of ten papers each for **Geo-grounded 3D Vision-Language Reasoning under Incomplete and Changing Observations**. This is a function-based core, not a ranking by citations or a single leaderboard. The first path builds a shared language for visual and language foundation models. The second covers cross-view geometry, 3D representations, dynamic updates, language grounding, semantic maps, and geographic localization. Together, they frame a CV problem: how can a system construct queryable, reasoned, and actionable georegistered spatial representations from incomplete, changing, and cross-view observations?

### Purpose

The goal is not to leave GeoAI for generic computer vision detached from geographic and public problems. Instead, disaster settings serve as rigorous real-world stress tests for reliable spatial intelligence. Reading, reproducing, and combining these papers should support a doctoral signature work: a georegistered 3D spatial representation from ground, drone, and satellite observations that can update over time, answer language queries, identify evidence and uncertainty, and recommend the next observation or action.

### Ten AI/CV Foundations

1. **[1998 Proceedings of the IEEE] Gradient-Based Learning Applied to Document Recognition**  
   Yann LeCun, Léon Bottou, Yoshua Bengio, Patrick Haffner  
   [[paper]](https://ieeexplore.ieee.org/document/726791)  
   *Why it matters:* It establishes convolution, local receptive fields, and end-to-end feature learning, which are the starting point for understanding CNN visual representations.  
   *Keywords:* CNN, Convolution, Pooling, End-to-End Learning

2. **[2012 NeurIPS] ImageNet Classification with Deep Convolutional Neural Networks**  
   Alex Krizhevsky, Ilya Sutskever, Geoffrey E. Hinton  
   [[paper]](https://proceedings.neurips.cc/paper_files/paper/2012/hash/c399862d3b9d6b76c8436e924a68c45b-Abstract.html)  
   *Why it matters:* AlexNet showed that large-scale data, GPU training, and deep CNNs can substantially change general visual capability.  
   *Keywords:* AlexNet, ImageNet, Deep Learning, GPU Training

3. **[2016 CVPR] Deep Residual Learning for Image Recognition**  
   Kaiming He, Xiangyu Zhang, Shaoqing Ren, Jian Sun  
   [[paper]](https://openaccess.thecvf.com/content_cvpr_2016/html/He_Deep_Residual_Learning_CVPR_2016_paper.html)  
   *Why it matters:* Residual connections made high-capacity visual backbones stable to scale and remain a shared basis for detection, segmentation, and multimodal encoders.  
   *Keywords:* ResNet, Residual Learning, Deep Networks, Visual Backbone

4. **[2017 NeurIPS] Attention Is All You Need**  
   Ashish Vaswani, Noam Shazeer, Niki Parmar, *et al.*  
   [[paper]](https://arxiv.org/abs/1706.03762)  
   *Why it matters:* The Transformer made global relation modeling, cross-modal alignment, and large-scale pre-training a unified architectural choice.  
   *Keywords:* Transformer, Self-Attention, Sequence Modeling, Scaling

5. **[2019 NAACL] BERT: Pre-training of Deep Bidirectional Transformers for Language Understanding**  
   Jacob Devlin, Ming-Wei Chang, Kenton Lee, Kristina Toutanova  
   [[paper]](https://aclanthology.org/N19-1423/)  
   *Why it matters:* BERT showed that pre-trained language representations transfer across understanding tasks, providing a basis for verbalized spatial relations and question answering.  
   *Keywords:* BERT, Language Pre-training, Transfer Learning, Language Understanding

6. **[2020 NeurIPS] Language Models are Few-Shot Learners**  
   Tom B. Brown, Benjamin Mann, Nick Ryder, *et al.*  
   [[paper]](https://proceedings.neurips.cc/paper_files/paper/2020/hash/1457c0d6bfcb4967418bfb8ac142f64a-Abstract.html)  
   *Why it matters:* It demonstrates in-context learning in scaled language models, a key reference for a reasoning layer that moves from spatial descriptions to task planning.  
   *Keywords:* GPT-3, Large Language Models, In-Context Learning, Scaling

7. **[2021 ICLR] An Image is Worth 16x16 Words: Transformers for Image Recognition at Scale**  
   Alexey Dosovitskiy, Lucas Beyer, Alexander Kolesnikov, *et al.*  
   [[paper]](https://arxiv.org/abs/2010.11929)  
   *Why it matters:* ViT brought Transformers into visual backbones and opened a route for visual, language, and 3D tokens to interact in a shared representation space.  
   *Keywords:* Vision Transformer, ViT, Visual Tokens, Image Recognition

8. **[2021 ICML] Learning Transferable Visual Models From Natural Language Supervision**  
   Alec Radford, Jong Wook Kim, Chris Hallacy, *et al.*  
   [[paper]](https://arxiv.org/abs/2103.00020)  
   *Why it matters:* CLIP aligns open-vocabulary language with visual representations, a starting point for grounding damage, passability, and object relations in observations.  
   *Keywords:* CLIP, Vision-Language Models, Contrastive Learning, Open Vocabulary

9. **[2023 arXiv] DINOv2: Learning Robust Visual Features without Supervision**  
   Maxime Oquab, Timothée Darcet, Théo Moutakanni, *et al.*  
   [[paper]](https://arxiv.org/abs/2304.07193)  
   *Why it matters:* It shows that self-supervised visual features can transfer to image- and pixel-level tasks without task labels, which suits data-scarce, multi-sensor disaster settings.  
   *Keywords:* DINOv2, Self-Supervised Learning, Visual Foundation Models, Dense Features

10. **[2023 ICCV] Segment Anything**  
    Alexander Kirillov, Eric Mintun, Nikhila Ravi, *et al.*  
    [[paper]](https://arxiv.org/abs/2304.02643)  
    *Why it matters:* SAM turns promptable open-set segmentation into a reusable component for cross-view object boundaries, changed areas, and human verification.  
    *Keywords:* SAM, Promptable Segmentation, Foundation Models, Object Masks

### Ten Spatial Intelligence Papers for the Research Direction

1. **[2004 IJCV] Distinctive Image Features from Scale-Invariant Keypoints**  
   David G. Lowe  
   [[paper]](https://link.springer.com/article/10.1023/B:VISI.0000029664.99615.94)  
   *Why it matters:* SIFT establishes the geometric basis of cross-view local matching. Even when using learned features, it explains how to obtain verifiable correspondences under scale, rotation, and occlusion.  
   *Keywords:* SIFT, Local Features, Image Matching, Geometric Verification

2. **[2016 CVPR] Structure-from-Motion Revisited**  
   Johannes L. Schönberger, Jan-Michael Frahm  
   [[paper]](https://openaccess.thecvf.com/content_cvpr_2016/html/Schonberger_Structure-From-Motion_Revisited_CVPR_2016_paper.html)  
   *Why it matters:* COLMAP provides a reliable baseline for recovering camera poses and sparse 3D structure from multi-view imagery, the starting point for placing ground, drone, and satellite observations in a common coordinate system.  
   *Keywords:* COLMAP, Structure from Motion, Camera Pose, 3D Reconstruction

3. **[2020 ECCV] NeRF: Representing Scenes as Neural Radiance Fields for View Synthesis**  
   Ben Mildenhall, Pratul P. Srinivasan, Matthew Tancik, *et al.*  
   [[paper]](https://arxiv.org/abs/2003.08934)  
   *Why it matters:* NeRF encodes multi-view observations as a continuous 3D radiance field, shifting the research paradigm from geometric models to learned scene representations.  
   *Keywords:* NeRF, Neural Fields, Novel View Synthesis, Multi-View Geometry

4. **[2023 ACM TOG] 3D Gaussian Splatting for Real-Time Radiance Field Rendering**  
   Bernhard Kerbl, Georgios Kopanas, Thomas Leimkühler, George Drettakis  
   [[paper]](https://repo-sam.inria.fr/fungraph/3d-gaussian-splatting/)  
   *Why it matters:* 3D Gaussian Splatting makes high-fidelity 3D reconstruction renderable in real time, offering an engineering-ready scene representation for interactive maps and online observation loops.  
   *Keywords:* 3D Gaussian Splatting, Real-Time Rendering, Scene Representation, Digital Twins

5. **[2024 CVPR] 4D Gaussian Splatting for Real-Time Dynamic Scene Rendering**  
   Guanjun Wu, Taoran Yi, Jiemin Fang, *et al.*  
   [[paper]](https://arxiv.org/abs/2310.08528)  
   *Why it matters:* It extends 3D representations to time-varying 4D scenes and provides a direct technical starting point for distinguishing real change, occlusion, and evidence from new observations.  
   *Keywords:* 4D Gaussian Splatting, Dynamic Scenes, Temporal Modeling, Scene Updates

6. **[2023 ICCV] LERF: Language Embedded Radiance Fields**  
   Justin Kerr, Chung Min Kim, Ken Goldberg, Angjoo Kanazawa, Matthew Tancik  
   [[paper]](https://arxiv.org/abs/2303.09553)  
   *Why it matters:* LERF embeds open-vocabulary language features in 3D radiance fields, turning “which object or region in space does language refer to?” into an operational 3D grounding problem.  
   *Keywords:* LERF, Language Grounding, Radiance Fields, Open-Vocabulary 3D

7. **[2023 RSS] ConceptFusion: Open-set Multimodal 3D Mapping**  
   Krishna Murthy Jatavallabhula, Alihusein Kuwajerwala, Qiao Gu, *et al.*  
   [[paper]](https://arxiv.org/abs/2302.07241)  
   *Why it matters:* It fuses vision-language features into dense 3D maps, directly addressing the accumulation of semantic evidence across observations rather than processing one image at a time.  
   *Keywords:* ConceptFusion, Open-Set Mapping, Multimodal 3D, Semantic Maps

8. **[2023 CVPR] OpenScene: 3D Scene Understanding with Open Vocabularies**  
   Songyou Peng, Kyle Genova, Chiyu "Max" Jiang, *et al.*  
   [[paper]](https://arxiv.org/abs/2211.15654)  
   *Why it matters:* OpenScene evaluates how language supervision transfers to 3D point-cloud semantics, providing a needed evaluation perspective for long-tail disaster objects and open-world categories.  
   *Keywords:* OpenScene, Open-Vocabulary 3D, Point Clouds, Vision-Language Models

9. **[2023 ICRA] Visual Language Maps for Robot Navigation**  
   Chenguang Huang, Oier Mees, Andy Zeng, Wolfram Burgard  
   [[paper]](https://arxiv.org/abs/2210.05714)  
   *Why it matters:* It turns language features into a queryable, plannable map rather than a one-off recognition output, connecting spatial semantics to the next action.  
   *Keywords:* VLMaps, Visual Language Maps, Embodied Navigation, Spatial Queries

10. **[2025 ICCV] Where am I? Cross-View Geo-localization with Natural Language Descriptions**  
    Junyan Ye, Honglin Lin, Leyan Ou, *et al.*  
    [[paper]](https://openaccess.thecvf.com/content/ICCV2025/html/Ye_Where_am_I_Cross-View_Geo-localization_with_Natural_Language_Descriptions_ICCV_2025_paper.html)  
    *Why it matters:* It directly combines ground-to-satellite cross-view matching with natural-language descriptions, a key bridge from 3D language grounding to a georegistered real world.  
    *Keywords:* Cross-View Geo-localization, Natural Language, Vision-Language Models, Ground-to-Aerial Alignment

## Science of AI-Driven Science (Science of AI4Science)

1. **[2026 Nature] Artificial intelligence tools expand scientists’ impact but contract science’s focus**  
   Qianyue Hao, Fengli Xu, Yong Li, James A. Evans  
   [[paper]](https://www.nature.com/articles/s41586-025-09922-y)  
   *Keywords:* AI for Science, Science of Science, Research Productivity, Topic Convergence, Scientific Diversity

## Foundation Models for GeoAI & Earth Science

1. **[2025 arXiv] Earth AI: Unlocking Geospatial Insights with Foundation Models and Cross-Modal Reasoning**  
   [[paper]](https://arxiv.org/abs/2510.18318)  
   *Keywords:* GeoAI, Foundation Models, Cross-Modal Reasoning, Earth Observation, Spatial Intelligence

2. **[2025 arXiv] LSDTs: LLM-Augmented Semantic Digital Twins for Adaptive Knowledge-Intensive Infrastructure Planning**  
   [[paper]](https://arxiv.org/abs/2508.06799)  
   *Keywords:* Semantic Digital Twins, Large Language Models, Knowledge Extraction, Infrastructure Planning, Regulation-Aware Optimization

3. **[2025 arXiv] BuildingWorld: A Structured 3D Building Dataset for Urban Foundation Models**  
   [[paper]](https://arxiv.org/abs/2511.06337)  
   *Keywords:* 3D Urban Modeling, Structured Building Dataset, Urban Foundation Models, LiDAR Point Clouds, Building Reconstruction, Urban AI

4. **[2026 arXiv] Digital Twin AI: Opportunities and Challenges from Large Language Models to World Models**  
   Rong Zhou, Dongping Chen, Zihan Jia, Yao Su, Yixin Liu, *et al.*  
   [[paper]](https://arxiv.org/abs/2601.01321)  
   *Keywords:* Digital Twins, World Models, Large Language Models, AI Systems, Physical–Virtual Interaction, Simulation, Decision-Making

5. **[2026 Communications Earth & Environment] On the foundations of Earth foundation models**  
   Xiao Xiang Zhu, Zhitong Xiong, Yi Wang, Adam J. Stewart, Konrad Heidler, Yuanyuan Wang, Zhenghang Yuan, Thomas Dujardin, Qingsong Xu, Yilei Shi  
   [[paper]](https://www.nature.com/articles/s43247-025-03127-x)  
   *Keywords:* Earth Foundation Models, Geoscience AI, Environmental Modeling, Model Evaluation, Interpretability, Energy Efficiency, Adversarial Robustness
   
6. **[2025 arXiv] AlphaEarth Foundations: An embedding field model for accurate and efficient global mapping from sparse label data**  
   [[paper]](https://arxiv.org/abs/2507.22291)  
   *Keywords:* Earth Foundation Models, Embedding Fields, Global Mapping, Remote Sensing, Sparse Labels, Geospatial Representation Learning  

7. **[2026 arXiv] Any Model, Any Place, Any Time: Get Remote Sensing Foundation Model Embeddings On Demand**  
   Dingqi Ye, Daniel Kiv, Wei Hu, Jimeng Shi, Shaowen Wang  
   [[paper]](https://arxiv.org/abs/2602.23678)  
   *Keywords:* Remote Sensing Foundation Models, Embeddings, Geospatial Representation Learning, ROI-based Retrieval, Earth Observation, Large-Scale Geospatial Analysis

8. **[2025 eartharXiv] Earth Embeddings: Towards AI-centric Representations of our Planet**  
   Konstantin Klemmer, Esther Rolf, Marc Russwurm, Gustau Camps-Valls, Mikolaj Czerkawski, Stefano Ermon, Alistair Francis, Nathan Jacobs, Hannah Rae Kerner, Lester Mackey, Gengchen Mai, Oisin Mac Aodha, Markus Reichstein, Caleb Robinson, David Rolnick, Evan Shelhamer, Vincent Sitzmann, Devis Tuia, Xiaoxiang Zhu  
   [[paper]](https://eartharxiv.org/repository/view/11083/)  
   *Keywords:* Earth embeddings, Artificial Intelligence, Geospatial Foundation Model, AI for Earth

9. **[2026 arXiv] No One Knows the State of the Art in Geospatial Foundation Models**  
   Isaac Corley, Nils Lehmann, Caleb Robinson, Gabriel Tseng, Anthony Fuller, Hamed Alemohammad, Evan Shelhamer, Jennifer Marcus, Hannah Kerner  
   [[paper]](https://arxiv.org/abs/2605.12678)  
   *Keywords:* Geospatial Foundation Models, Benchmarking, Reproducibility, Evaluation Protocols, Model Release, Community Standards

10. **[2026 Remote Sensing of Environment] Generating an annual 30 m rice cover product for monsoon Asia (2018–2023) using harmonized Landsat and Sentinel-2 data and the NASA-IBM geospatial foundation model**  
   Husheng Fang, Shunlin Liang, Wenyuan Li, Yongzhe Chen, Han Ma, Jianglei Xu, Yichuan Ma, Tao He, Feng Tian, Fengjiao Zhang, Hui Liang  
   [[paper]](https://doi.org/10.1016/j.rse.2026.115256)  
   *Keywords:* Rice mapping, Geospatial foundation model, Harmonized Landsat and Sentinel-2, Remote sensing, Monsoon Asia

11. **[2026 International Journal of Applied Earth Observation and Geoinformation] Harvesting AlphaEarth: Benchmarking the geospatial foundation model for agricultural downstream tasks**  
   Yuchi Ma, Yawen Shen, Anu Swatantran, David B. Lobell  
   [[paper]](https://doi.org/10.1016/j.jag.2026.105258)  
   *Keywords:* AlphaEarth, Geospatial Foundation Model, Agricultural Monitoring, Crop Yield Prediction, Tillage Mapping, Cover Crop Mapping, Earth Observation Benchmarking

## GIScience, Autonomous GIS & Intelligent Geosystems

1. **[2025 Annals of GIS] GIScience in the Era of Artificial Intelligence: A Research Agenda Towards Autonomous GIS**  
   [[paper]](https://www.tandfonline.com/doi/full/10.1080/19475683.2025.2552161)  
   *Keywords:* Autonomous GIS, GIScience, Large Language Models, Agentic AI, Intelligent Geosystems, Spatial Analysis

2. **[2026 Big Earth Data] GeoJSON agents: a multi-agent LLM architecture for geospatial analysis—function calling vs. code generation**  
   Qianglian Luo, Qingming Lin, Liuchang Xu, Sensen Wu, Ruichen Mao, Chao Wang, *et al.*  
   [[paper]](https://www.tandfonline.com/doi/full/10.1080/20964471.2026.2615511)  
   *Keywords:* Multi-Agent LLM, GeoJSON, Function Calling, Code Generation, Geospatial Analysis, Autonomous GIS, Tool-Augmented LLMs

3. **[2024 Information Processing & Management] BB-GeoGPT: A Framework for Learning a Large Language Model for Geographic Information Science**  
   Yifan Zhang, Zhiyun Wang, Zhengting He, Jingxuan Li, Gengchen Mai, Jiangfeng Lin, Cheng Wei, Wenhao Yu  
   [[paper]](https://doi.org/10.1016/j.ipm.2024.103808)  
   *Keywords:* GIS-Specific LLM, Geographic Knowledge Modeling, Domain Adaptation, Geospatial Benchmark, Large Language Models, Autonomous GIS

4. **[2026 arXiv] GeoVisA11y: An AI-based Geovisualization Question-Answering System for Screen-Reader Users** 
   Chu Li, Rock Yuren Pang, Arnavi Chheda-Kothary, Ather Sharif, Henok Assalif, Jeffrey Heer, Jon E. Froehlich  
   [[paper]](https://arxiv.org/abs/2603.07446)  
   *Keywords:* Geovisualization, Accessibility, Screen-Reader, Question-Answering, AI-based GIS, Human-Computer Interaction

5. **[2026 arXiv] OpenEarthAgent: A Unified Framework for Tool-Augmented Geospatial Agents**  
   Akashah Shabbir, Muhammad Umer Sheikh, Muhammad Akhtar Munir, Hiyam Debary, Mustansar Fiaz, Muhammad Zaigham Zaheer, Paolo Fraccaro, Fahad Shahbaz Khan, Muhammad Haris Khan, Xiao Xiang Zhu, Salman Khan  
   [[paper]](https://arxiv.org/abs/2602.17665)  
   *Keywords:* Geospatial Agents, Tool-Augmented LLMs, Autonomous GIS, GIS Reasoning, Multi-Agent Systems, Spatial Intelligence

6. **[2026 arXiv] Spatial-Agent: Agentic Geo-spatial Reasoning with Scientific Core Concepts**<br>
   Riyang Bao, Cheng Yang, Dazhou Yu, Zhexiang Tang, Gengchen Mai, Liang Zhao<br>
   [[paper]](https://arxiv.org/abs/2601.16965)<br>
   *Keywords:* Agentic Geospatial Reasoning, Spatial Information Science, GeoFlow Graphs, Geospatial Agents, Concept Transformation, MapQA, MapEval-API

7. **[2026 arXiv] NORA: A Harness-Engineered Autonomous Research Agent for End-to-End Spatial Data Science**<br>
   Bing Zhou, Xiao Huang, Huan Ning, Qiusheng Wu, Diya Li, Ziyi Zhang<br>
   [[paper]](https://arxiv.org/abs/2605.02092)<br>
   *Keywords:* Autonomous Research Agents, Spatial Data Science, Harness Engineering, GIScience, Multi-Agent Systems, Scientific Workflow Automation

8. **[2025 Annals of GIS] Neural representation of geoinformation in the human brain: affected by abstraction levels and spatial scales**<br>
   Tianyu Yang, Bo Zhao, Song Gao, Weihua Dong<br>
   [[paper]](https://doi.org/10.1080/19475683.2025.2487979)<br>
   *Keywords:* Geoinformation, Spatial Cognition, Abstraction Level, Spatial Scale, Functional Magnetic Resonance Imaging, Cartographic Design

## Cross-View Image Synthesis & World-Ground Alignment

1. **[2024 arXiv] Leveraging BEV Paradigm for Ground-to-Aerial Image Synthesis**  
   Junyan Ye, Jun He, **Weijia Li**, *et al.*  
   [[paper]](https://arxiv.org/abs/2408.01812)  
   *Keywords:* Ground-to-Aerial Synthesis, Cross-View Generation, Bird’s-Eye View (BEV), Diffusion Models, Street-to-Satellite

2. **[2025 Computers, Environment and Urban Systems] Generative AI for Urban Planning: Synthesizing Satellite Imagery via Diffusion Models**  
   Qingyi Wang, Yuebing Liang, Yunhan Zheng, Kaiyun Xu, Jinhua Zhao, Shenhao Wang  
   [[paper]](https://doi.org/10.1016/j.compenvurbsys.2025.102339)  
   *Keywords:* Generative GeoAI, Diffusion Models, Satellite Image Synthesis, Urban Planning, OpenStreetMap Alignment, Text-Conditioned Layout Generation

3. **[2025 arXiv] From Orbit to Ground: Generative City Photogrammetry from Extreme Off-Nadir Satellite Images**  
   Fei Yu, Yu Liu, Luyang Tang, Mingchao Sun, Zengye Ge, Rui Bu, Yuchao Jin, Haisen Zhao, He Sun, Yangyang Li, Mu Xu, Wenzheng Chen, Baoquan Chen  
   [[paper]](https://arxiv.org/abs/2512.07527)  
   *Keywords:* Generative Photogrammetry, Extreme Off-Nadir Imagery, 3D City Reconstruction, Cross-View Geometry, Viewpoint Extrapolation, Urban 3D Modeling

4. **[2026 arXiv] Cross-View Splatter: Feed-Forward View Synthesis with Georeferenced Images**  
   Matias Turkulainen, Akshay Krishnan, Filippo Aleotti, Mohamed Sayed, Guillermo Garcia-Hernando, Juho Kannala, Arno Solin, Gabriel Brostow, Daniyar Turmukhambetov  
   [[paper]](https://arxiv.org/abs/2605.19656)  
   *Keywords:* Cross-View Synthesis, Satellite-Ground Fusion, Gaussian Splatting, Feed-Forward Novel-View Synthesis, Georeferenced Imagery, 3D Reconstruction, World-Ground Alignment

## Spatial Reasoning, Geolocalization & Map-Based Agents

1. **[2026 arXiv] Thinking with Map: Reinforced Parallel Map-Augmented Agent for Geolocalization**  
   [[paper]](https://arxiv.org/abs/2601.05432)  
   *Keywords:* Geolocalization, Map-Augmented Agents, Vision-Language Models, Reinforcement Learning, Spatial Reasoning

2. **[2026 IJGIS] Georeferencing Complex Relative Locality Descriptions with Large Language Models**  
   [[paper]](https://doi.org/10.1080/13658816.2026.2613291)  
   *Keywords:* Georeferencing, Relative Locality Descriptions, Large Language Models, Spatial Relations, Text-to-Location

3. **[2024 Applied Sciences] GeoLocator: A Location-Integrated Large Multimodal Model (LMM) for Inferring Geo-Privacy**  
   [[paper]](https://doi.org/10.3390/app14167091)  
   *Keywords:* Geolocalization, Multimodal Models, Geo-Privacy, Location Inference, Vision–Language Models

4. **[2025 arXiv] FRIEDA: Benchmarking Multi-Step Cartographic Reasoning in Vision–Language Models**  
   Jiyoon Pyo, Yuankun Jiao, Dongwon Jung, Zekun Li, Leeja Jang, Sofia Kirsanova, Jina Kim, Yijun Lin, Qin Liu, Junyi Xie, Hadi Askari, Nan Xu, Muhao Chen, Yao-Yi Chiang  
   [[paper]](https://arxiv.org/abs/2512.08016)  
   *Keywords:* Cartographic Reasoning, Spatial Reasoning, Vision–Language Models, Map Understanding, Multi-Step Reasoning, GIS

5. **[2025 ICCV] Where am I? Cross-View Geo-localization with Natural Language Descriptions**  
   Junyan Ye, Honglin Lin, Leyan Ou, Dairong Chen, Zihao Wang, Qi Zhu, Conghui He, Weijia Li  
   [[paper]](https://openaccess.thecvf.com/content/ICCV2025/html/Ye_Where_am_I_Cross-View_Geo-localization_with_Natural_Language_Descriptions_ICCV_2025_paper.html)  
   *Keywords:* Cross-View Geo-localization, Natural Language Descriptions, Vision–Language Models, Text-Guided Retrieval, Street-to-Satellite Matching

6. **[2026 ICLR] UrbanFeel: A Comprehensive Benchmark for Temporal and Perceptual Understanding of City Scenes through Human Perspective**  
   ICLR 2026 Conference Submission  
   [[paper]](https://openreview.net/forum?id=OtLC2JNGZf)  
   *Keywords:* Urban Benchmark, Human-Centered Urban Perception, Temporal Understanding, Multimodal Large Language Models, Street-View Reasoning

7. **[2026 Artificial Intelligence Review] Geospatial reasoning and awareness in large language models: a systematic review**  
   Gabriel Ionut Dorobantu, Ana Cornelia Badea  
   [[paper]](https://link.springer.com/article/10.1007/s10462-026-11512-x)  
   *Keywords:* Geospatial Reasoning, Spatial Awareness, Large Language Models, Geographic Knowledge, Systematic Review, LLM Evaluation

8. **[2026 WACV] Towards Unconstrained Cross-View Pose Estimation** Alexander Wollam, Kyle Ashley, Maxim Shugaev, Oliver Arend, Ilya Semenov, Hadis Dashtestani, Sumved Ravi, Nathan Jacobs  
   [[paper]](https://atwollam.github.io/TUCVPE/)  
   *Keywords:* Cross-View Pose Estimation, 3DoF Pose, Ground-to-Aerial Alignment, Transformers, Unconstrained Imagery, VIGOR Benchmark
   
## Urban Dynamics, Human Mobility & Remote Sensing

1. **[2025 Nature Communications] Predicting human mobility flows in cities using deep learning on satellite imagery**  
   Yichen Xu, Song Gao, Qunying Huang, Aslıgül Göçmen, Qiang Zhu, Feng Zhang  
   [[paper]](https://www.nature.com/articles/s41467-025-65373-z)  
   *Keywords:* Human Mobility Prediction, Satellite Imagery, Deep Learning, Urban Dynamics, Spatial Interaction Modeling, Remote Sensing, GeoAI

## Energy, Social Media & Public Perception

1. **[2019 Energy Research & Social Science] Beyond big data: Social media challenges and opportunities for understanding social perception of energy**<br>
   Ruopu Li, Jessica Crowe, David Leifer, Lei Zou, Justin Schoof<br>
   [[paper]](https://doi.org/10.1016/j.erss.2019.101217)<br>
   *Keywords:* Energy Social Science, Social Media Analytics, Public Perception, Energy Policy, Public Advocacy, Sentiment Analysis

## Flood Risk, Social Vulnerability & Disaster Risk Mapping

1. **[2024 Nature Communications] Integrating social vulnerability into high-resolution global flood risk mapping**<br>
   Sean Fox, Felix Agyemang, Laurence Hawker, Jeffrey Neal<br>
   [[paper]](https://www.nature.com/articles/s41467-024-47394-2)<br>
   *Keywords:* Flood Risk Mapping, Social Vulnerability, Vulnerability-Adjusted Risk Index, Fluvial Flooding, Global Risk Assessment, Population Exposure, Disaster Risk Reduction

## Remote Sensing Super-Resolution & Downstream Evaluation

1. **[2026 arXiv] Beyond Visual Fidelity: Benchmarking Super-Resolution Models for Large-Scale Remote Sensing Imagery via Downstream Task Integration**  
   Zhili Li, Kangyang Chai, Zhihao Wang, Xiaowei Jia, Yanhua Li, Gengchen Mai, Sergii Skakun, Dinesh Manocha, Yiqun Xie  
   [[paper]](https://arxiv.org/abs/2605.00310)  
   *Keywords:* Remote Sensing Super-Resolution, Benchmarking, Downstream Evaluation, Earth Observation, Land Cover Segmentation, Infrastructure Mapping, Biophysical Estimation

## Earth Observation & Disaster Mapping Benchmarks

1. **[2026 SSRN] Earth Observation for Disaster Mapping: Benchmarks, Methods, Challenges and Future Perspectives**<br>
   Hongruixuan Chen, Jian Song, Weihao Xuan, Junjue Wang, Heli Qi, Zeqi Zhou, *et al.*<br>
   [[paper]](https://ssrn.com/abstract=6725082)<br>
   *Keywords:* Earth Observation, Natural Hazards, Disaster Mapping, Deep Learning, Foundation Models, Benchmarking

2. **[2026 arXiv] The Perception-Physics Paradox: Probing Scientific Alignment with TC-Bench**<br>
   Dingling Yao, Andrea Polesello, Adeel Pervez, Caroline Muller, Francesco Locatello<br>
   [[paper]](https://arxiv.org/abs/2605.24782)<br>
   *Keywords:* Vision Foundation Models, Scientific Alignment, Tropical Cyclones, Benchmark Dataset, Satellite Imagery, Structural Isomorphism, Physical & Causal Interpretability, Out-of-Distribution Generalization

## Hazard Communication, Decision-Making & Human Experiments

1. **[2025 Weather Ready Research] Do Virtual Reality Hazard Simulations Increase People’s Willingness to Contribute to Hazard Mitigation? Results From an Experiment**  
   [[paper]](https://hazards.colorado.edu/weather-ready-research/do-virtual-reality-hazard-simulations-increase-peoples-willingness-to-contribute-to-hazard-mitigation)  
   *Keywords:* Virtual Reality, Hazard Communication, Risk Perception, Mitigation, Human-Subject Experiment

## Multimodal Disaster Damage Assessment

1. **[2025 arXiv] BRIGHT: A Globally Distributed Multimodal Building Damage Assessment Dataset with Very-High-Resolution for All-Weather Disaster Response**  
   [[paper]](https://arxiv.org/abs/2501.06019)  
   *Keywords:* Multimodal Disaster Dataset, Building Damage Assessment, Optical and SAR Imagery, All-Weather Disaster Response, Earth Observation

2. **[2025 Computers, Environment and Urban Systems] Hyperlocal Disaster Damage Assessment Using Bi-Temporal Street-View Imagery and Pre-Trained Vision Models**  
   [[paper]](https://doi.org/10.1016/j.compenvurbsys.2025.102335)  
   *Keywords:* Bi-temporal Street-View Imagery, Disaster Damage Assessment, Pre-trained Vision Models, Hyperlocal Analysis, Urban Resilience

3. **[2025 ICA Abstracts] Perceiving Multidimensional Disaster Damages from Street-View Images Using Visual-Language Models**  
   [[paper]](https://doi.org/10.5194/ica-abs-10-310-2025)  
   *Keywords:* Visual-Language Models, Disaster Perception, Street-View Imagery, Multimodal AI, Resilience

4. **[2025 arXiv] DisasterM3: A Remote Sensing Vision–Language Dataset for Disaster Damage Assessment and Response**  
   [[paper]](https://arxiv.org/abs/2505.21089)  
   *Keywords:* Vision–Language Models, Remote Sensing, Multimodal Disaster Dataset, Damage Assessment, Disaster Response, Cross-Sensor Generalization

5. **[2025 Nature] Built environment disparities are amplified during extreme weather recovery**<br>
   [[paper]](https://www.nature.com/articles/s41586-025-09804-3)  
   *Keywords:* Extreme Weather Recovery, Built Environment Disparities, Street View Imagery, Multimodal Machine Learning, Urban Resilience

6. **[2026 ISPRS P&RS] Multimodal remote sensing change detection: An image matching perspective**<br>
   [[paper]](https://doi.org/10.1016/j.isprsjprs.2026.02.004)  
   *Keywords:* Multimodal Change Detection, Image Matching, Remote Sensing, Unsupervised Learning, Disaster Response

7. **[2025 ISPRS Journal of Photogrammetry and Remote Sensing] Cross-view Geolocalization and Disaster Mapping with Street-View and VHR Satellite Imagery: A Case Study of Hurricane IAN**  
   Hao Li, Fabian Deuser, Wenping Yin, Xuanshu Luo, Paul Walther, Gengchen Mai, Wei Huang, Martin Werner  
   [[paper]](https://doi.org/10.1016/j.isprsjprs.2025.01.003)  
   *Keywords:* Cross-View Geolocalization, Disaster Mapping, Street-View Imagery, VHR Satellite Imagery, Hurricane Ian, Multimodal Remote Sensing

8. **[2026 arXiv] HASTE: A Platform for Rapid Post-Disaster Building Damage Assessment**  
   Caleb Robinson, Anthony Ortiz, Simone Fobi Nsutezo, Cameron Birge, Meygha Machado, Marcelo Duarte, Joaquin Rivero Rodriguez, Anthony Cintron Roman, Kevin White, Inbal Becker-Reshef, Juan M. Lavista Ferres  
   [[paper]](https://arxiv.org/abs/2607.11838) [[code]](https://github.com/microsoft/haste)  
   *Keywords:* Post-Disaster Building Damage Assessment, Satellite Imagery, Human-in-the-Loop Learning, Few-Shot Learning, Semantic Segmentation, Foundation Models, Disaster Response

9. **[2026 IEEE Transactions on Geoscience and Remote Sensing] Adapting Video Foundation Models for Spatiotemporal Wildfire Forecasting via Cross-Modal Progressive Fine-Tuning**  
   Wenwen Li, Chia-Yu Hsu, Sizhe Wang  
   [[paper]](https://ieeexplore.ieee.org/document/11343839)  
   *Keywords:* Wildfire Forecasting, Video Foundation Models, Cross-Modal Progressive Fine-Tuning (CMPF), Spatiotemporal Modeling, Multimodal Satellite Data, GeoAI, Domain Adaptation

9. **[2026 International Journal of Applied Earth Observation and Geoinformation] Satellite-based analysis of hourly progression and driving factors of large U.S. wildfires**<br>
   Shanmin Fang, Jia Yang, Xiaohao Jiao, Chris B. Zou, Alex Desjardins, Haoxuan Yang, Quan Zhang, Alonzo Hernandez<br>
   [[paper]](https://doi.org/10.1016/j.jag.2026.105288)<br>
   *Keywords:* Wildfire Progression, GOES, Diurnal Cycle, Fire Weather Conditions, Satellite Remote Sensing, Fire Spread

10. **[2025 Annals of GIS] Physically based model for assessing rainfall-induced deep-seated landslides using a hydrological-geotechnical model**<br>
   [[paper]](https://doi.org/10.1080/19475683.2025.2481063)  
   *Keywords:* Physically-based Modeling, Deep-Seated Landslides, Hydrological–Geotechnical Coupling, Slope Stability, Process-based Modeling, GIS-based Hazard Assessment

11. **[2026 arXiv] Smart Transfer: Leveraging Vision Foundation Model for Rapid Building Damage Mapping with Post-Earthquake VHR Imagery**<br>
   [[paper]](https://arxiv.org/abs/2604.02627)  
   *Keywords:* Vision Foundation Models, Transfer Learning, Building Damage Mapping, VHR Imagery, Earthquake Damage Assessment, GeoAI, Prototype Clustering, Domain Adaptation

12. **[2026 ISPRS Journal of Photogrammetry and Remote Sensing] GeoSight v2: Strengthening Disaster Impact Assessment with Coordinate Referencing, Inpainting, and Similarity Models**  
   Jooho Kim, J.V.K. Chaitanya  
   [[paper]](https://doi.org/10.1016/j.isprsjprs.2026.03.030)  
   *Keywords:* Geolocation Refinement, Coordinate Referencing, Building Detection & Inpainting, Perceptual Similarity, DreamSim, Community-Driven Disaster Imagery, Damage Mapping
