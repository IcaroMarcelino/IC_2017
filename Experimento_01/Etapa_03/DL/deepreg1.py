from __future__ import absolute_import,division,print_function

from sklearn.model_selection import train_test_split
from sklearn import metrics, preprocessing

import tensorflow as tf
import math
import numpy as np
import csv
import random

import time
ran = [[[10,10,10,10,10,10,10,10,10], range(100,110)]]
arq = 0

def lerBase(nome_arquivo):
	bd = open(nome_arquivo, 'r').readlines()
	i = 0
	px = []
	py = []
	bd.pop(0)
	random.shuffle(bd)
	for linha in bd:
		bd[i] = linha.split('\t')
		ncol = len(bd[i])-1
		bd[i][ncol] = bd[i][ncol].split("\n")
		bd[i][ncol] = bd[i][ncol][0]
		px.append([float(x) for x in bd[i][:5]])
		py.append(float(bd[i][5:][0]))
		i += 1
	return px,py

for param in ran:
	for i in param[1]:
		px,py = lerBase('airfoil_self_noise.dat')

		start = time.time()

		XY_f1 = np.array(px, dtype = 'float32')
		F1_XY = np.array(py, dtype = 'float32')

		# Split dataset into train / test
		x_train, x_test, y_train, y_test = train_test_split(XY_f1, F1_XY, test_size=0.3, random_state=42)

		# Scale data (training set) to 0 mean and unit standard deviation.
		#scaler = preprocessing.StandardScaler()
		#x_train = scaler.fit_transform(x_train)

		# Build 2 layer fully connected DNN with 10, 10 units respectively.
		feature_columns = tf.contrib.learn.infer_real_valued_columns_from_input(x_train)
		regressor = tf.contrib.learn.DNNRegressor(feature_columns=feature_columns, hidden_units=param[0])

		# Fit
		regressor.fit(x = x_train, y = y_train, steps = 1375000, batch_size = 50, input_fn = None, monitors = None, max_steps = None)

		# Predict and score
		y_predicted = list(regressor.predict(x_test, as_iterable=True))
		score = metrics.mean_squared_error(y_predicted, y_test)

		
		end = time.time()
		print('MSE: {0:f}'.format(score))
		info = open("INFO_DL_EXP_EXTRA.csv", 'a')
		info.write(str(arq +1) + ',' + str(len(XY_f1)) + ',' + str(i) + ',' + '{0:f}'.format(score) + ',' + str(end-start) + '\n')

		tabela = [('x0', 'x1','x2', 'x3','x4', "f(x,y)", "f*(x,y)")]
		for xt,yt,yp in zip(x_test,y_test,y_predicted):
			tabela.append(list((xt[0],xt[1],xt[2],xt[3],xt[4],yt,yp)))

		myfile = open("Saidas/SAIDA_EXP2_DL_ARQ" + str(arq +1) + "_Samples" + str(len(XY_f1)) + "_EXEC" + str(i) + ".csv", 'w')
		wr = csv.writer(myfile)

		for row in tabela:
			wr.writerow(row)
	arq += 1
				
