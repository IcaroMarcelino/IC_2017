from __future__ import absolute_import,division,print_function
import operator
import math
import random

import numpy

from deap import algorithms
from deap import base
from deap import creator
from deap import tools
from deap import gp
import numpy as np
#import pygraphviz as pgv
#from sympy import simplify, expand

import time
import csv

def main(NEXEC, TAM_MAX, NGEN, CXPB, MUTPB, NPOP, train_percent, verb, FILE_NAME, FUNC, ALEA, step, scale, nsamples, OPS, W, trig):
	TRAIN_TAM = int(train_percent*nsamples)

	def p_div(left, right):
		try:
			return left / right
		except ZeroDivisionError:
			return 1

	def p_ln(x):
		if x<=0:
			return 0
		else:
			return math.log(x)

	if FUNC == 1:
		flag = "FUNC_1"

		def f(x):
			y = 0

			for i in list(range(1, x + 1)):
				y += 1/i

			return y

		pset = gp.PrimitiveSet("MAIN", 1)
		if OPS:
			pset.addPrimitive(math.sin, 1)
		else:
			flag += "_Reduzido"

		pset.renameArguments(ARG0='x')

		if ALEA:
			flag += "_Alea"
			px = [random.randint(1,110) for x in list(range(0,nsamples))]
			
		else:
			px = list(range(1, nsamples + 1))
			px = np.random.permutation(px)

		py = [f(x) for x in px]
		
		px_test = list(range(1, 121))
		py_test = [f(x) for x in px_test]

		train_points 	= list(zip(px, py))
		test_points 	= list(zip(px_test, py_test))

	if FUNC == 2:
		flag = "FUNC_2"

		def f(x0,x1):
			return 2 - 2.1*math.cos(9.8*x0)*math.sin(1.3*x1)

		lim_inf = -50
		lim_sup = +50

		pset = gp.PrimitiveSet("MAIN", 2)

		if OPS:
			pset.addPrimitive(math.cos, 1)
			pset.addPrimitive(math.sin, 1)
		else:
			flag += "_Reduzido"

		if ALEA:
			flag += "_Alea"
			px1 = list(np.random.uniform(lim_inf,lim_sup,nsamples))
			px2 = list(np.random.uniform(lim_inf,lim_sup,nsamples))
		else:
			px1 = [x*(1/scale) for x in list(range(int(lim_inf*scale), int(lim_sup*scale), step))]
			px2 = [y*(1/scale) for y in list(range(int(lim_inf*scale), int(lim_sup*scale), step))]
			px1 = np.random.permutation(px1)
			px2 = np.random.permutation(px2)

				
		pset.renameArguments(ARG0='x1')
		pset.renameArguments(ARG1='x2')
		
		pIn = list(zip(px1,px2))
		pOut = [f(px1, px2) for px1,px2 in pIn]

		train_points 	= list(zip(pIn, pOut))[:TRAIN_TAM]
		test_points 	= list(zip(pIn, pOut))[TRAIN_TAM:]

	if FUNC == 3:
		flag = "FUNC_3"
		def f(x0,x1,x2,x3,x4):
			return 10/(5 + (x0 - 3)**2 + (x1 - 3)**2 + (x2 - 3)**2 + (x3 - 3)**2 + (x4 - 3)**2)

		pset = gp.PrimitiveSet("MAIN", 5)
		if OPS:
			pset.addPrimitive(math.sin, 1)
		else:
			flag += "_Reduzido"

		pset.renameArguments(ARG0='x1')
		pset.renameArguments(ARG1='x2')
		pset.renameArguments(ARG2='x3')
		pset.renameArguments(ARG3='x4')
		pset.renameArguments(ARG4='x5')

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

		pIn_train 	= list(zip(px1,px2,px3,px4,px5))
		pOut_train 	= [f(x1,x2,x3,x4,x5) for x1,x2,x3,x4,x5 in pIn_train]

		pIn_test 	= list(zip(px1t,px2t,px3t,px4t,px5t))
		pOut_test 	= [f(x1,x2,x3,x4,x5) for x1,x2,x3,x4,x5 in pIn_test]

		train_points 	= list(zip(pIn_train, pOut_train)) 
		test_points 	= list(zip(pIn_test, pOut_test)) 

	if FUNC == 4:
		flag = "FUNC_4"
		def f(x0,x1):
			return (1/(1 + x0**(-4)) + 1/(1 + x1**(-4)))

		lim_inf = -5
		lim_sup = +5

		pset = gp.PrimitiveSet("MAIN", 2)

		if OPS:
			pset.addPrimitive(math.sin, 1)
		else:
			flag += "_Reduzido"		

		if ALEA:
			flag += "_Alea"
			px = list(np.random.uniform(lim_inf,lim_sup,nsamples))
			py = list(np.random.uniform(lim_inf,lim_sup,nsamples))
		else:	
			px = [x*(1/scale) for x in list(range(int(lim_inf*scale), int(lim_sup*scale), step))]
			px = np.random.permutation(px)

			py = [y*(1/scale) for y in list(range(int(lim_inf*scale), int(lim_sup*scale), step))]
			py = np.random.permutation(py)

		pset.renameArguments(ARG0='x1')
		pset.renameArguments(ARG1='x2')

		pIn = list(zip(px,py))
		pOut = [f(x0, x1) for x0,x1 in pIn]

		train_points 	= list(zip(pIn, pOut))[:TRAIN_TAM]
		test_points 	= list(zip(pIn, pOut))[TRAIN_TAM:]

	if FUNC == 5:
		lim_inf = 0
		lim_sup = 2*math.pi

		if trig == 1:
			flag = "SIN"
			def f(W, x):
				return math.sin(W*x)
		if trig == 2:
			flag = "COS"
			def f(W, x):
				return math.cos(W*x)
		if trig == 3:
			flag = "TAN"
			def f(W, x):
				return math.tan(W*x)
		if trig == 4:
			flag = "SEC"
			def f(W, x):
				return 1/math.cos(W*x)
		if trig == 5:
			flag = "COSSEC"
			def f(W, x):
				lim_inf = 0.001
				return 1/math.sin(W*x)
									
									
		if ALEA:
			flag += "_Alea"
			px = list(np.random.uniform(lim_inf,lim_sup,nsamples))
		else:	
			px = [x*(1/scale) for x in list(range(int(lim_inf*scale), int(lim_sup*scale), step))]
			px = np.random.permutation(px)

		for elem in px:
			if elem > 1e6:
				px.remove(elem)

		pOut = [f(W,x) for x in px]

		x_train = np.array(px[:TRAIN_TAM], dtype = 'float32')
		y_train = np.array(pOut[:TRAIN_TAM], dtype = 'float32')

		x_test = np.array(px[TRAIN_TAM:], dtype = 'float32')
		y_test = np.array(pOut[TRAIN_TAM:], dtype = 'float32')

		pset = gp.PrimitiveSet("MAIN", 1)

		if ALEA:
			flag += "_Alea"
			px = list(np.random.uniform(lim_inf,lim_sup,nsamples))
		else:	
			px = [x*(1/scale) for x in list(range(int(lim_inf*scale), int(lim_sup*scale), step))]
			px = np.random.permutation(px)

		pset.renameArguments(ARG0='x')

		pOut = [f(x) for x in px]

		train_points 	= list(zip(px, pOut))[:TRAIN_TAM]
		test_points 	= list(zip(px, pOut))[TRAIN_TAM:]


	########## Operator Set #########################################
	pset.addPrimitive(operator.add, 2)
	pset.addPrimitive(operator.sub, 2)
	pset.addPrimitive(operator.mul, 2)
	pset.addPrimitive(p_div, 2)
	pset.addPrimitive(operator.neg, 1)
	pset.addTerminal(1)
	pset.addTerminal(2)

	#################################################################

	creator.create("FitnessMin", base.Fitness, weights=(-1.0,))
	creator.create("Individual", gp.PrimitiveTree, fitness=creator.FitnessMin)
	toolbox = base.Toolbox()
	toolbox.register("expr", gp.genHalfAndHalf, pset=pset, min_=1, max_=2)
	toolbox.register("individual", tools.initIterate, creator.Individual, toolbox.expr)
	toolbox.register("population", tools.initRepeat, list, toolbox.individual)
	toolbox.register("compile", gp.compile, pset=pset)

	def evalSymbReg(individual, points):
		# Transform the tree expression in a callable function
		f_approx = toolbox.compile(expr=individual)
		# Evaluate the mean squared error between the expression and the real function
		# sqerrors = ((f_approx(x,y) - f(x,y))**2 for x,y in points)
		
		sqerrors = []
		for x,y in points:
			try:
				try:
					F1 = f_approx(*x)
				except TypeError:
					F1 = f_approx(x)
			except ValueError:
				F1 = 1e30
			
			sqerrors.append((F1 - y)**2)
	
		return math.fsum(sqerrors) / len(points),

	toolbox.register("evaluate", evalSymbReg, points = train_points)
	toolbox.register("select", tools.selTournament, tournsize=3)
	toolbox.register("mate", gp.cxOnePoint)
	toolbox.register("expr_mut", gp.genFull, min_=1, max_=2)
	toolbox.register("mutate", gp.mutUniform, expr=toolbox.expr_mut, pset=pset)

	toolbox.decorate("mate", gp.staticLimit(key=operator.attrgetter("height"), max_value = TAM_MAX))
	toolbox.decorate("mutate", gp.staticLimit(key=operator.attrgetter("height"), max_value = TAM_MAX))

	start = time.time()
	random.seed(318)

	# def melhor(n, hof_true):
	# 	hof = tools.HallOfFame(n)
		
	# 	if (len(hof)>0):
	# 		if (hof[0].fitness.values[0] == 'nan')&(hof_true != []):
	# 			return [hof_true]

	# 	hof_true = hof
	# 	return hof

	# hof_true = []
	# hof = melhor(1,hof_true)

	stats_fit = tools.Statistics(lambda ind: ind.fitness.values)
	stats_size = tools.Statistics(lambda ind: ind.height)
	mstats = tools.MultiStatistics(fitness=stats_fit, size=stats_size)
	mstats.register("avg", numpy.mean)
	mstats.register("std", numpy.std)
	mstats.register("min", numpy.min)
	mstats.register("max", numpy.max)

	pop = toolbox.population(NPOP)
	
	# pop, log = algorithms.eaSimple(population = pop, toolbox = toolbox, cxpb = CXPB, mutpb = MUTPB, ngen = NGEN, stats = mstats,
	# 							   halloffame = hof, verbose = True)
	
	fitnesses = list(map(toolbox.evaluate, pop))
	for ind, fit in zip(pop, fitnesses):
		ind.fitness.values = fit
		if (math.isnan(fit[0])):
				ind.fitness.values = 1e30,
		else:
			ind.fitness.values = fit

	log = tools.Logbook()
	hof = tools.selBest(pop, 1)

	print(">> Regressao Numerica com GP: ")
	print(">> " + str(len(train_points)) + " amostras;" + "tamanho max da arvore: " + str(TAM_MAX))
	print(">> Inicio (Execucao " + str(NEXEC) +")")
	for g in range(NGEN):
		geninit = time.time()
		pop = toolbox.select(pop, len(pop))

		offspring = algorithms.varAnd(pop, toolbox, CXPB, MUTPB)

		fitnesses = list(map(toolbox.evaluate, offspring))
		for ind, fit in zip(offspring, fitnesses):
			if (math.isnan(fit[0])):
				ind.fitness.values = 1e30,
			else:
				ind.fitness.values = fit

		hof = tools.selBest(pop, 1)
		pop[:] = offspring + hof

		log.record(gen = g, time = time.time() - geninit,**mstats.compile(pop))

		if(verb == True):
			print(log.stream)

	end = time.time()

	logfile = open("Log_Exec/LOG_" + filename + "_" + str(NEXEC + 1) + ".csv", 'w')
	logfile.write(str(log))
	print(">> Fim da execucao (" + str(end - start) + " segundos)\n")


	# final_eq = expand(simplify(convertFunct(hof[0])))
	# print("Resultado da regressao: %s\n" % final_eq)

	tree = gp.PrimitiveTree(hof[0])
	function = gp.compile(tree, pset)
	expFILE = open("Grafos_Melhores/EXPR_" + filename + "_" +  str(NEXEC + 1) + ".txt", 'w')
	expFILE.write(str(tree))
	
	f_xy_approx = []
	mse_final = []
	erro_percent = []

	for x,y in test_points:
		try:
			try:
				F1 = function(*x)
			except TypeError:
				F1 = function(x)
		except ValueError:
			F1 = float('nan')
		f_xy_approx.append(F1)
		mse_final.append((F1-y)**2)
		erro_percent.append(abs(F1-y)/y)

	tabela = []
	count = 0
	for pt,yp in zip(train_points,f_xy_approx):
		tabela.append([])

		if len(list(pt)) > 2:
			for inputs_, output in pt:
				for input_ in inputs_:
					tabela[count] += [input_]
		else:
			tabela[count] += list(pt)

		tabela[count] += [yp]
		count += 1

	saida = open("Saidas/SAIDA_" + filename + "_" + str(NEXEC + 1) + ".csv", 'w')
	wr = csv.writer(saida)
	for row in tabela:
		wr.writerow(row)

	info = open("Info/INFO_" + filename + ".csv", 'a')
	if (NEXEC == 0):
		info.write("Altura Maxima,#Amostras,#Execucao,MSE (Melhor), ErroPercentual, Altura (Melhor),Tempo Execucao\n")

	info.write(str(TAM_MAX) + ',' + str(len(train_points)) + ',' +  str(NEXEC + 1) + ',' + str(sum(mse_final)/len(mse_final)) + ',' +  str(sum(erro_percent)/len(erro_percent)) +  ',' + str(hof[0].height) + ',' + str(end-start) + '\n')

	info1 = open("Result_GP_EXP2_" + flag + ".csv", 'a')
	info1.write(str(TAM_MAX) + ',' + str(len(train_points)) + ',' +  str(NEXEC + 1) + ',' + str(sum(mse_final)/len(mse_final)) + ','+  str(sum(erro_percent)/len(erro_percent)) +  ',' + str(hof[0].height) + ',' + str(end-start) + '\n')

	#nodes, edges, labels = gp.graph(hof[0])

	#g = pgv.AGraph()
	#g.add_nodes_from(nodes)
	#g.add_edges_from(edges)
	#g.layout(prog="dot")

	#for i in nodes:
	#	n = g.get_node(i)
	#	n.attr["label"] = labels[i]

	#g.draw("Grafos_Melhores/GRAPF_" + filename +  "_" + str(NEXEC + 1) + ".pdf")
	hof = []

if __name__ == "__main__":
	NGEN = 300
	CXPB = .85
	MUTPB = .15
	NPOP = 300
	train_percent = 0.7

	tam_max_tree = [34]

	param = [(5,1,500/(2*math.pi/500),500)]

	for funcao,step_,scale_,nsamples_ in param:
		for alea in [True, False]:
			for W in [1,5,25,125]:
				for tam_max in tam_max_tree:
					for t in [1,2,3,4,5]:
						for n in list(range(0,10)):
				
							if alea:
								filename = "GPA_F" + str(funcao) + "_" + str(tam_max) + "_" + str(nsamples_) + "Freq" + str(W)
							else:
								filename = "GP_F" + str(funcao) + "_" + str(tam_max) + "_" + str(nsamples_) + "Freq" + str(W) 

							main(	NEXEC = n, 		TAM_MAX = tam_max, 		NGEN = NGEN,	CXPB = CXPB, 	MUTPB = MUTPB,	
									NPOP = NPOP, 	train_percent = train_percent, 			verb = False,	FILE_NAME = filename, 	
									FUNC = funcao, 	ALEA = alea, 			step = step_,	scale = scale_, nsamples = nsamples_, 	
									OPS = False, W = W, trig = t)
