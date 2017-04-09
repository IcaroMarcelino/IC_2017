from __future__ import absolute_import,division,print_function

from sklearn.model_selection import train_test_split
from sklearn import metrics, preprocessing

import tensorflow as tf
import math
import numpy as np
import csv

import time
ran = [[[10,10,10,10,10,10,10,10,10], range(0,10)], [[10,10,10,10,10,10,10], range(10,20)], [[10,10,10,10,10], range(20,30)], [[10,10,10], range(30,40)], [[10], range(40,50)]]
step_samples = [1000, 2000, 3000, 5000, 10000]
lim_inf = -50
lim_sup = +50

arq = 0
for param in ran:
	for step, scale in step_samples:
		for i in param[1]:
			start = time.time()
			################ Samples #####################################
			X_f1 = list(np.random.uniform(lim_inf,lim_sup,nsamples))
			Y_f1 = list(np.random.uniform(lim_inf,lim_sup,nsamples))
			XY_f1 = list(zip(X_f1, Y_f1))


		

			############### Functions for regression #####################
			# def f1(x,y):
			# 	return (1/(1 + x**(-4))) + (1/(1 + y**(-4)))

			def f1(x,y):
				return 2 - 2.1*math.sin(1.3*x)*math.cos(9.8*y)

			XY_f1 = np.array(XY_f1, dtype = 'float32')
			F1_XY = np.array([f1(x_,y_) for x_,y_ in XY_f1],
							dtype = 'float32')

			# Split dataset into train / test
			x_train, x_test, y_train, y_test = train_test_split(XY_f1, F1_XY, test_size=0.3, random_state=42)

			# Scale data (training set) to 0 mean and unit standard deviation.
			#scaler = preprocessing.StandardScaler()
			#x_train = scaler.fit_transform(x_train)

			# Build 2 layer fully connected DNN with 10, 10 units respectively.
			feature_columns = tf.contrib.learn.infer_real_valued_columns_from_input(x_train)
			regressor = tf.contrib.learn.DNNRegressor(feature_columns=feature_columns, hidden_units=param[0])

			# Fit
			regressor.fit(x = x_train, y = y_train, steps = 1000, batch_size = 32, input_fn = None, monitors = None, max_steps = None)

			# Transform
			#x_transformed = scaler.transform(x_test)
			x_transformed = x_test

			# Predict and score
			y_predicted = list(regressor.predict(x_transformed, as_iterable=True))
			score = metrics.mean_squared_error(y_predicted, y_test)

			xv = []
			result = []
			for count in range(len(X_f1)):
				xv.append([X_f1[count], Y_f1[count]])
				result.append(f1(XY_f1[count][0], XY_f1[count][1]))
			xv = np.array(xv, dtype = 'float32')

			end = time.time()
			print('MSE: {0:f}'.format(score))
			info = open("INFO_DL_EXP2_Alea.csv", 'a')
			info.write(str(arq +1) + ',' + str(len(XY_f1)) + ',' + str(i) + ',' + '{0:f}'.format(score) + ',' + str(end-start) + '\n')

			tabela = list(zip(X_f1, Y_f1, result, list(regressor.predict(x = xv, as_iterable=True))))
			tabela = [('x', 'y', "f(x,y)", "f*(x,y)")] + tabela

			myfile = open("SaidasAlea/SAIDA_EXP2_DL_ARQ" + str(arq +1) + "_Samples" + str(len(XY_f1)) + "_EXEC" + str(i) + ".csv", 'w')
			wr = csv.writer(myfile)

			for row in tabela:
				wr.writerow(row)
	arq += 1
				
