par(mfrow = c(1,2))
legend("topleft", legend=c("Amostragem Aleat�ria","Amostragem com Passo"),fill=c("red", "blue"), bty="n")
mtext("N�mero de Amostras.Tamanho M�ximo de �rvore", side=1, line=4)

#boxplot(as.numeric(unlist(gp_f4[5]*100))~as.numeric(unlist(gp_f4[2]))*as.numeric(unlist(gp_f4[1])), las = 2, ylim=(c(0,70)), border = "blue", col = rgb(0.5,0.5,1, alpha = 0.5), main = "Genetic Programming\nFun��o 1", ylab = "Erro percentual (%)")
#boxplot(as.numeric(unlist(gpa_f4[5]*100))~as.numeric(unlist(gpa_f4[2]))*as.numeric(unlist(gpa_f4[1])), las = 2, ylim=(c(0,70)), border = "red", col = rgb(1,0.5,0.5, alpha = 0.5), add= TRUE)

#boxplot(abs(as.numeric(unlist(gp_f2[5]*100)))~as.numeric(unlist(gp_f2[2]))*as.numeric(unlist(gp_f2[1])), las = 2, ylim=(c(0,300)), border = "blue", col = rgb(0.5,0.5,1, alpha = 0.5), main = "Genetic Programming\nFun��o 2 ", ylab = "Erro percentual (%)")
#boxplot(as.numeric(abs(unlist(gpa_f2[5]*100)))~as.numeric(unlist(gpa_f2[2]))*as.numeric(unlist(gpa_f2[1])), las = 2, ylim=(c(0,300)), border = "red", col = rgb(1,0.5,0.5, alpha = 0.5), add= TRUE)

#boxplot(as.numeric(unlist(gp_f1[5]*100))~as.numeric(unlist(gp_f1[2]))*as.numeric(unlist(gp_f1[1])), las = 2, ylim=(c(0,70)), border = "blue", col = rgb(0.5,0.5,1, alpha = 0.5), main = "Genetic Programming\nFun��o 3", ylab = "Erro percentual (%)")
#boxplot(as.numeric(unlist(gpa_f1[5]*100))~as.numeric(unlist(gpa_f1[2]))*as.numeric(unlist(gpa_f1[1])), las = 2, ylim=(c(0,70)), border = "red", col = rgb(1,0.5,0.5, alpha = 0.5), add= TRUE)

boxplot(as.numeric(unlist(gp_f3[5]*100))~as.numeric(unlist(gp_f3[2]))*as.numeric(unlist(gp_f3[1])), las = 2, ylim=(c(0,70)), border = "blue", col = rgb(0.5,0.5,1, alpha = 0.5), main = "Genetic Programming\nFun��o 4", ylab = "Erro percentual (%)")
boxplot(as.numeric(unlist(gpa_f3[5]*100))~as.numeric(unlist(gpa_f3[2]))*as.numeric(unlist(gpa_f3[1])), las = 2, ylim=(c(0,70)), border = "red", col = rgb(1,0.5,0.5, alpha = 0.5), add= FALSE)

#boxplot(as.numeric(unlist(gp_f5[5]*100))~as.numeric(unlist(gp_f5[2]))*as.numeric(unlist(gp_f5[1])), las = 2, ylim=(c(0,20)), border = "blue", col = rgb(0.5,0.5,1, alpha = 0.5), main = "Genetic Programming\nFun��o 5", ylab = "Erro percentual (%)")
#boxplot(as.numeric(unlist(gpa_f5[5]*100))~as.numeric(unlist(gpa_f5[2]))*as.numeric(unlist(gpa_f5[1])), las = 2, ylim=(c(0,20)), border = "red", col = rgb(1,0.5,0.5, alpha = 0.5), add= TRUE)

boxplot(as.numeric(unlist(gpr_f4[5]*100))~as.numeric(unlist(gpr_f4[2]))*as.numeric(unlist(gpr_f4[1])), las = 2, ylim=(c(0,70)), border = "blue", col = rgb(0.5,0.5,1, alpha = 0.5), main = "Genetic Programming\nFun��o 1 - GP Reduzido", ylab = "Erro percentual (%)")
boxplot(as.numeric(unlist(gpra_f4[5]*100))~as.numeric(unlist(gpra_f4[2]))*as.numeric(unlist(gpra_f4[1])), las = 2, ylim=(c(0,70)), border = "red", col = rgb(1,0.5,0.5, alpha = 0.5), add= TRUE)

boxplot(abs(as.numeric(unlist(gpr_f2[5]*100)))~as.numeric(unlist(gpr_f2[2]))*as.numeric(unlist(gpr_f2[1])), las = 2, ylim=(c(0,70)), border = "blue", col = rgb(0.5,0.5,1, alpha = 0.5), main = "Genetic Programming\nFun��o 2 GP - Reduzido", ylab = "Erro percentual (%)")
boxplot(as.numeric(abs(unlist(gpra_f2[5]*100)))~as.numeric(unlist(gpra_f2[2]))*as.numeric(unlist(gpra_f2[1])), las = 2, ylim=(c(0,70)), border = "red", col = rgb(1,0.5,0.5, alpha = 0.5), add= TRUE)

boxplot(as.numeric(unlist(gpr_f1[5]*100))~as.numeric(unlist(gpr_f1[2]))*as.numeric(unlist(gpr_f1[1])), las = 2, ylim=(c(0,70)), border = "blue", col = rgb(0.5,0.5,1, alpha = 0.5), main = "Genetic Programming\nFun��o 3 - GP Reduzido", ylab = "Erro percentual (%)")
boxplot(as.numeric(unlist(gpra_f1[5]*100))~as.numeric(unlist(gpra_f1[2]))*as.numeric(unlist(gpra_f1[1])), las = 2, ylim=(c(0,70)), border = "red", col = rgb(1,0.5,0.5, alpha = 0.5), add= TRUE)

boxplot(as.numeric(unlist(gpr_f3[5]*100))~as.numeric(unlist(gpr_f3[2]))*as.numeric(unlist(gpr_f3[1])), las = 2, ylim=(c(0,70)), border = "blue", col = rgb(0.5,0.5,1, alpha = 0.5), main = "Genetic Programming\nFun��o 4 - GP Reduzido", ylab = "Erro percentual (%)")
boxplot(as.numeric(unlist(gpra_f3[5]*100))~as.numeric(unlist(gpra_f3[2]))*as.numeric(unlist(gpra_f3[1])), las = 2, ylim=(c(0,70)), border = "red", col = rgb(1,0.5,0.5, alpha = 0.5), add= FALSE)

boxplot(as.numeric(unlist(gpr_f5[5]*100))~as.numeric(unlist(gpr_f5[2]))*as.numeric(unlist(gpr_f5[1])), las = 2, ylim=(c(0,20)), border = "blue", col = rgb(0.5,0.5,1, alpha = 0.5), main = "Genetic Programming\nFun��o 5 - GP Reduzido", ylab = "Erro percentual (%)")
boxplot(as.numeric(unlist(gpra_f5[5]*100))~as.numeric(unlist(gpra_f5[2]))*as.numeric(unlist(gpra_f5[1])), las = 2, ylim=(c(0,20)),  border = "red", col = rgb(1,0.5,0.5, alpha = 0.5), add= TRUE)

par(mfrow = c(2,3))

#boxplot(as.numeric(unlist(gp_f4[4]))~as.numeric(unlist(gp_f4[2]))*as.numeric(unlist(gp_f4[1])), las = 2, ylim=(c(0,5)), border = "blue", col = rgb(0.5,0.5,1, alpha = 0.5), main = "Genetic Programming\nFun��o 1", ylab = "MSE")
#boxplot(as.numeric(unlist(gpa_f4[4]))~as.numeric(unlist(gpa_f4[2]))*as.numeric(unlist(gpa_f4[1])), las = 2, ylim=(c(0,5)), border = "red", col = rgb(1,0.5,0.5, alpha = 0.5), add= TRUE)

#boxplot(abs(as.numeric(unlist(gp_f2[4])))~as.numeric(unlist(gp_f2[2]))*as.numeric(unlist(gp_f2[1])), las = 2, ylim=(c(0,5)), border = "blue", col = rgb(0.5,0.5,1, alpha = 0.5), main = "Genetic Programming\nFun��o 2 ", ylab = "MSE")
#boxplot(as.numeric(abs(unlist(gpa_f2[4])))~as.numeric(unlist(gpa_f2[2]))*as.numeric(unlist(gpa_f2[1])), las = 2, ylim=(c(0,5)), border = "red", col = rgb(1,0.5,0.5, alpha = 0.5), add= TRUE)

boxplot(as.numeric(unlist(gp_f1[4]))~as.numeric(unlist(gp_f1[2]))*as.numeric(unlist(gp_f1[1])), las = 2, ylim=(c(0,3)), border = "blue", col = rgb(0.5,0.5,1, alpha = 0.5), main = "Genetic Programming\nFun��o 3", ylab = "MSE")
boxplot(as.numeric(unlist(gpa_f1[4]))~as.numeric(unlist(gpa_f1[2]))*as.numeric(unlist(gpa_f1[1])), las = 2, ylim=(c(0,3)), border = "red", col = rgb(1,0.5,0.5, alpha = 0.5), add= TRUE)

boxplot(as.numeric(unlist(gp_f3[4]))~as.numeric(unlist(gp_f3[2]))*as.numeric(unlist(gp_f3[1])), las = 2, ylim=(c(0,.1)), border = "blue", col = rgb(0.5,0.5,1, alpha = 0.5), main = "Genetic Programming\nFun��o 4", ylab = "MSE")
boxplot(as.numeric(unlist(gpa_f3[4]))~as.numeric(unlist(gpa_f3[2]))*as.numeric(unlist(gpa_f3[1])), las = 2, ylim=(c(0,.1)), border = "red", col = rgb(1,0.5,0.5, alpha = 0.5), add= TRUE)

boxplot(as.numeric(unlist(gp_f5[4]))~as.numeric(unlist(gp_f5[2]))*as.numeric(unlist(gp_f5[1])), las = 2, ylim=(c(0,.002)), border = "blue", col = rgb(0.5,0.5,1, alpha = 0.5), main = "Genetic Programming\nFun��o 5", ylab = "")
boxplot(as.numeric(unlist(gpa_f5[4]))~as.numeric(unlist(gpa_f5[2]))*as.numeric(unlist(gpa_f5[1])), las = 2, ylim=(c(0,.002)), border = "red", col = rgb(1,0.5,0.5, alpha = 0.5), add= TRUE)

#boxplot(as.numeric(unlist(gpr_f4[4]))~as.numeric(unlist(gpr_f4[2]))*as.numeric(unlist(gpr_f4[1])), las = 2, ylim=(c(0,1)), border = "blue", col = rgb(0.5,0.5,1, alpha = 0.5), main = "Genetic Programming\nFun��o 1GP Reduzido", ylab = "MSE")
#boxplot(as.numeric(unlist(gpra_f4[4]))~as.numeric(unlist(gpra_f4[2]))*as.numeric(unlist(gpra_f4[1])), las = 2, ylim=(c(0,1)), border = "red", col = rgb(1,0.5,0.5, alpha = 0.5), add= TRUE)

#boxplot(abs(as.numeric(unlist(gpr_f2[4])))~as.numeric(unlist(gpr_f2[2]))*as.numeric(unlist(gpr_f2[1])), las = 2, ylim=(c(0,1)), border = "blue", col = rgb(0.5,0.5,1, alpha = 0.5), main = "Genetic Programming\nFun��o 2 GP Reduzido", ylab = "MSE")
#boxplot(as.numeric(abs(unlist(gpra_f2[4])))~as.numeric(unlist(gpra_f2[2]))*as.numeric(unlist(gpra_f2[1])), las = 2, ylim=(c(0,1)), border = "red", col = rgb(1,0.5,0.5, alpha = 0.5), add= TRUE)

boxplot(as.numeric(unlist(gpr_f1[4]))~as.numeric(unlist(gpr_f1[2]))*as.numeric(unlist(gpr_f1[1])), las = 2, ylim=(c(0,3)), border = "blue", col = rgb(0.5,0.5,1, alpha = 0.5), main = "Genetic Programming\nFun��o 3GP Reduzido", ylab = "MSE")
boxplot(as.numeric(unlist(gpra_f1[4]))~as.numeric(unlist(gpra_f1[2]))*as.numeric(unlist(gpra_f1[1])), las = 2, ylim=(c(0,3)), border = "red", col = rgb(1,0.5,0.5, alpha = 0.5), add= TRUE)

boxplot(as.numeric(unlist(gpr_f3[4]))~as.numeric(unlist(gpr_f3[2]))*as.numeric(unlist(gpr_f3[1])), las = 2, ylim=(c(0,.1)), border = "blue", col = rgb(0.5,0.5,1, alpha = 0.5), main = "Genetic Programming\nFun��o 4GP Reduzido", ylab = "MSE")
boxplot(as.numeric(unlist(gpra_f3[4]))~as.numeric(unlist(gpra_f3[2]))*as.numeric(unlist(gpra_f3[1])), las = 2, ylim=(c(0,.1)), border = "red", col = rgb(1,0.5,0.5, alpha = 0.5), add= TRUE)

boxplot(as.numeric(unlist(gpr_f51[4]))~as.numeric(unlist(gpr_f51[2]))*as.numeric(unlist(gpr_f51[1])), las = 2, ylim=(c(0,1)), border = "blue", col = rgb(0.5,0.5,1, alpha = 0.5), main = "Genetic Programming\nFun��o 5GP Reduzido", ylab = "MSE")
boxplot(as.numeric(unlist(gpra_f5[4]))~as.numeric(unlist(gpra_f5[2]))*as.numeric(unlist(gpra_f5[1])), las = 2, ylim=(c(0,1)),  border = "red", col = rgb(1,0.5,0.5, alpha = 0.5), add= TRUE)







par(mfrow = c(2, 5))
boxplot(as.numeric(unlist(gpr_f1[5]))~as.numeric(unlist(gpr_f1[2]))*as.numeric(unlist(gpr_f1[1])), las = 2)
boxplot(abs(as.numeric(unlist(gpr_f2[5])))~as.numeric(unlist(gpr_f2[2]))*as.numeric(unlist(gpr_f2[1])), las = 2)
boxplot(as.numeric(unlist(gpr_f3[5]))~as.numeric(unlist(gpr_f3[2]))*as.numeric(unlist(gpr_f3[1])), las = 2)
boxplot(as.numeric(unlist(gpr_f4[5]))~as.numeric(unlist(gpr_f4[2]))*as.numeric(unlist(gpr_f4[1])), las = 2)
boxplot(as.numeric(unlist(gpr_f5[5]))~as.numeric(unlist(gpr_f5[2]))*as.numeric(unlist(gpr_f5[1])), las = 2)

boxplot(as.numeric(unlist(gpra_f1[5]))~as.numeric(unlist(gpra_f1[2]))*as.numeric(unlist(gpra_f1[1])), las = 2)
boxplot(as.numeric(abs(unlist(gpra_f2[5])))~as.numeric(unlist(gpra_f2[2]))*as.numeric(unlist(gpra_f2[1])), las = 2)
boxplot(as.numeric(unlist(gpra_f3[5]))~as.numeric(unlist(gpra_f3[2]))*as.numeric(unlist(gpra_f3[1])), las = 2)
boxplot(as.numeric(unlist(gpra_f4[5]))~as.numeric(unlist(gpra_f4[2]))*as.numeric(unlist(gpra_f4[1])), las = 2)
boxplot(as.numeric(unlist(gpra_f5[5]))~as.numeric(unlist(gpra_f5[2]))*as.numeric(unlist(gpra_f5[1])), las = 2)

par(mfrow = c(2, 5))
boxplot(as.numeric(unlist(gp_f1[5]))~as.numeric(unlist(gp_f1[1]))*as.numeric(unlist(gp_f1[1])), las = 2, ylim=(c(0,1)))
boxplot(abs(as.numeric(unlist(gp_f2[5])))~as.numeric(unlist(gp_f2[1]))*as.numeric(unlist(gp_f2[1])), las = 2, ylim=(c(0,1)))
boxplot(as.numeric(unlist(gp_f3[5]))~as.numeric(unlist(gp_f3[1]))*as.numeric(unlist(gp_f3[1])), las = 2, ylim=(c(0,1)))
boxplot(as.numeric(unlist(gp_f4[5]))~as.numeric(unlist(gp_f4[1]))*as.numeric(unlist(gp_f4[1])), las = 2, ylim=(c(0,1)))
boxplot(as.numeric(unlist(gp_f5[5]))~as.numeric(unlist(gp_f5[1]))*as.numeric(unlist(gp_f5[1])), las = 2, ylim=(c(0,1)))

boxplot(as.numeric(unlist(gpa_f1[5]))~as.numeric(unlist(gpa_f1[1]))*as.numeric(unlist(gpa_f1[1])), las = 2, ylim=(c(0,1)))
boxplot(as.numeric(abs(unlist(gpa_f2[5])))~as.numeric(unlist(gpa_f2[1]))*as.numeric(unlist(gpa_f2[1])), las = 2, ylim=(c(0,1)))
boxplot(as.numeric(unlist(gpa_f3[5]))~as.numeric(unlist(gpa_f3[1]))*as.numeric(unlist(gpa_f3[1])), las = 2, ylim=(c(0,1)))
boxplot(as.numeric(unlist(gpa_f4[5]))~as.numeric(unlist(gpa_f4[1]))*as.numeric(unlist(gpa_f4[1])), las = 2, ylim=(c(0,1)))
boxplot(as.numeric(unlist(gpa_f5[5]))~as.numeric(unlist(gpa_f5[1]))*as.numeric(unlist(gpa_f5[1])), las = 2, ylim=(c(0,1)))

par(mfrow = c(2, 5))
boxplot(as.numeric(unlist(gpr_f1[5]))~as.numeric(unlist(gpr_f1[2]))*as.numeric(unlist(gpr_f1[2])), las = 2)
boxplot(abs(as.numeric(unlist(gpr_f2[5])))~as.numeric(unlist(gpr_f2[2]))*as.numeric(unlist(gpr_f2[2])), las = 2)
boxplot(as.numeric(unlist(gpr_f3[5]))~as.numeric(unlist(gpr_f3[2]))*as.numeric(unlist(gpr_f3[2])), las = 2)
boxplot(as.numeric(unlist(gpr_f4[5]))~as.numeric(unlist(gpr_f4[2]))*as.numeric(unlist(gpr_f4[2])), las = 2)
boxplot(as.numeric(unlist(gpr_f5[5]))~as.numeric(unlist(gpr_f5[2]))*as.numeric(unlist(gpr_f5[2])), las = 2)

boxplot(as.numeric(unlist(gpra_f1[5]))~as.numeric(unlist(gpra_f1[2]))*as.numeric(unlist(gpra_f1[2])), las = 2)
boxplot(as.numeric(abs(unlist(gpra_f2[5])))~as.numeric(unlist(gpra_f2[2]))*as.numeric(unlist(gpra_f2[2])), las = 2)
boxplot(as.numeric(unlist(gpra_f3[5]))~as.numeric(unlist(gpra_f3[2]))*as.numeric(unlist(gpra_f3[2])), las = 2)
boxplot(as.numeric(unlist(gpra_f4[5]))~as.numeric(unlist(gpra_f4[2]))*as.numeric(unlist(gpra_f4[2])), las = 2)
boxplot(as.numeric(unlist(gpra_f5[5]))~as.numeric(unlist(gpra_f5[2]))*as.numeric(unlist(gpra_f5[2])), las = 2)

#Erros
boxplot((as.numeric(unlist(gp_f4[5]*100))), as.numeric(unlist(abs(gp_f2[5]*100))), as.numeric(unlist(gp_f1[5]*100)), as.numeric(unlist(gp_f3[5]*100)), as.numeric(unlist(gp_f5[5]*100)), ylim=c(0,150), border = "blue", col = rgb(0.5,0.5,1, alpha = 0.5), main = "Erro percentual dos modelos gerados\nGenetic Programming", ylab = "Erro Percentual (%)", names = c("Fun��o 1","Fun��o 2","Fun��o 3","Fun��o 4","Fun��o 5"))
boxplot((as.numeric(unlist(gpa_f4[5]*100))), as.numeric(unlist(abs(gpa_f2[5]*100))), as.numeric(unlist(gpa_f1[5]*100)), as.numeric(unlist(gpa_f3[5]*100)), as.numeric(unlist(gpa_f5[5]*100)), ylim=c(0,150), border = "red", col = rgb(1,0.5,.5, alpha = 0.5), main = "Erro percentual dos modelos gerados\nGenetic Programming", ylab = "Erro Percentual (%)", names = c("Fun��o 1","Fun��o 2","Fun��o 3","Fun��o 4","Fun��o 5"), add = TRUE)
legend("topright", legend=c("Amostragem Aleat�ria","Amostragem com Passo"),fill=c("red", "blue"), bty="n")

boxplot((as.numeric(unlist(gpr_f4[5]*100))), as.numeric(unlist(abs(gpr_f2[5]*100))), as.numeric(unlist(gpr_f1[5]*100)), as.numeric(unlist(gpr_f3[5]*100)), as.numeric(unlist(gpr_f5[5]*100)), ylim=c(0,150), border = "blue", col = rgb(0.5,0.5,1, alpha = 0.5), main = "Erro percentual dos modelos gerados\nGenetic Programming Reduzido", ylab = "Erro Percentual (%)", names = c("Fun��o 1","Fun��o 2","Fun��o 3","Fun��o 4","Fun��o 5"))
boxplot((as.numeric(unlist(gpra_f4[5]*100))), as.numeric(unlist(abs(gpra_f2[5]*100))), as.numeric(unlist(gpra_f1[5]*100)), as.numeric(unlist(gpra_f3[5]*100)), as.numeric(unlist(gpra_f5[5]*100)), ylim=c(0,150), border = "red", col = rgb(1,0.5,.5, alpha = 0.5), main = "Erro percentual dos modelos gerados\nGenetic Programming Reduzido", ylab = "Erro Percentual (%)", names = c("Fun��o 1","Fun��o 2","Fun��o 3","Fun��o 4","Fun��o 5"), add = TRUE)
legend("topright", legend=c("Amostragem Aleat�ria","Amostragem com Passo"),fill=c("red", "blue"), bty="n")


boxplot((as.numeric(unlist(dls_4[5]*100))), as.numeric(unlist(abs(dls_2[5]*100))), as.numeric(unlist(dls_1[5]*100)), as.numeric(unlist(dls_3[5]*100)), as.numeric(unlist(dls_51[5]*100)), ylim=c(0,250), border = "blue", col = rgb(0.5,0.5,1, alpha = 0.5), main = "Erro percentual dos modelos gerados\nDeep Learning - Ativa��o Sigm�ide", ylab = "Erro Percentual (%)", names = c("Fun��o 1","Fun��o 2","Fun��o 3","Fun��o 4","Fun��o 5"))
boxplot((as.numeric(unlist(dlsa_4[5]*100))), as.numeric(unlist(abs(dlsa_2[5]*100))), as.numeric(unlist(dlsa_1[5]*100)), as.numeric(unlist(dlsa_3[5]*100)), as.numeric(unlist(dlsa_5[5]*100)), ylim=c(0,250), border = "red", col = rgb(1,0.5,.5, alpha = 0.5), main = "Erro percentual dos modelos gerados\nDeep Learning - Ativa��o Sigm�ide", ylab = "Erro Percentual (%)", names = c("Fun��o 1","Fun��o 2","Fun��o 3","Fun��o 4","Fun��o 5"), add = TRUE)
