circulo <- function(x, R, centroX=0, centroY=0){
  r = R * sqrt(runif(x))
  theta = runif(x) * 2 * pi
  x = centroX + r * cos(theta)
  y = centroY + r * sin(theta)
  
  z = data.frame(x = x, y = y)
  return(z)
}
datos1 <-c(29.498886,20.934557,31.361678,2.6,24.48,3700,19.653,19534,
           29.994598,21.349802,31.884156,2.6,24.48,3700,18.631,19241,
           30.367889,21.764623,32.290055,2.6,24.48,3700,19.149,20389,
           30.695972,21.958946,32.701262,2.6,24.48,3700,18.255,21257,
           30.976119,21.902797,33.126891,2.6,24.48,3700,17.887,21836,
           31.250957,22.082066,33.487296,2.6,24.48,3700,17.8013,22018,
           31.523211,22.257312,33.67274,2.6,24.48,3700,18.1278,18592,
           31.803502,22.35776,33.880965,2.6,24.48,3700,18.6212,18228,
           32.199613,22.494614,34.240925,2.6,24.48,3700,18.82,17934,
           32.456941,22.878411,34.583575,2.6,24.48,3700,18.725,19297,
           32.820042,23.371753,34.934417,2.6,24.48,3700,20.1075,18697,
           33.279875,23.685419,35.253572,2.6,24.48,3700,20.834,18636,
           34.003924,24.424211,35.860077,2.3,28.08,380,20.7275,21696,
           34.599238,24.800939,36.635635,2.3,28.08,380,20.572,19848,
           35.004533,25.116825,37.06191,2.3,28.08,380,18.864,20654,
           35.332042,25.178475,37.494183,2.3,28.08,380,19.385,18863,
           35.613481,24.799436,37.921042,2.3,28.08,380,18.7851,20235,
           36.03442,24.957624,38.503816,2.3,28.08,380,18.7525,20327,
           36.381878,25.138119,38.742033,2.3,28.08,380,18.28,20731,
           36.731632,25.30152,39.147866,2.3,28.08,380,18.4684,19752,
           37.327376,25.488175,39.873861,2.3,28.08,380,17.175,19511,
           37.862269,25.88039,40.609198,2.3,28.08,380,17.2806,20586,
           38.532786,27.027337,41.107196,2.3,28.08,380,18.135,20047,
           39.472974,28.330247,41.698789,2.3,28.08,380,18.11,19067,
           40.46977,28.82682,42.888162,2,32.02,4400,17.18,18754,
           41.013643,29.295925,43.669109,2,32.02,4400,16.5745,18815,
           41.394684,29.591463,44.287377,2,32.02,4400,16.5,20614,
           41.774577,29.731157,44.831502,2,32.02,4400,16.9193,19204,
           42.025877,29.297824,45.303236,2,32.02,4400,16.7522,20260,
           42.302006,29.4585,45.673689,2,32.02,4400,16.1106,19780,
           42.58158,29.690761,45.874739,2,32.02,4400,15.7389,19254,
           42.821255,29.863945,46.194478,2,32.02,4400,15.3775,18963,
           43.235018,30.166786,46.495088,2,32.02,4400,15.3488,18091,
           43.508851,30.584621,46.89971,2,32.02,4400,15.2618,18885,
           43.895776,31.546427,47.256616,2,32.02,4400,14.9507,17661,
           44.335516,32.030223,47.579855,2,32.02,4400,14.989,16931,
           44.93083,32.652955,48.13456,2.1,35.23,5080,14.749,15759,
           45.32938,33.149796,48.651394,2.1,35.23,5080,13.9367,14941,
           45.580681,33.498293,49.000164,2.1,35.23,5080,13.4772,15910,
           45.840018,33.670414,49.235287,2.1,35.23,5080,13.4277,14055,
           46.011379,33.367505,49.461958,2.1,35.23,5080,13.0878,15135,
           46.28392,33.591364,49.571907,2.1,35.23,5080,13.2177,14832,
           46.464466,33.857736,49.681201,2.1,35.23,5080,12.9682,15060,
           46.719785,34.279912,49.876658,2.1,35.23,5080,12.8587,14504,
           47.061072,34.694602,50.04912,2.1,35.23,5080,13.0792,14612,
           47.385136,35.210426,50.225221,2.1,35.23,5080,13.0578,14987,
           47.790288,36.163681,50.532869,2.1,35.23,5080,13.245,13808,
           48.307671,36.521834,50.763848,2.1,35.23,5080,13.3562,13144,
           48.575476,36.923007,51.154392,2,38.05,5540,13.0365,8476,
           48.543328,37.312734,51.541543,2,38.05,5540,13.1025,7993,
           48.850888,37.389455,51.789193,2,38.05,5540,13.0198,8861,
           49.097309,37.17215,52.026419,2,38.05,5540,13.0915,7822,
           49.20997,36.752439,52.182914,2,38.05,5540,13.3803,8432,
           49.326364,36.805211,52.336139,2,38.05,5540,12.7325,8032,
           49.198202,36.094496,52.294112,2,38.05,5540,12.946,8605,
           49.489688,35.806594,52.387025,2,38.05,5540,12.8089,8708,
           49.950381,36.19089,52.502916,2,38.05,5540,12.134,8328,
           50.176135,36.523313,52.604426,2,38.05,5540,12.316,9195,
           50.365149,37.313748,52.698081,2,38.05,5540,12.7791,8784,
           50.434899,37.281441,52.746364,2,38.05,5540,12.7088,8784,
           50.900472,37.894946,52.853737,2,40.18,5910,12.8657,9132,
           50.86775,38.751476,53.138681,2,40.18,5910,12.9503,8231,
           51.127948,39.288268,53.279411,2,40.18,5910,13.0994,8221,
           51.407235,39.593121,53.391138,2,40.18,5910,12.8594,8517,
           51.511429,39.484477,53.424185,2,40.18,5910,13.1924,8142,
           51.762586,39.724549,53.391904,2,40.18,5910,13.327,7674,
           51.911181,39.663774,53.346569,2,40.18,5910,13.3573,8061,
           52.10856,39.855354,53.440765,2,40.18,5910,14.3716,7918,
           52.421984,40.270042,53.480329,2,40.18,5910,13.0155,7296,
           52.653036,41.045365,53.641194,2,40.18,5910,12.807,8100,
           53.078877,42.452583,53.718074,2,40.18,5910,12.846,7523,
           53.30993,42.399872,53.776001,2,40.18,5910,13.0446,7456,
           53.525441,43.014831,53.921717,2.1,41.93,6230,13.9547,8050,
           53.674122,43.18452,54.156871,2.1,41.93,6230,13.6438,7699,
           54.01293,43.428921,54.361371,2.1,41.93,6230,13.3604,8577,
           54.105144,43.362076,54.453983,2.1,41.93,6230,13.9,7970,
           53.93056,41.796755,54.566384,2.1,41.93,6230,12.3374,8129,
           53.975112,41.835642,54.545588,2.1,41.93,6230,11.7275,7871,
           54.053339,41.846326,54.490778,2.1,41.93,6230,11.7106,8242,
           54.21549,42.025925,54.604158,2.1,41.93,6230,11.5697,7793,
           54.538238,42.286817,54.689705,2.1,41.93,6230,11.498,7994,
           54.738207,42.669701,54.822815,2.1,41.93,6230,11.9039,8377,
           55.192542,44.339671,55.017363,2.1,41.93,6230,12.1067,7555,
           55.429811,44.444008,55.180665,2.1,41.93,6230,12.1162,7366,
           55.774317,45.042722,55.412068,2.4,43.69,6770,12.3575,7485,
           56.107945,45.596005,55.692114,2.4,43.69,6770,12.4925,7248,
           56.298071,45.958513,55.871099,2.4,43.69,6770,12.3469,7810,
           56.383032,46.141718,55.998571,2.4,43.69,6770,12.6072,7202,
           56.241603,44.961402,56.15323,2.4,43.69,6770,13.1985,7495,
           56.331745,45.287947,56.321254,2.4,43.69,6770,12.6475,7417,
           56.47939,45.53388,56.410809,2.4,43.69,6770,12.9425,7247,
           56.828041,45.818144,56.584145,2.4,43.69,6770,12.93,7370,
           57.297917,46.092516,56.780834,2.4,43.69,6770,12.305,7409,
           57.694747,46.616573,57.020733,2.4,43.69,6770,12.3777,7749,
           58.186899,48.373416,57.173065,2.4,43.69,6770,12.7733,7424,
           58.307088,48.620994,57.320776,2.4,43.69,6770,13.099,6939,
           58.30916,48.99835,57.512636,2.3,45.4,7310,13.0636,6983,
           58.503431,48.963225,57.739491,2.3,45.4,7310,12.936,6474,
           58.767121,49.19468,57.892605,2.3,45.4,7310,13.22,6957,
           58.976415,48.943212,58.016073,2.3,45.4,7310,13.501,6878,
           58.828251,47.032647,58.157349,2.3,45.4,7310,13.3623,6867,
           58.771783,47.214488,58.295282,2.3,45.4,7310,13.174,6752,
           59.0018,47.397272,58.315634,2.3,45.4,7310,13.187,6700,
           59.072255,47.589076,58.380199,2.3,45.4,7310,13.1325,6999,
           59.309006,47.826901,58.519439,2.3,45.4,7310,13.8388,6739,
           59.45458,48.607268,58.687358,2.3,45.4,7310,14.19,7007,
           59.882493,51.055172,58.803102,2.3,45.4,7310,15.2475,6654,
           60.250312,51.462831,58.947049,2.3,45.4,7310,14.342,6369,
           60.603626,52.104147,59.110934,2.4,47.21,7870,13.6662,6460,
           60.696358,51.912839,59.293347,2.4,47.21,7870,13.4454,6158,
           60.772512,52.115903,59.467252,2.4,47.21,7870,12.827,6693,
           60.861617,51.968929,59.590942,2.4,47.21,7870,10.92,6007,
           60.590675,49.827154,59.661286,2.4,47.21,7870,10.285,6706,
           60.642998,49.924594,59.784038,2.4,47.21,7870,10.035,6336,
           60.809294,50.125236,59.851906,2.4,47.21,7870,10.31,6624,
           61.119609,50.365447,59.970016,2.4,47.21,7870,10.322,6939,
           61.736612,50.428669,60.240491,2.4,47.21,7870,10.486,6609,
           62.006519,50.884889,60.4549,2.4,47.21,7870,10.636,6682,
           62.331857,53.116172,60.67819,2.4,47.21,7870,10.7115,6536,
           62.692424,53.378999,60.962035,2.4,47.21,7870,10.8262,6514,
           63.016208,53.91275,61.378934,2.8,49.06,8340,10.9088,6697)
datos1 <- circulo(datos1, 2,0,0)

datos2 <- circulo(c(63.192347,53.94923,61.587004,2.8,49.06,8340,10.907,6316,
                  63.329113,53.950526,61.7374,2.8,49.06,8340,10.6532,7113,
                  63.291295,53.075099,61.899665,2.8,49.06,8340,10.922,6786,
                  62.982534,51.640588,62.060971,2.8,49.06,8340,11.0325,7506,
                  63.05817,51.774843,62.232236,2.8,49.06,8340,10.99,7176,
                  63.326005,51.950246,62.418188,2.8,49.06,8340,10.8078,7219,
                  63.583996,52.146312,62.618282,2.8,49.06,8340,10.7445,7413,
                  64.077703,52.344756,62.864862,2.8,49.06,8340,10.9657,7493,
                  64.327405,53.360302,63.18013,2.8,49.06,8340,11.043,7966,
                  64.781221,55.027866,63.422762,2.8,49.06,8340,11.1622,7747,
                  65.049056,55.175156,63.717106,2.8,49.06,8340,11.0025,7215,
                  65.350564,55.616171,64.018822,3,51.02,9980,10.8027,7402,
                  65.544834,56.078981,64.293271,3,51.02,9980,10.9827,7280,
                  66.019891,56.655583,64.644618,3,51.02,9980,10.7605,7278,
                  66.170127,55.835565,65.031746,3,51.02,9980,10.9755,7496,
                  66.098635,54.432489,65.474264,3,51.02,9980,10.9125,7563,
                  66.372168,54.725684,65.79274,3,51.02,9980,10.965,7111,
                  66.742059,55.174327,65.992074,3,51.02,9980,11.335,7680,
                  67.127492,55.921922,66.392517,3,51.02,9980,11.331,8120,
                  67.584935,56.464286,66.72843,3,51.02,9980,11.057,7978,
                  68.045486,57.905356,66.901901,3,51.02,9980,10.8807,8469,
                  68.818942,59.958658,67.308147,3,51.02,9980,10.479,8209,
                  69.295552,59.962823,67.86127,3,51.02,9980,10.4447,8298,
                  69.456149,59.802862,68.404541,4.5,53.34,9960,10.6285,8478,
                  69.609494,59.771974,68.811909,4.5,53.34,9960,10.5572,7422,
                  70.00995,59.814588,69.261565,4.5,53.34,9960,10.786,8467,
                  70.25499,58.866201,69.721052,4.5,53.34,9960,10.759,7285,
                  70.050358,57.044413,70.100534,4.5,53.34,9960,10.757,8070,
                  70.179354,57.082776,70.335142,4.5,53.34,9960,10.6038,8214,
                  70.370516,57.109184,70.497468,4.5,53.34,9960,10.7428,8547,
                  70.538884,57.503562,70.714708,4.5,53.34,9960,10.882,8146,
                  70.892716,57.49264,70.992262,4.5,53.34,9960,11.05,8122,
                  71.107191,58.705114,71.251663,4.5,53.34,9960,11.1702,8827,
                  71.476046,60.814513,71.387143,4.5,53.34,9960,11.098,8211,
                  71.771855,61.015445,71.638574,4.5,53.34,9960,11.195,8036,
                  72.552046,62.205536,72.317756,4.7,55.92,9330,11.135,7847,
                  72.971671,62.978614,72.628132,4.7,55.92,9330,11.22,7846,
                  73.489725,63.470756,72.792038,4.7,55.92,9330,11.5362,8941,
                  73.255565,62.681696,72.974424,4.7,55.92,9330,11.38,8030,
                  72.793978,60.585057,73.148903,4.7,55.92,9330,11.392,8221,
                  72.771183,60.8225,73.131845,4.7,55.92,9330,11.395,8261,
                  72.92919,61.006936,73.097832,4.7,55.92,9330,11.495,8188,
                  73.13175,61.354529,73.236623,4.7,55.92,9330,11.455,8530,
                  73.51511,61.653564,73.446293,4.7,55.92,9330,11.4165,8247,
                  73.968926,63.067887,73.765327,4.7,55.92,9330,11.125,8676,
                  74.561581,65.222151,74.022356,4.7,55.92,9330,11.06,8568,
                  74.930954,65.386462,74.377791,4.7,55.92,9330,11.0645,7994,
                  75.295991,66.029666,74.920875,4.4,58.22,9240,11.23,7786,
                  75.57846,66.327509,75.320616,4.4,58.22,9240,11.3782,7467,
                  75.723451,66.618412,75.68448,4.4,58.22,9240,11.013,8148,
                  75.717441,65.213491,75.946856,4.4,58.22,9240,10.986,7310,
                  75.159264,62.75786,76.160846,4.4,58.22,9240,11.0471,7778,
                  75.155508,63.016981,76.323238,4.4,58.22,9240,10.607,7427,
                  75.516107,63.315065,76.380421,4.4,58.22,9240,10.4563,7526,
                  75.635555,63.548201,76.448562,4.4,58.22,9240,10.315,8050,
                  75.821113,63.812545,76.690248,4.4,58.22,9240,10.27,7730,
                  76.332712,65.824997,76.962011,4.4,58.22,9240,10.7753,7849,
                  77.158333,69.040898,77.222052,4.4,58.22,9240,11.0185,7693,
                  77.792385,69.436289,77.737151,4.4,58.22,9240,10.909,7421,
                  78.343049,69.870747,78.397179,4.3,60.66,9740,10.37,7695,
                  78.502314,70.026184,78.898237,4.3,60.66,9740,10.147,7614,
                  78.547389,70.05304,79.097058,4.3,60.66,9740,10.201,8201,
                  78.30098,68.473021,79.351249,4.3,60.66,9740,10.1925,7130,
                  78.053819,65.825892,79.590806,4.3,60.66,9740,9.94,7779,
                  78.413667,66.1793,79.879278,4.3,60.66,9740,9.875,7294,
                  78.853897,66.496368,80.132918,4.3,60.66,9740,9.94,7529,
                  79.09054,66.849398,80.447926,4.3,60.66,9740,9.6455,7569,
                  79.439119,66.832206,80.711582,4.3,60.66,9740,9.412,7133,
                  79.841036,68.410059,80.943494,4.3,60.66,9740,9.01,7426,
                  80.383437,71.757829,81.254798,4.3,60.66,9740,9.126,6743,
                  80.568243,72.104337,81.624669,4.3,60.66,9740,9.1505,6588,
                  80.892782,72.585241,81.821988,4.5,63.07,9940,9.153,6919,
                  81.290943,73.081982,81.941708,4.5,63.07,9940,9.22,6494,
                  81.887433,73.567015,82.112961,4.5,63.07,9940,9.28,6670,
                  81.941523,72.904722,82.230986,4.5,63.07,9940,9.5,7111,
                  81.66882,70.928578,82.371983,4.5,63.07,9940,9.2045,7323,
                  81.619238,71.514032,82.383986,4.5,63.07,9940,9.17,7089,
                  81.592193,71.894241,82.250739,4.5,63.07,9940,9.028,7407,
                  81.824328,72.306677,82.465081,4.5,63.07,9940,9.175,7520,
                  82.13234,72.62199,82.80447,4.5,63.07,9940,9.247,6875,
                  82.522988,74.612593,82.891554,4.5,63.07,9940,9.457,7671,
                  83.292265,77.507582,82.871171,4.5,63.07,9940,9.681,7436,
                  83.770058,78.338667,83.166713,4.5,63.07,9940,9.6595,6990,
                  84.519052,79.937693,84.21785,4.7,65.53,10080,9.641,6912,
                  84.733157,80.478007,84.32391,4.7,65.53,10080,9.421,6640,
                  84.965292,80.728702,84.478128,4.7,65.53,10080,9.5675,7226,
                  84.806779,79.117944,84.675027,4.7,65.53,10080,9.4435,7384,
                  84.535579,76.69926,84.9086,4.7,65.53,10080,9.2035,7675,
                  84.682072,76.941972,85.054316,4.7,65.53,10080,9.34,7183,
                  84.914959,77.267623,85.019162,4.7,65.53,10080,9.8075,7475,
                  85.219965,77.387632,85.397957,4.7,65.53,10080,9.5225,7199,
                  85.59634,77.577964,85.671934,4.7,65.53,10080,9.392,6999,
                  86.069626,79.782179,85.815999,4.7,65.53,10080,9.262,7401,
                  86.763778,82.637033,85.919894,4.7,65.53,10080,9.369,6883,
                  87.188984,82.684645,86.078983,4.7,65.53,10080,9.587,6689,
                  87.110103,82.724025,86.26596,4.2,68.28,9710,9.5045,6104,
                  87.275377,82.812557,86.548413,4.2,68.28,9710,9.445,6128,
                  87.630717,83.572943,86.674007,4.2,68.28,9710,9.5975,6764,
                  87.40384,81.406052,86.915031,4.2,68.28,9710,9.375,6417,
                  86.967366,78.92674,86.984349,4.2,68.28,9710,9.35,6577,
                  87.113108,79.095024,87.165665,4.2,68.28,9710,9.41,6665,
                  87.24082,79.13463,87.117471,4.2,68.28,9710,9.374,6693,
                  87.424875,79.330206,87.414112,4.2,68.28,9710,9.714,6378,
                  87.752419,79.384292,87.848644,4.2,68.28,9710,9.3,6420,
                  88.203919,81.119358,88.156128,4.2,68.28,9710,9.52,6674,
                  88.685468,83.733666,88.319067,4.2,68.28,9710,9.8975,6320,
                  89.046818,83.512934,88.506664,4.2,68.28,9710,10.17,6295,
                  89.386381,83.416228,88.734324,3.6,73.04,9040,9.905,5879,
                  89.777781,83.398571,89.164403,3.6,73.04,9040,10.0025,5944,
                  89.910001,83.264415,89.469498,3.6,73.04,9040,10.045,6527,
                  89.625278,81.331045,89.84115,3.6,73.04,9040,10.275,6444,
                  89.225615,78.364914,90.071027,3.6,73.04,9040,10.11,6405,
                  89.324028,78.653303,90.315737,3.6,73.04,9040,8.93,6380,
                  89.556914,79.775835,90.347007,3.6,73.04,9040,8.97,6661,
                  89.809333,80.353657,90.697777,3.6,73.04,9040,8.8345,7276,
                  90.357744,80.127214,91.290023,3.6,73.04,9040,8.488,7341,
                  90.906154,82.351718,91.659428,3.6,73.04,9040,8.522,7885,
                  91.616834,85.403274,91.774456,3.6,73.04,9040,8.52,7596,
                  92.039035,85.58899,92.092186,3.6,73.04,9040,8.452,7217,
                  93.603882,93.258668,92.946588,2.6,80.04,8610,8.07,7964,
                  94.14478,93.809485,93.973677,2.6,80.04,8610,8.225,7403,
                  94.722489,93.719586,94.703344,2.6,80.04,8610,8.41,8027,
                  94.838933,91.451884,95.275811,2.6,80.04,8610,7.772,7431,
                  94.725494,88.872703,95.73258,2.6,80.04,8610,7.825,8639,
                  94.96364,88.765149,96.035399,2.6,80.04,8610,7.8225,8920,
                  95.322736,88.401325,96.148067,2.6,80.04,8610,7.9335,8886,
                  95.793768,88.996821,96.602617,2.6,80.04,8610,7.9195,9266,
                  96.093515,89.633309,96.921027,2.6,80.04,8610,7.95,8348,
                  96.698269,93.355746,97.129933,2.6,80.04,8610,7.918,9543,
                  97.695174,97.311981,97.45597,2.6,80.04,8610,7.925,9153,
                  98.272883,97.947681,97.770868,2.6,80.04,8610,7.8195,9134),2,0,0)

datos1$Y <- 1
datos2$Y <- 0
datos <- rbind(datos1,datos2)

rm(datos1,datos2, circulo)
library(ggplot2)
ggplot(datos,aes(x,y, col = as.factor(Y))) + geom_point()
X <- as.matrix(datos[,1:2])
Y <- as.matrix(datos[,3])

rm(datos)
neurona <- setRefClass(
  "neurona",
  fields = list(
    fun_act = "list",
    numero_conexiones = "numeric",
    numero_neuronas = "numeric",
    W = "matrix",
    b = "numeric"
  ),
  methods = list(
    initialize = function(fun_act, numero_conexiones, numero_neuronas)
    {
      fun_act <<- fun_act
      numero_conexiones <<- numero_conexiones
      numero_neuronas <<- numero_neuronas
      W <<- matrix(runif(numero_conexiones*numero_neuronas),
                   nrow = numero_conexiones)
      b <<- runif(numero_neuronas)
    }
  )
)
sigmoid = function(x) {
  y = list() 
  y[[1]] <- 1 / (1 + exp(-x))
  y[[2]] <- x * (1 - x)
  return(y)
}

x <- seq(-5, 5, 0.01)
plot(x, sigmoid(x)[[1]], col='blue')
relu <- function(x){
  y <- list()
  y[[1]] <- ifelse(x<0,0,x)
  y[[2]] <- ifelse(x<0,0,1)
  return(y)
}

plot(x, relu(x)[[1]], col='blue')
n = ncol(X) 
capas = c(n, 1, 2, 1) 
funciones = list(sigmoid, relu, sigmoid) 

red <- list()

for (i in 1:(length(capas)-1)){
  red[[i]] <- neurona$new(funciones[i],capas[i], capas[i+1])
}

red
entrenar <- function(red, X,Y, coste){
  
  out = list()
  out[[1]] <- append(list(matrix(0,ncol=2,nrow=1)), list(X))
  
  for(i in c(1:(length(red)))){
    z = list((out[[length(out)]][[2]] %*% red[[i]]$W + red[[i]]$b))
    a = list(red[[i]]$fun_act[[1]](z[[1]])[[1]])
    out[[i+1]] <- append(z,a)
  }
  return(out)
}

forward <- entrenar(red, X,Y, coste)
head(forward[[4]][[2]])

coste <- function(Yp,Yr){
  y <- list()
  y[[1]] <- mean((Yp-Yr)^2)
  y[[2]] <- (Yp-Yr)
  return(y)
}
delta <- list() 

for (i in rev(1:length(red))){
  z = out[[i+1]][[1]]
  a = out[[i+1]][[2]]
  
  if(i == length(red)){
    delta[[1]] <- coste(a,Y)[[2]] * red[[i]]$fun_act[[1]](a)[[2]]
  } else{
    delta <- list(delta[[1]] %*% t(red[[i]]$W) * red[[i]]$fun_act[[1]](a)[[2]],delta)
  }
}
backprop <- function(out, red, lr = 0.05){
  
  delta <- list() 
  
  for (i in rev(1:length(red))){
    z = out[[i+1]][[1]]
    a = out[[i+1]][[2]]
    
    if(i == length(red)){
      delta[[1]] <- coste(a,Y)[[2]] * red[[i]]$fun_act[[1]](a)[[2]]
    } else{
      delta <- list(delta[[1]] %*% W_temp * red[[i]]$fun_act[[1]](a)[[2]],delta)
    }
    
    W_temp = t(red[[i]]$W)
    
    red[[i]]$b <- red[[i]]$b - mean(delta[[1]]) * lr
    red[[i]]$W <- red[[i]]$W - t(out[[i]][[2]]) %*% delta[[1]] * lr
  }
  x = list()
  x[[1]] <- red
  x[[2]] <- out[[length(out)]][[1]]
  return(x)
  
}
red_neuronal <- function(red, X,Y, coste,lr = 0.05){
  ## Front Prop
  out = list()
  out[[1]] <- append(list(matrix(0,ncol=4,nrow=1)), list(X))
  
  for(i in c(1:(length(red)))){
    z = list((out[[length(out)]][[2]] %*% red[[i]]$W + red[[i]]$b))
    a = list(red[[i]]$fun_act[[1]](z[[1]])[[1]])
    out[[i+1]] <- append(z,a)
  }
  
  
  ## Backprop & Gradient Descent
  delta <- list() 
  
  for (i in rev(1:length(red))){
    z = out[[i+1]][[1]]
    a = out[[i+1]][[2]]
    
    if(i == length(red)){
      delta[[1]] <- coste(a,Y)[[2]] * red[[i]]$fun_act[[1]](a)[[2]]
    } else{
      delta <- list(delta[[1]] %*% W_temp * red[[i]]$fun_act[[1]](a)[[2]],delta)
    }
    
    W_temp = t(red[[i]]$W)
    
    red[[i]]$b <- red[[i]]$b - mean(delta[[1]]) * lr
    red[[i]]$W <- red[[i]]$W - t(out[[i]][[2]]) %*% delta[[1]] * lr
    
  }
  return(out[[length(out)]][[2]])
  
}
red_neuronal <- function(red, X,Y, coste,lr = 0.05){

  out = list()
  out[[1]] <- append(list(matrix(0,ncol=4,nrow=1)), list(X))
  
  for(i in c(1:(length(red)))){
    z = list((out[[length(out)]][[2]] %*% red[[i]]$W + red[[i]]$b))
    a = list(red[[i]]$fun_act[[1]](z[[1]])[[1]])
    out[[i+1]] <- append(z,a)
  }
  
 
  delta <- list() 
  
  for (i in rev(1:length(red))){
    z = out[[i+1]][[1]]
    a = out[[i+1]][[2]]
    
    if(i == length(red)){
      delta[[1]] <- coste(a,Y)[[2]] * red[[i]]$fun_act[[1]](a)[[2]]
    } else{
      delta <- list(delta[[1]] %*% W_temp * red[[i]]$fun_act[[1]](a)[[2]],delta)
    }
    
    W_temp = t(red[[i]]$W)
    
    red[[i]]$b <- red[[i]]$b - mean(delta[[1]]) * lr
    red[[i]]$W <- red[[i]]$W - t(out[[i]][[2]]) %*% delta[[1]] * lr
    
  }
  return(out[[length(out)]][[2]])
  
}
for(i in seq(1000)){
  
  Yt = red_neuronal(red, X,Y, coste, lr=0.01)
  
  if(i %% 25 == 0){
    if(i == 25){
      iteracion <- i
      error <- coste(Yt,Y)[[1]]
    }else{
      iteracion <- c(iteracion,i)
      error <- c(error,coste(Yt,Y)[[1]])      
    }
  }
}
library(ggplot2)

grafico = data.frame(Iteracion = iteracion,Error = error)

ggplot(grafico,aes(iteracion, error)) + geom_line() + theme_minimal() +
  labs(title = "Evoluci?n del error de la Red Neuronal")
  