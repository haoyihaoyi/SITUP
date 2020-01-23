# SITUP: Scale Invariant Tracking using Average Peak-to-Correlation Energy
This is the matlab code of SITUP [1]. The implementation is built upon the code of [2][3]. The codes provided by [4][5][6] are also used in the implementation. 

## Instructions:
* 1) Modify the base_path in "run_tracker.m" with your own setting.
* 2) Run the "run_tracker.m" script in MATLAB.
* 3) Choose sequence.


## Benchmark evaluation:
run_SITUP is the evaluation code compatiable with OTB toolkit to evaluate our tracker on the whole benchmark dataset.


## Contact:
Haoyi Ma
hm5au@virginia.edu

## Reference
[1] Haoyi Ma, Scott T. Acton, Zongli Lin.
    "SITUP: Scale Invariant Tracking using Average Peak-to-Correlation Energy"
    arXiv:1812.03111v1 [eess.IV], 2018

[2] Yang Li, Jianke Zhu. 
	"A Scale Adaptive Kernel Correlation Filter Tracker with Feature Integration" 
	European Conference on Computer Vision, Workshop VOT2014 (ECCVW), 2014

[3] J. F. Henriques, R. Caseiro, P. Martins, J. Batista.
    "High-Speed Tracking with Kernelized Correlation Filters."
    TPAMI - IEEE Transactions on Pattern Analysis and Machine Intelligence, 2015

[4] Martin Danelljan, Fahad Shahbaz Khan, Michael Felsberg and Joost van de Weijer.
    "Adaptive Color Attributes for Real-Time Visual Tracking".
    Proceedings of IEEE Conference on Computer Vision and Pattern Recognition (CVPR), 2014.

[5] J. van de Weijer, C. Schmid, J. J. Verbeek, and D. Larlus.
    "Learning color names for real-world applications."
    TIP, 18(7):1512–1524, 2009.

[6] David Ross, Jongwoo Lim, Ruei-Sung Lin, Ming-Hsuan Yang. 
	"Incremental Learning for Robust Visual Tracking"
	In the International Journal of Computer Vision, Special Issue: Learning for Vision, 2007.

