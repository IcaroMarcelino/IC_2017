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

def main(NEXEC, TAM_MAX, pointsX, pointsY, NGEN, CXPB, MUTPB, NPOP, train_percent, verb, FILE_NAME):
	# Define new functions
	def div(left, right):
		try:
			return left / right
		except ZeroDivisionError:
			return 1

	########## Operator Set #########################################
	pset = gp.PrimitiveSet("MAIN", 5)
	pset.addPrimitive(operator.add, 2)
	pset.addPrimitive(operator.sub, 2)
	pset.addPrimitive(operator.mul, 2)
	pset.addPrimitive(div, 2)
	pset.addPrimitive(operator.neg, 1)
	pset.addPrimitive(math.cos, 1)
	pset.addPrimitive(math.sin, 1)
	pset.addTerminal(1)
	pset.addTerminal(2)
	pset.renameArguments(ARG0='x1')
	pset.renameArguments(ARG1='x2')
	pset.renameArguments(ARG2='x3')
	pset.renameArguments(ARG3='x4')
	pset.renameArguments(ARG4='x5')

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
				F1 = f_approx(*x)
			except ValueError:
				F1 = 1e30
			
			sqerrors.append((F1 - y)**2)
			
		return math.fsum(sqerrors) / len(points),


	points = list(zip(pointsX, pointsY))

	TRAIN_TAM = int(train_percent*len(pointsX))
	TEST_TAM = int((1 - train_percent)*len(pointsX))
	print(TRAIN_TAM)
	print(TEST_TAM)

	toolbox.register("evaluate", evalSymbReg, points = points[:TRAIN_TAM])
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
	print(">> " + str(len(points)) + " amostras;" + "tamanho max da arvore: " + str(TAM_MAX))
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
	
	px_test = pointsX[TEST_TAM:]
	py_test = pointsY[TEST_TAM:]
	f_xy = [y for x,y in points[TEST_TAM:]]

	f_xy_approx = []
	mse_final = []
	for x,y in points[TEST_TAM:]:
		try:
			F1 = function(*x)
		except ValueError:
			F1 = float('nan')
		f_xy_approx.append(F1)
		mse_final.append((F1-y)**2)

	tabela = list(zip(px_test[0],px_test[1],px_test[2],px_test[3],px_test[4], py_test, f_xy_approx))
	tabela = [('x0','x1','x2','x3','x4', "f(x,y)", "f*(x,y)")] + tabela

	saida = open("Saidas/SAIDA_" + filename + "_" + str(NEXEC + 1) + ".csv", 'w')
	wr = csv.writer(saida)
	for row in tabela:
		wr.writerow(row)

	info = open("Info/INFO_" + filename + ".csv", 'a')
	if (NEXEC == 0):
		info.write("Altura Maxima,#Amostras,#Execucao,MSE (Melhor),Altura (Melhor),Tempo Execucao\n")

	info.write(str(TAM_MAX) + ',' + str(len(points)) + ',' +  str(NEXEC + 1) + ',' + str(sum(mse_final)/len(mse_final)) + ',' + str(hof[0].height) + ',' + str(end-start) + '\n')

	info1 = open("INFO_GP_EXP2.csv", 'a')
	info1.write(str(TAM_MAX) + ',' + str(len(points)) + ',' +  str(NEXEC + 1) + ',' + str(sum(mse_final)/len(mse_final)) + ',' + str(hof[0].height) + ',' + str(end-start) + '\n')

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

	tam_max_tree = [5,10,17,34,68]

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

	for tam_max in tam_max_tree:
		for n in list(range(0,10)):
			px,py = lerBase('airfoil_self_noise.dat')
			
			filename = "GP_TreeMax" + str(tam_max) + "_Samples" + str(len(px))

			main(	NEXEC = n, 		TAM_MAX = tam_max, 	pointsX = px, 	pointsY = py, 	NGEN = NGEN,	CXPB = CXPB, 	
					MUTPB = MUTPB, 		NPOP = NPOP, 	train_percent = train_percent, 	verb = True,	FILE_NAME = filename)
