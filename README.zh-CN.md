# 论文精选
论文、可复现实验产物与实验参考。

[English](README.md)

## 核心阅读：AI/CV 基础与地理配准的 3D 视觉语言推理

下面的 20 篇构成两条各十篇的必读路径，服务于 **Geo-grounded 3D Vision-Language Reasoning under Incomplete and Changing Observations**。这不是按引用量或单一榜单给出的排名，而是一组按研究功能组织的核心文献：第一组建立视觉与语言基础模型的共同语言；第二组依次覆盖跨视角几何、三维表征、动态更新、语言锚定、语义地图与地理定位。它们共同指向一个可被 CV 社区直接识别的问题：如何从不完整、变化且跨视角的观测中，构建可查询、可推理和可行动的地理配准空间表征？

### 研究目的

本清单的目的不是从 GeoAI 转向脱离地理与公共问题的通用 CV，而是把灾害场景作为检验空间智能可靠性的严苛真实世界试验场。阅读、复现和组合这些工作，应服务于一篇博士阶段代表作：以跨地面、无人机和卫星观测为输入，建立能持续更新、可用语言查询、能明确证据与不确定性，并能提出下一步观测或行动建议的地理配准三维空间表征。

### 十篇 AI/CV 基础论文

1. **[1998 Proceedings of the IEEE] Gradient-Based Learning Applied to Document Recognition**  
   Yann LeCun, Léon Bottou, Yoshua Bengio, Patrick Haffner  
   [[论文]](https://ieeexplore.ieee.org/document/726791)  
   *阅读价值：* 建立卷积、局部感受野和端到端特征学习的基本范式，是理解 CNN 视觉表征的起点。  
   *关键词：* CNN, Convolution, Pooling, End-to-End Learning

2. **[2012 NeurIPS] ImageNet Classification with Deep Convolutional Neural Networks**  
   Alex Krizhevsky, Ilya Sutskever, Geoffrey E. Hinton  
   [[论文]](https://proceedings.neurips.cc/paper_files/paper/2012/hash/c399862d3b9d6b76c8436e924a68c45b-Abstract.html)  
   *阅读价值：* AlexNet 说明大规模数据、GPU 训练和深层 CNN 可以显著改变通用视觉能力。  
   *关键词：* AlexNet, ImageNet, Deep Learning, GPU Training

3. **[2016 CVPR] Deep Residual Learning for Image Recognition**  
   Kaiming He, Xiangyu Zhang, Shaoqing Ren, Jian Sun  
   [[论文]](https://openaccess.thecvf.com/content_cvpr_2016/html/He_Deep_Residual_Learning_CVPR_2016_paper.html)  
   *阅读价值：* ResNet 的残差连接使高容量视觉骨干可稳定扩展，至今仍是检测、分割和多模态编码器的共同基础。  
   *关键词：* ResNet, Residual Learning, Deep Networks, Visual Backbone

4. **[2017 NeurIPS] Attention Is All You Need**  
   Ashish Vaswani, Noam Shazeer, Niki Parmar, *et al.*  
   [[论文]](https://arxiv.org/abs/1706.03762)  
   *阅读价值：* Transformer 让全局关系建模、跨模态对齐和大规模预训练成为统一架构选择。  
   *关键词：* Transformer, Self-Attention, Sequence Modeling, Scaling

5. **[2019 NAACL] BERT: Pre-training of Deep Bidirectional Transformers for Language Understanding**  
   Jacob Devlin, Ming-Wei Chang, Kenton Lee, Kristina Toutanova  
   [[论文]](https://aclanthology.org/N19-1423/)  
   *阅读价值：* BERT 说明预训练语言表征能够迁移到多种下游理解任务，为语言化空间关系和问答接口提供基础。  
   *关键词：* BERT, Language Pre-training, Transfer Learning, Language Understanding

6. **[2020 NeurIPS] Language Models are Few-Shot Learners**  
   Tom B. Brown, Benjamin Mann, Nick Ryder, *et al.*  
   [[论文]](https://proceedings.neurips.cc/paper_files/paper/2020/hash/1457c0d6bfcb4967418bfb8ac142f64a-Abstract.html)  
   *阅读价值：* 展示规模化语言模型的上下文学习能力，为从空间描述到任务规划的推理层提供关键参照。  
   *关键词：* GPT-3, Large Language Models, In-Context Learning, Scaling

7. **[2021 ICLR] An Image is Worth 16x16 Words: Transformers for Image Recognition at Scale**  
   Alexey Dosovitskiy, Lucas Beyer, Alexander Kolesnikov, *et al.*  
   [[论文]](https://arxiv.org/abs/2010.11929)  
   *阅读价值：* ViT 将 Transformer 引入视觉主干，打开了视觉、语言和三维 token 在统一表征空间中交互的路线。  
   *关键词：* Vision Transformer, ViT, Visual Tokens, Image Recognition

8. **[2021 ICML] Learning Transferable Visual Models From Natural Language Supervision**  
   Alec Radford, Jong Wook Kim, Chris Hallacy, *et al.*  
   [[论文]](https://arxiv.org/abs/2103.00020)  
   *阅读价值：* CLIP 把开放词汇语言与视觉表征对齐，是将“损毁、可通行性、对象关系”等语言锚定到观测中的核心起点。  
   *关键词：* CLIP, Vision-Language Models, Contrastive Learning, Open Vocabulary

9. **[2023 arXiv] DINOv2: Learning Robust Visual Features without Supervision**  
   Maxime Oquab, Timothée Darcet, Théo Moutakanni, *et al.*  
   [[论文]](https://arxiv.org/abs/2304.07193)  
   *阅读价值：* 说明自监督视觉特征可以在无任务标注时迁移到图像和像素级任务，适合标注稀缺、传感器多样的灾害场景。  
   *关键词：* DINOv2, Self-Supervised Learning, Visual Foundation Models, Dense Features

10. **[2023 ICCV] Segment Anything**  
    Alexander Kirillov, Eric Mintun, Nikhila Ravi, *et al.*  
    [[论文]](https://arxiv.org/abs/2304.02643)  
    *阅读价值：* SAM 将可提示的开放式分割变成可复用组件，为跨视角对象边界、变化区域和人机核验提供底层能力。  
    *关键词：* SAM, Promptable Segmentation, Foundation Models, Object Masks

### 面向该研究方向的十篇空间智能论文

1. **[2004 IJCV] Distinctive Image Features from Scale-Invariant Keypoints**  
   David G. Lowe  
   [[论文]](https://link.springer.com/article/10.1023/B:VISI.0000029664.99615.94)  
   *阅读价值：* SIFT 奠定跨视角局部匹配的几何基础。即使采用学习特征，仍应理解它如何在尺度、旋转与遮挡下建立可验证对应。  
   *关键词：* SIFT, Local Features, Image Matching, Geometric Verification

2. **[2016 CVPR] Structure-from-Motion Revisited**  
   Johannes L. Schönberger, Jan-Michael Frahm  
   [[论文]](https://openaccess.thecvf.com/content_cvpr_2016/html/Schonberger_Structure-From-Motion_Revisited_CVPR_2016_paper.html)  
   *阅读价值：* COLMAP 提供从多视角影像恢复相机位姿和稀疏三维结构的可靠基线，是把地面、无人机与天基观测接入共同坐标系的起点。  
   *关键词：* COLMAP, Structure from Motion, Camera Pose, 3D Reconstruction

3. **[2020 ECCV] NeRF: Representing Scenes as Neural Radiance Fields for View Synthesis**  
   Ben Mildenhall, Pratul P. Srinivasan, Matthew Tancik, *et al.*  
   [[论文]](https://arxiv.org/abs/2003.08934)  
   *阅读价值：* NeRF 将多视角观测编码为连续三维辐射场，改变了从“几何模型”到“可学习场景表征”的研究范式。  
   *关键词：* NeRF, Neural Fields, Novel View Synthesis, Multi-View Geometry

4. **[2023 ACM TOG] 3D Gaussian Splatting for Real-Time Radiance Field Rendering**  
   Bernhard Kerbl, Georgios Kopanas, Thomas Leimkühler, George Drettakis  
   [[论文]](https://repo-sam.inria.fr/fungraph/3d-gaussian-splatting/)  
   *阅读价值：* 3D Gaussian Splatting 将高保真三维重建推进到实时渲染，为可交互地图和在线观测闭环提供工程可行的场景表示。  
   *关键词：* 3D Gaussian Splatting, Real-Time Rendering, Scene Representation, Digital Twins

5. **[2024 CVPR] 4D Gaussian Splatting for Real-Time Dynamic Scene Rendering**  
   Guanjun Wu, Taoran Yi, Jiemin Fang, *et al.*  
   [[论文]](https://arxiv.org/abs/2310.08528)  
   *阅读价值：* 将三维表征扩展到随时间变化的四维场景。它是区分真实变化、遮挡和新观测证据的直接技术起点。  
   *关键词：* 4D Gaussian Splatting, Dynamic Scenes, Temporal Modeling, Scene Updates

6. **[2023 ICCV] LERF: Language Embedded Radiance Fields**  
   Justin Kerr, Chung Min Kim, Ken Goldberg, Angjoo Kanazawa, Matthew Tancik  
   [[论文]](https://arxiv.org/abs/2303.09553)  
   *阅读价值：* LERF 将开放词汇语言特征嵌入三维辐射场，使“语言指向空间中的哪一个对象或区域”成为可操作的 3D grounding 问题。  
   *关键词：* LERF, Language Grounding, Radiance Fields, Open-Vocabulary 3D

7. **[2023 RSS] ConceptFusion: Open-set Multimodal 3D Mapping**  
   Krishna Murthy Jatavallabhula, Alihusein Kuwajerwala, Qiao Gu, *et al.*  
   [[论文]](https://arxiv.org/abs/2302.07241)  
   *阅读价值：* 将视觉语言特征融合到稠密三维地图，直接对应跨观测累积语义证据而非只处理单张图像。  
   *关键词：* ConceptFusion, Open-Set Mapping, Multimodal 3D, Semantic Maps

8. **[2023 CVPR] OpenScene: 3D Scene Understanding with Open Vocabularies**  
   Songyou Peng, Kyle Genova, Chiyu "Max" Jiang, *et al.*  
   [[论文]](https://arxiv.org/abs/2211.15654)  
   *阅读价值：* OpenScene 评估语言监督如何转移到三维点云语义理解，为长尾灾害对象和开放世界类别提供必要的评测视角。  
   *关键词：* OpenScene, Open-Vocabulary 3D, Point Clouds, Vision-Language Models

9. **[2023 ICRA] Visual Language Maps for Robot Navigation**  
   Chenguang Huang, Oier Mees, Andy Zeng, Wolfram Burgard  
   [[论文]](https://arxiv.org/abs/2210.05714)  
   *阅读价值：* 将语言特征沉淀为可查询、可规划的地图，而不是一次性的识别输出，连接“空间语义”与“下一步行动”。  
   *关键词：* VLMaps, Visual Language Maps, Embodied Navigation, Spatial Queries

10. **[2025 ICCV] Where am I? Cross-View Geo-localization with Natural Language Descriptions**  
    Junyan Ye, Honglin Lin, Leyan Ou, *et al.*  
    [[论文]](https://openaccess.thecvf.com/content/ICCV2025/html/Ye_Where_am_I_Cross-View_Geo-localization_with_Natural_Language_Descriptions_ICCV_2025_paper.html)  
    *阅读价值：* 直接把地面—卫星跨视角匹配与自然语言描述结合，是将三维语言 grounding 推进到地理配准真实世界的关键桥梁。  
    *关键词：* Cross-View Geo-localization, Natural Language, Vision-Language Models, Ground-to-Aerial Alignment

## AI 驱动科学的科学（Science of AI4Science）

1. **[2026 Nature] Artificial intelligence tools expand scientists’ impact but contract science’s focus**  
   Qianyue Hao, Fengli Xu, Yong Li, James A. Evans  
   [[论文]](https://www.nature.com/articles/s41586-025-09922-y)  
   *关键词：* AI for Science, Science of Science, Research Productivity, Topic Convergence, Scientific Diversity

## GeoAI 与地球科学基础模型

1. **[2025 arXiv] Earth AI: Unlocking Geospatial Insights with Foundation Models and Cross-Modal Reasoning**  
   [[论文]](https://arxiv.org/abs/2510.18318)  
   *关键词：* GeoAI, Foundation Models, Cross-Modal Reasoning, Earth Observation, Spatial Intelligence

2. **[2025 arXiv] LSDTs: LLM-Augmented Semantic Digital Twins for Adaptive Knowledge-Intensive Infrastructure Planning**  
   [[论文]](https://arxiv.org/abs/2508.06799)  
   *关键词：* Semantic Digital Twins, Large Language Models, Knowledge Extraction, Infrastructure Planning, Regulation-Aware Optimization

3. **[2025 arXiv] BuildingWorld: A Structured 3D Building Dataset for Urban Foundation Models**  
   [[论文]](https://arxiv.org/abs/2511.06337)  
   *关键词：* 3D Urban Modeling, Structured Building Dataset, Urban Foundation Models, LiDAR Point Clouds, Building Reconstruction, Urban AI

4. **[2026 arXiv] Digital Twin AI: Opportunities and Challenges from Large Language Models to World Models**  
   Rong Zhou, Dongping Chen, Zihan Jia, Yao Su, Yixin Liu, *et al.*  
   [[论文]](https://arxiv.org/abs/2601.01321)  
   *关键词：* Digital Twins, World Models, Large Language Models, AI Systems, Physical–Virtual Interaction, Simulation, Decision-Making

5. **[2026 Communications Earth & Environment] On the foundations of Earth foundation models**  
   Xiao Xiang Zhu, Zhitong Xiong, Yi Wang, Adam J. Stewart, Konrad Heidler, Yuanyuan Wang, Zhenghang Yuan, Thomas Dujardin, Qingsong Xu, Yilei Shi  
   [[论文]](https://www.nature.com/articles/s43247-025-03127-x)  
   *关键词：* Earth Foundation Models, Geoscience AI, Environmental Modeling, Model Evaluation, Interpretability, Energy Efficiency, Adversarial Robustness
   
6. **[2025 arXiv] AlphaEarth Foundations: An embedding field model for accurate and efficient global mapping from sparse label data**  
   [[论文]](https://arxiv.org/abs/2507.22291)  
   *关键词：* Earth Foundation Models, Embedding Fields, Global Mapping, Remote Sensing, Sparse Labels, Geospatial Representation Learning  

7. **[2026 arXiv] Any Model, Any Place, Any Time: Get Remote Sensing Foundation Model Embeddings On Demand**  
   Dingqi Ye, Daniel Kiv, Wei Hu, Jimeng Shi, Shaowen Wang  
   [[论文]](https://arxiv.org/abs/2602.23678)  
   *关键词：* Remote Sensing Foundation Models, Embeddings, Geospatial Representation Learning, ROI-based Retrieval, Earth Observation, Large-Scale Geospatial Analysis

8. **[2025 eartharXiv] Earth Embeddings: Towards AI-centric Representations of our Planet**  
   Konstantin Klemmer, Esther Rolf, Marc Russwurm, Gustau Camps-Valls, Mikolaj Czerkawski, Stefano Ermon, Alistair Francis, Nathan Jacobs, Hannah Rae Kerner, Lester Mackey, Gengchen Mai, Oisin Mac Aodha, Markus Reichstein, Caleb Robinson, David Rolnick, Evan Shelhamer, Vincent Sitzmann, Devis Tuia, Xiaoxiang Zhu  
   [[论文]](https://eartharxiv.org/repository/view/11083/)  
   *关键词：* Earth embeddings, Artificial Intelligence, Geospatial Foundation Model, AI for Earth

9. **[2026 arXiv] No One Knows the State of the Art in Geospatial Foundation Models**  
   Isaac Corley, Nils Lehmann, Caleb Robinson, Gabriel Tseng, Anthony Fuller, Hamed Alemohammad, Evan Shelhamer, Jennifer Marcus, Hannah Kerner  
   [[论文]](https://arxiv.org/abs/2605.12678)  
   *关键词：* Geospatial Foundation Models, Benchmarking, Reproducibility, Evaluation Protocols, Model Release, Community Standards

10. **[2026 Remote Sensing of Environment] Generating an annual 30 m rice cover product for monsoon Asia (2018–2023) using harmonized Landsat and Sentinel-2 data and the NASA-IBM geospatial foundation model**  
   Husheng Fang, Shunlin Liang, Wenyuan Li, Yongzhe Chen, Han Ma, Jianglei Xu, Yichuan Ma, Tao He, Feng Tian, Fengjiao Zhang, Hui Liang  
   [[论文]](https://doi.org/10.1016/j.rse.2026.115256)  
   *关键词：* Rice mapping, Geospatial foundation model, Harmonized Landsat and Sentinel-2, Remote sensing, Monsoon Asia

11. **[2026 International Journal of Applied Earth Observation and Geoinformation] Harvesting AlphaEarth: Benchmarking the geospatial foundation model for agricultural downstream tasks**  
   Yuchi Ma, Yawen Shen, Anu Swatantran, David B. Lobell  
   [[论文]](https://doi.org/10.1016/j.jag.2026.105258)  
   *关键词：* AlphaEarth, Geospatial Foundation Model, Agricultural Monitoring, Crop Yield Prediction, Tillage Mapping, Cover Crop Mapping, Earth Observation Benchmarking

## GIScience、自主 GIS 与智能地理系统

1. **[2025 Annals of GIS] GIScience in the Era of Artificial Intelligence: A Research Agenda Towards Autonomous GIS**  
   [[论文]](https://www.tandfonline.com/doi/full/10.1080/19475683.2025.2552161)  
   *关键词：* Autonomous GIS, GIScience, Large Language Models, Agentic AI, Intelligent Geosystems, Spatial Analysis

2. **[2026 Big Earth Data] GeoJSON agents: a multi-agent LLM architecture for geospatial analysis—function calling vs. code generation**  
   Qianglian Luo, Qingming Lin, Liuchang Xu, Sensen Wu, Ruichen Mao, Chao Wang, *et al.*  
   [[论文]](https://www.tandfonline.com/doi/full/10.1080/20964471.2026.2615511)  
   *关键词：* Multi-Agent LLM, GeoJSON, Function Calling, Code Generation, Geospatial Analysis, Autonomous GIS, Tool-Augmented LLMs

3. **[2024 Information Processing & Management] BB-GeoGPT: A Framework for Learning a Large Language Model for Geographic Information Science**  
   Yifan Zhang, Zhiyun Wang, Zhengting He, Jingxuan Li, Gengchen Mai, Jiangfeng Lin, Cheng Wei, Wenhao Yu  
   [[论文]](https://doi.org/10.1016/j.ipm.2024.103808)  
   *关键词：* GIS-Specific LLM, Geographic Knowledge Modeling, Domain Adaptation, Geospatial Benchmark, Large Language Models, Autonomous GIS

4. **[2026 arXiv] GeoVisA11y: An AI-based Geovisualization Question-Answering System for Screen-Reader Users** 
   Chu Li, Rock Yuren Pang, Arnavi Chheda-Kothary, Ather Sharif, Henok Assalif, Jeffrey Heer, Jon E. Froehlich  
   [[论文]](https://arxiv.org/abs/2603.07446)  
   *关键词：* Geovisualization, Accessibility, Screen-Reader, Question-Answering, AI-based GIS, Human-Computer Interaction

5. **[2026 arXiv] OpenEarthAgent: A Unified Framework for Tool-Augmented Geospatial Agents**  
   Akashah Shabbir, Muhammad Umer Sheikh, Muhammad Akhtar Munir, Hiyam Debary, Mustansar Fiaz, Muhammad Zaigham Zaheer, Paolo Fraccaro, Fahad Shahbaz Khan, Muhammad Haris Khan, Xiao Xiang Zhu, Salman Khan  
   [[论文]](https://arxiv.org/abs/2602.17665)  
   *关键词：* Geospatial Agents, Tool-Augmented LLMs, Autonomous GIS, GIS Reasoning, Multi-Agent Systems, Spatial Intelligence

6. **[2026 arXiv] Spatial-Agent: Agentic Geo-spatial Reasoning with Scientific Core Concepts**<br>
   Riyang Bao, Cheng Yang, Dazhou Yu, Zhexiang Tang, Gengchen Mai, Liang Zhao<br>
   [[论文]](https://arxiv.org/abs/2601.16965)<br>
   *关键词：* Agentic Geospatial Reasoning, Spatial Information Science, GeoFlow Graphs, Geospatial Agents, Concept Transformation, MapQA, MapEval-API

7. **[2026 arXiv] NORA: A Harness-Engineered Autonomous Research Agent for End-to-End Spatial Data Science**<br>
   Bing Zhou, Xiao Huang, Huan Ning, Qiusheng Wu, Diya Li, Ziyi Zhang<br>
   [[论文]](https://arxiv.org/abs/2605.02092)<br>
   *关键词：* Autonomous Research Agents, Spatial Data Science, Harness Engineering, GIScience, Multi-Agent Systems, Scientific Workflow Automation

8. **[2025 Annals of GIS] Neural representation of geoinformation in the human brain: affected by abstraction levels and spatial scales**<br>
   Tianyu Yang, Bo Zhao, Song Gao, Weihua Dong<br>
   [[论文]](https://doi.org/10.1080/19475683.2025.2487979)<br>
   *关键词：* Geoinformation, Spatial Cognition, Abstraction Level, Spatial Scale, Functional Magnetic Resonance Imaging, Cartographic Design

## 跨视角图像生成与世界—地面配准

1. **[2024 arXiv] Leveraging BEV Paradigm for Ground-to-Aerial Image Synthesis**  
   Junyan Ye, Jun He, **Weijia Li**, *et al.*  
   [[论文]](https://arxiv.org/abs/2408.01812)  
   *关键词：* Ground-to-Aerial Synthesis, Cross-View Generation, Bird’s-Eye View (BEV), Diffusion Models, Street-to-Satellite

2. **[2025 Computers, Environment and Urban Systems] Generative AI for Urban Planning: Synthesizing Satellite Imagery via Diffusion Models**  
   Qingyi Wang, Yuebing Liang, Yunhan Zheng, Kaiyun Xu, Jinhua Zhao, Shenhao Wang  
   [[论文]](https://doi.org/10.1016/j.compenvurbsys.2025.102339)  
   *关键词：* Generative GeoAI, Diffusion Models, Satellite Image Synthesis, Urban Planning, OpenStreetMap Alignment, Text-Conditioned Layout Generation

3. **[2025 arXiv] From Orbit to Ground: Generative City Photogrammetry from Extreme Off-Nadir Satellite Images**  
   Fei Yu, Yu Liu, Luyang Tang, Mingchao Sun, Zengye Ge, Rui Bu, Yuchao Jin, Haisen Zhao, He Sun, Yangyang Li, Mu Xu, Wenzheng Chen, Baoquan Chen  
   [[论文]](https://arxiv.org/abs/2512.07527)  
   *关键词：* Generative Photogrammetry, Extreme Off-Nadir Imagery, 3D City Reconstruction, Cross-View Geometry, Viewpoint Extrapolation, Urban 3D Modeling

4. **[2026 arXiv] Cross-View Splatter: Feed-Forward View Synthesis with Georeferenced Images**  
   Matias Turkulainen, Akshay Krishnan, Filippo Aleotti, Mohamed Sayed, Guillermo Garcia-Hernando, Juho Kannala, Arno Solin, Gabriel Brostow, Daniyar Turmukhambetov  
   [[论文]](https://arxiv.org/abs/2605.19656)  
   *关键词：* Cross-View Synthesis, Satellite-Ground Fusion, Gaussian Splatting, Feed-Forward Novel-View Synthesis, Georeferenced Imagery, 3D Reconstruction, World-Ground Alignment

## 空间推理、地理定位与地图智能体

1. **[2026 arXiv] Thinking with Map: Reinforced Parallel Map-Augmented Agent for Geolocalization**  
   [[论文]](https://arxiv.org/abs/2601.05432)  
   *关键词：* Geolocalization, Map-Augmented Agents, Vision-Language Models, Reinforcement Learning, Spatial Reasoning

2. **[2026 IJGIS] Georeferencing Complex Relative Locality Descriptions with Large Language Models**  
   [[论文]](https://doi.org/10.1080/13658816.2026.2613291)  
   *关键词：* Georeferencing, Relative Locality Descriptions, Large Language Models, Spatial Relations, Text-to-Location

3. **[2024 Applied Sciences] GeoLocator: A Location-Integrated Large Multimodal Model (LMM) for Inferring Geo-Privacy**  
   [[论文]](https://doi.org/10.3390/app14167091)  
   *关键词：* Geolocalization, Multimodal Models, Geo-Privacy, Location Inference, Vision–Language Models

4. **[2025 arXiv] FRIEDA: Benchmarking Multi-Step Cartographic Reasoning in Vision–Language Models**  
   Jiyoon Pyo, Yuankun Jiao, Dongwon Jung, Zekun Li, Leeja Jang, Sofia Kirsanova, Jina Kim, Yijun Lin, Qin Liu, Junyi Xie, Hadi Askari, Nan Xu, Muhao Chen, Yao-Yi Chiang  
   [[论文]](https://arxiv.org/abs/2512.08016)  
   *关键词：* Cartographic Reasoning, Spatial Reasoning, Vision–Language Models, Map Understanding, Multi-Step Reasoning, GIS

5. **[2025 ICCV] Where am I? Cross-View Geo-localization with Natural Language Descriptions**  
   Junyan Ye, Honglin Lin, Leyan Ou, Dairong Chen, Zihao Wang, Qi Zhu, Conghui He, Weijia Li  
   [[论文]](https://openaccess.thecvf.com/content/ICCV2025/html/Ye_Where_am_I_Cross-View_Geo-localization_with_Natural_Language_Descriptions_ICCV_2025_paper.html)  
   *关键词：* Cross-View Geo-localization, Natural Language Descriptions, Vision–Language Models, Text-Guided Retrieval, Street-to-Satellite Matching

6. **[2026 ICLR] UrbanFeel: A Comprehensive Benchmark for Temporal and Perceptual Understanding of City Scenes through Human Perspective**  
   ICLR 2026 Conference Submission  
   [[论文]](https://openreview.net/forum?id=OtLC2JNGZf)  
   *关键词：* Urban Benchmark, Human-Centered Urban Perception, Temporal Understanding, Multimodal Large Language Models, Street-View Reasoning

7. **[2026 Artificial Intelligence Review] Geospatial reasoning and awareness in large language models: a systematic review**  
   Gabriel Ionut Dorobantu, Ana Cornelia Badea  
   [[论文]](https://link.springer.com/article/10.1007/s10462-026-11512-x)  
   *关键词：* Geospatial Reasoning, Spatial Awareness, Large Language Models, Geographic Knowledge, Systematic Review, LLM Evaluation

8. **[2026 WACV] Towards Unconstrained Cross-View Pose Estimation** Alexander Wollam, Kyle Ashley, Maxim Shugaev, Oliver Arend, Ilya Semenov, Hadis Dashtestani, Sumved Ravi, Nathan Jacobs  
   [[论文]](https://atwollam.github.io/TUCVPE/)  
   *关键词：* Cross-View Pose Estimation, 3DoF Pose, Ground-to-Aerial Alignment, Transformers, Unconstrained Imagery, VIGOR Benchmark
   
## 城市动态、人类移动与遥感

1. **[2025 Nature Communications] Predicting human mobility flows in cities using deep learning on satellite imagery**  
   Yichen Xu, Song Gao, Qunying Huang, Aslıgül Göçmen, Qiang Zhu, Feng Zhang  
   [[论文]](https://www.nature.com/articles/s41467-025-65373-z)  
   *关键词：* Human Mobility Prediction, Satellite Imagery, Deep Learning, Urban Dynamics, Spatial Interaction Modeling, Remote Sensing, GeoAI

## 能源、社交媒体与公众感知

1. **[2019 Energy Research & Social Science] Beyond big data: Social media challenges and opportunities for understanding social perception of energy**<br>
   Ruopu Li, Jessica Crowe, David Leifer, Lei Zou, Justin Schoof<br>
   [[论文]](https://doi.org/10.1016/j.erss.2019.101217)<br>
   *关键词：* Energy Social Science, Social Media Analytics, Public Perception, Energy Policy, Public Advocacy, Sentiment Analysis

## 洪水风险、社会脆弱性与灾害风险制图

1. **[2024 Nature Communications] Integrating social vulnerability into high-resolution global flood risk mapping**<br>
   Sean Fox, Felix Agyemang, Laurence Hawker, Jeffrey Neal<br>
   [[论文]](https://www.nature.com/articles/s41467-024-47394-2)<br>
   *关键词：* Flood Risk Mapping, Social Vulnerability, Vulnerability-Adjusted Risk Index, Fluvial Flooding, Global Risk Assessment, Population Exposure, Disaster Risk Reduction

## 遥感超分辨率与下游评估

1. **[2026 arXiv] Beyond Visual Fidelity: Benchmarking Super-Resolution Models for Large-Scale Remote Sensing Imagery via Downstream Task Integration**  
   Zhili Li, Kangyang Chai, Zhihao Wang, Xiaowei Jia, Yanhua Li, Gengchen Mai, Sergii Skakun, Dinesh Manocha, Yiqun Xie  
   [[论文]](https://arxiv.org/abs/2605.00310)  
   *关键词：* Remote Sensing Super-Resolution, Benchmarking, Downstream Evaluation, Earth Observation, Land Cover Segmentation, Infrastructure Mapping, Biophysical Estimation

## 地球观测与灾害制图基准

1. **[2026 SSRN] Earth Observation for Disaster Mapping: Benchmarks, Methods, Challenges and Future Perspectives**<br>
   Hongruixuan Chen, Jian Song, Weihao Xuan, Junjue Wang, Heli Qi, Zeqi Zhou, *et al.*<br>
   [[论文]](https://ssrn.com/abstract=6725082)<br>
   *关键词：* Earth Observation, Natural Hazards, Disaster Mapping, Deep Learning, Foundation Models, Benchmarking

2. **[2026 arXiv] The Perception-Physics Paradox: Probing Scientific Alignment with TC-Bench**<br>
   Dingling Yao, Andrea Polesello, Adeel Pervez, Caroline Muller, Francesco Locatello<br>
   [[论文]](https://arxiv.org/abs/2605.24782)<br>
   *关键词：* Vision Foundation Models, Scientific Alignment, Tropical Cyclones, Benchmark Dataset, Satellite Imagery, Structural Isomorphism, Physical & Causal Interpretability, Out-of-Distribution Generalization

## 灾害沟通、决策与人类实验

1. **[2025 Weather Ready Research] Do Virtual Reality Hazard Simulations Increase People’s Willingness to Contribute to Hazard Mitigation? Results From an Experiment**  
   [[论文]](https://hazards.colorado.edu/weather-ready-research/do-virtual-reality-hazard-simulations-increase-peoples-willingness-to-contribute-to-hazard-mitigation)  
   *关键词：* Virtual Reality, Hazard Communication, Risk Perception, Mitigation, Human-Subject Experiment

## 多模态灾害损毁评估

1. **[2025 arXiv] BRIGHT: A Globally Distributed Multimodal Building Damage Assessment Dataset with Very-High-Resolution for All-Weather Disaster Response**  
   [[论文]](https://arxiv.org/abs/2501.06019)  
   *关键词：* Multimodal Disaster Dataset, Building Damage Assessment, Optical and SAR Imagery, All-Weather Disaster Response, Earth Observation

2. **[2025 Computers, Environment and Urban Systems] Hyperlocal Disaster Damage Assessment Using Bi-Temporal Street-View Imagery and Pre-Trained Vision Models**  
   [[论文]](https://doi.org/10.1016/j.compenvurbsys.2025.102335)  
   *关键词：* Bi-temporal Street-View Imagery, Disaster Damage Assessment, Pre-trained Vision Models, Hyperlocal Analysis, Urban Resilience

3. **[2025 ICA Abstracts] Perceiving Multidimensional Disaster Damages from Street-View Images Using Visual-Language Models**  
   [[论文]](https://doi.org/10.5194/ica-abs-10-310-2025)  
   *关键词：* Visual-Language Models, Disaster Perception, Street-View Imagery, Multimodal AI, Resilience

4. **[2025 arXiv] DisasterM3: A Remote Sensing Vision–Language Dataset for Disaster Damage Assessment and Response**  
   [[论文]](https://arxiv.org/abs/2505.21089)  
   *关键词：* Vision–Language Models, Remote Sensing, Multimodal Disaster Dataset, Damage Assessment, Disaster Response, Cross-Sensor Generalization

5. **[2025 Nature] Built environment disparities are amplified during extreme weather recovery**<br>
   [[论文]](https://www.nature.com/articles/s41586-025-09804-3)  
   *关键词：* Extreme Weather Recovery, Built Environment Disparities, Street View Imagery, Multimodal Machine Learning, Urban Resilience

6. **[2026 ISPRS P&RS] Multimodal remote sensing change detection: An image matching perspective**<br>
   [[论文]](https://doi.org/10.1016/j.isprsjprs.2026.02.004)  
   *关键词：* Multimodal Change Detection, Image Matching, Remote Sensing, Unsupervised Learning, Disaster Response

7. **[2025 ISPRS Journal of Photogrammetry and Remote Sensing] Cross-view Geolocalization and Disaster Mapping with Street-View and VHR Satellite Imagery: A Case Study of Hurricane IAN**  
   Hao Li, Fabian Deuser, Wenping Yin, Xuanshu Luo, Paul Walther, Gengchen Mai, Wei Huang, Martin Werner  
   [[论文]](https://doi.org/10.1016/j.isprsjprs.2025.01.003)  
   *关键词：* Cross-View Geolocalization, Disaster Mapping, Street-View Imagery, VHR Satellite Imagery, Hurricane Ian, Multimodal Remote Sensing

8. **[2026 arXiv] HASTE: A Platform for Rapid Post-Disaster Building Damage Assessment**  
   Caleb Robinson, Anthony Ortiz, Simone Fobi Nsutezo, Cameron Birge, Meygha Machado, Marcelo Duarte, Joaquin Rivero Rodriguez, Anthony Cintron Roman, Kevin White, Inbal Becker-Reshef, Juan M. Lavista Ferres  
   [[论文]](https://arxiv.org/abs/2607.11838) [[code]](https://github.com/microsoft/haste)  
   *关键词：* Post-Disaster Building Damage Assessment, Satellite Imagery, Human-in-the-Loop Learning, Few-Shot Learning, Semantic Segmentation, Foundation Models, Disaster Response

9. **[2026 IEEE Transactions on Geoscience and Remote Sensing] Adapting Video Foundation Models for Spatiotemporal Wildfire Forecasting via Cross-Modal Progressive Fine-Tuning**  
   Wenwen Li, Chia-Yu Hsu, Sizhe Wang  
   [[论文]](https://ieeexplore.ieee.org/document/11343839)  
   *关键词：* Wildfire Forecasting, Video Foundation Models, Cross-Modal Progressive Fine-Tuning (CMPF), Spatiotemporal Modeling, Multimodal Satellite Data, GeoAI, Domain Adaptation

9. **[2026 International Journal of Applied Earth Observation and Geoinformation] Satellite-based analysis of hourly progression and driving factors of large U.S. wildfires**<br>
   Shanmin Fang, Jia Yang, Xiaohao Jiao, Chris B. Zou, Alex Desjardins, Haoxuan Yang, Quan Zhang, Alonzo Hernandez<br>
   [[论文]](https://doi.org/10.1016/j.jag.2026.105288)<br>
   *关键词：* Wildfire Progression, GOES, Diurnal Cycle, Fire Weather Conditions, Satellite Remote Sensing, Fire Spread

10. **[2025 Annals of GIS] Physically based model for assessing rainfall-induced deep-seated landslides using a hydrological-geotechnical model**<br>
   [[论文]](https://doi.org/10.1080/19475683.2025.2481063)  
   *关键词：* Physically-based Modeling, Deep-Seated Landslides, Hydrological–Geotechnical Coupling, Slope Stability, Process-based Modeling, GIS-based Hazard Assessment

11. **[2026 arXiv] Smart Transfer: Leveraging Vision Foundation Model for Rapid Building Damage Mapping with Post-Earthquake VHR Imagery**<br>
   [[论文]](https://arxiv.org/abs/2604.02627)  
   *关键词：* Vision Foundation Models, Transfer Learning, Building Damage Mapping, VHR Imagery, Earthquake Damage Assessment, GeoAI, Prototype Clustering, Domain Adaptation

12. **[2026 ISPRS Journal of Photogrammetry and Remote Sensing] GeoSight v2: Strengthening Disaster Impact Assessment with Coordinate Referencing, Inpainting, and Similarity Models**  
   Jooho Kim, J.V.K. Chaitanya  
   [[论文]](https://doi.org/10.1016/j.isprsjprs.2026.03.030)  
   *关键词：* Geolocation Refinement, Coordinate Referencing, Building Detection & Inpainting, Perceptual Similarity, DreamSim, Community-Driven Disaster Imagery, Damage Mapping
