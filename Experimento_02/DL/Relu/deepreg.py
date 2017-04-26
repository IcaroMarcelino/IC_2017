from __future__ import absolute_import,division,print_function

from sklearn.model_selection import train_test_split
from sklearn import metrics, preprocessing

import tensorflow as tf
import math
import numpy as np
import csv
import random
import time

ran = [[[10,10,10,10,10,10,10,10,10], range(0,10)], [[10,10,10,10,10,10,10], range(10,20)], [[10,10,10,10,10], range(20,30)], [[10,10,10], range(30,40)], [[10], range(40,50)]]

structure = [(1,0,0,25), 	(1,0,0,50), 		(1,0,0,75), 		(1,0,0,100),
			(2,1,10,1000), 	(2,1,20,2000), 		(2,1,30,3000), 		(2,1,50,5000), 	(2,1,100,10000),
			(3,1,50,300), 	(3,1,200,1200), 	(3,1,400,2400), 	(3,1,800,4800), (3,1,1600,9600),
			(4,4,10,25), 	(4,4,20,50), 		(4,4,30,75), 		(4,4,50,125), 	(4,4,100,250),	
			(5,1,20,40), 	(5,1,100,200), 		(5,1,200,400), 		(5,1,400,800), 	(5,1,800,1600)]

for FUNC, step, scale, nsamples, in structure:
	TRAIN_TAM = int(nsamples*0.7)
	for ALEA in [True, False]:
		arq = 0
		for param in ran:
			for i in param[1]:

				if ALEA:
					filename = "DLA_F" + str(FUNC) + "_" + str(len(param[0])) + "_" + str(nsamples) 
				else:
					filename = "DL_F" + str(FUNC) + "_" + str(len(param[0])) + "_" + str(nsamples)  
						
				if FUNC == 1:
					flag = "FUNC_1"

					def f(x):
						y = 0

						for i in list(range(1, x + 1)):
							y += 1/i

						return y

					if ALEA:
						flag += "_Alea"
						x_train = [random.randint(1,110) for x in list(range(0,nsamples))]
						
					else:
						x_train = list(range(1, nsamples + 1))
						x_train = np.random.permutation(x_train)

					y_train = np.array([f(x) for x in x_train], dtype = 'float32')
					x_train = np.array(x_train, dtype = 'float32')

					x_test = list(range(1, 121))
					y_test = np.array([f(x) for x in x_test], dtype = 'float32')
					x_test = np.array(x_test, dtype = 'float32')

				if FUNC == 2:
					flag = "FUNC_2"

					def f(x0,x1):
						return 2 - 2.1*math.cos(9.8*x0)*math.sin(1.3*x1)

					lim_inf = -50
					lim_sup = +50
	
					if ALEA:
						flag += "_Alea"
						px1 = list(np.random.uniform(lim_inf,lim_sup,nsamples))
						px2 = list(np.random.uniform(lim_inf,lim_sup,nsamples))
					else:
						px1 = [x*(1/scale) for x in list(range(int(lim_inf*scale), int(lim_sup*scale), step))]
						px2 = [y*(1/scale) for y in list(range(int(lim_inf*scale), int(lim_sup*scale), step))]
						px1 = np.random.permutation(px1)
						px2 = np.random.permutation(px2)
				
					pIn = list(zip(px1,px2))
					pOut = [f(px1, px2) for px1,px2 in pIn]

					x_train = np.array(pIn[:TRAIN_TAM], dtype = 'float32')
					y_train = np.array(pOut[:TRAIN_TAM], dtype = 'float32')

					x_test = np.array(pIn[TRAIN_TAM:], dtype = 'float32')
					y_test = np.array(pOut[TRAIN_TAM:], dtype = 'float32')

				if FUNC == 3:
					flag = "FUNC_3"
					def f(x0,x1,x2,x3,x4):
						return 10/(5 + (x0 - 3)**2 + (x1 - 3)**2 + (x2 - 3)**2 + (x3 - 3)**2 + (x4 - 3)**2)
				
					lim_inf = 0.05
					lim_sup = 6.05

					if ALEA:
						flag += "_Alea"
						px1 = list(np.random.uniform(0.05, 6.05, nsamples))
						px2 = list(np.random.uniform(0.05, 6.05, nsamples))
						px3 = list(np.random.uniform(0.05, 6.05, nsamples))
						px4 = list(np.random.uniform(0.05, 6.05, nsamples))
						px5 = list(np.random.uniform(0.05, 6.05, nsamples))
					else:
						px1 = [x*(1/scale) for x in list(range(int(lim_inf*scale), int(lim_sup*scale), step))]
						px1 = np.random.permutation(px1)

						px2 = [x*(1/scale) for x in list(range(int(lim_inf*scale), int(lim_sup*scale), step))]
						px2 = np.random.permutation(px2)

						px3 = [x*(1/scale) for x in list(range(int(lim_inf*scale), int(lim_sup*scale), step))]
						px3 = np.random.permutation(px3)

						px4 = [x*(1/scale) for x in list(range(int(lim_inf*scale), int(lim_sup*scale), step))]
						px4 = np.random.permutation(px4)

						px5 = [x*(1/scale) for x in list(range(int(lim_inf*scale), int(lim_sup*scale), step))]
						px5 = np.random.permutation(px5)

					px1t = list(np.random.uniform(-0.25, 6.35, 5000))
					px2t = list(np.random.uniform(-0.25, 6.35, 5000))
					px3t = list(np.random.uniform(-0.25, 6.35, 5000))
					px4t = list(np.random.uniform(-0.25, 6.35, 5000))
					px5t = list(np.random.uniform(-0.25, 6.35, 5000))

					x_train = np.array(list(zip(px1,px2,px3,px4,px5)), dtype = 'float32')
					y_train = np.array([f(x1,x2,x3,x4,x5) for x1,x2,x3,x4,x5 in x_train], dtype = 'float32')

					x_test = np.array(list(zip(px1t,px2t,px3t,px4t,px5t)), dtype = 'float32')
					y_test = np.array([f(x1,x2,x3,x4,x5) for x1,x2,x3,x4,x5 in x_test], dtype = 'float32')

				if FUNC == 4:
					flag = "FUNC_4"
					def f(x0,x1):
						return (1/(1 + x0**(-4)) + 1/(1 + x1**(-4)))

					lim_inf = -5
					lim_sup = +5

					if ALEA:
						flag += "_Alea"
						px = list(np.random.uniform(lim_inf,lim_sup,nsamples))
						py = list(np.random.uniform(lim_inf,lim_sup,nsamples))
					else:	
						px = [x*(1/scale) for x in list(range(int(lim_inf*scale), int(lim_sup*scale), step))]
						px = np.random.permutation(px)

						py = [y*(1/scale) for y in list(range(int(lim_inf*scale), int(lim_sup*scale), step))]
						py = np.random.permutation(py)

					pIn = list(zip(px,py))
					pOut = [f(x0, x1) for x0,x1 in pIn]

					x_train = np.array(pIn[:TRAIN_TAM], dtype = 'float32')
					y_train = np.array(pOut[:TRAIN_TAM], dtype = 'float32')

					x_test = np.array(pIn[TRAIN_TAM:], dtype = 'float32')
					y_test = np.array(pOut[TRAIN_TAM:], dtype = 'float32')

				if FUNC == 5:
					flag = "FUNC_5"
					def f(x):
						return math.log(x + 1) + math.log(1 + x**2)

					lim_inf = 0
					lim_sup = 2


					if ALEA:
						flag += "_Alea"
						px = list(np.random.uniform(lim_inf,lim_sup,nsamples))
					else:	
						px = [x*(1/scale) for x in list(range(int(lim_inf*scale), int(lim_sup*scale), step))]
						px = np.random.permutation(px)
			
					pOut = [f(x) for x in px]

					x_train = np.array(px[:TRAIN_TAM], dtype = 'float32')
					y_train = np.array(pOut[:TRAIN_TAM], dtype = 'float32')

					x_test = np.array(px[TRAIN_TAM:], dtype = 'float32')
					y_test = np.array(pOut[TRAIN_TAM:], dtype = 'float32')

				start = time.time()

				feature_columns = tf.contrib.learn.infer_real_valued_columns_from_input(x_train)
				regressor = tf.contrib.learn.DNNRegressor(feature_columns=feature_columns, hidden_units=param[0])

				# Fit
				regressor.fit(x = x_train, y = y_train, steps = 1000, batch_size = 32, input_fn = None, monitors = None, max_steps = None)

				y_predicted = list(regressor.predict(x_test, as_iterable=True))
				score = metrics.mean_squared_error(y_predicted, y_test)

				end = time.time()
				print('MSE: {0:f}'.format(score))
				
				tabela = list(zip(x_test, y_test, y_predicted))
				tabela = [("Inputs","f(x,y)", "f*(x,y)")] + tabela

				erro_percent = [abs(y_pred-y_true)/y_true for y_true, y_pred in zip(y_test, y_predicted)]

				info = open("Result_DL_EXP2_RELU_" + flag + ".csv", 'a')
				info.write(str(arq +1) + ',' + str(nsamples) + ',' + str(i + 1) + ',' + '{0:f}'.format(score) + ',' + str(sum(erro_percent)/len(erro_percent)) + ',' + str(end-start) + '\n')

				myfile = open("Saidas/SAIDA_RELU_" + filename + str(arq + 1) + "_" + str(i) + ".csv", 'w')
				wr = csv.writer(myfile)

				for row in tabela:
					wr.writerow(row)
			arq += 1