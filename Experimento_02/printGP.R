par(mfrow = c(1,2))
legend("topleft", legend=c("Amostragem Aleatória","Amostragem com Passo"),fill=c("red", "blue"), bty="n")
mtext("Número de Amostras.Tamanho Máximo de Árvore", side=1, line=4)

#boxplot(as.numeric(unlist(gp_f4[5]*100))~as.numeric(unlist(gp_f4[2]))*as.numeric(unlist(gp_f4[1])), las = 2, ylim=(c(0,70)), border = "blue", col = rgb(0.5,0.5,1, alpha = 0.5), main = "Genetic Programming\nFunção 1", ylab = "Erro percentual (%)")
#boxplot(as.numeric(unlist(gpa_f4[5]*100))~as.numeric(unlist(gpa_f4[2]))*as.numeric(unlist(gpa_f4[1])), las = 2, ylim=(c(0,70)), border = "red", col = rgb(1,0.5,0.5, alpha = 0.5), add= TRUE)

#boxplot(abs(as.numeric(unlist(gp_f2[5]*100)))~as.numeric(unlist(gp_f2[2]))*as.numeric(unlist(gp_f2[1])), las = 2, ylim=(c(0,300)), border = "blue", col = rgb(0.5,0.5,1, alpha = 0.5), main = "Genetic Programming\nFunção 2 ", ylab = "Erro percentual (%)")
#boxplot(as.numeric(abs(unlist(gpa_f2[5]*100)))~as.numeric(unlist(gpa_f2[2]))*as.numeric(unlist(gpa_f2[1])), las = 2, ylim=(c(0,300)), border = "red", col = rgb(1,0.5,0.5, alpha = 0.5), add= TRUE)

#boxplot(as.numeric(unlist(gp_f1[5]*100))~as.numeric(unlist(gp_f1[2]))*as.numeric(unlist(gp_f1[1])), las = 2, ylim=(c(0,70)), border = "blue", col = rgb(0.5,0.5,1, alpha = 0.5), main = "Genetic Programming\nFunção 3", ylab = "Erro percentual (%)")
#boxplot(as.numeric(unlist(gpa_f1[5]*100))~as.numeric(unlist(gpa_f1[2]))*as.numeric(unlist(gpa_f1[1])), las = 2, ylim=(c(0,70)), border = "red", col = rgb(1,0.5,0.5, alpha = 0.5), add= TRUE)

boxplot(as.numeric(unlist(gp_f3[5]*100))~as.numeric(unlist(gp_f3[2]))*as.numeric(unlist(gp_f3[1])), las = 2, ylim=(c(0,70)), border = "blue", col = rgb(0.5,0.5,1, alpha = 0.5), main = "Genetic Programming\nFunção 4", ylab = "Erro percentual (%)")
boxplot(as.numeric(unlist(gpa_f3[5]*100))~as.numeric(unlist(gpa_f3[2]))*as.numeric(unlist(gpa_f3[1])), las = 2, ylim=(c(0,70)), border = "red", col = rgb(1,0.5,0.5, alpha = 0.5), add= TRUE)

boxplot(as.numeric(unlist(gp_f5[5]*100))~as.numeric(unlist(gp_f5[2]))*as.numeric(unlist(gp_f5[1])), las = 2, ylim=(c(0,70)), border = "blue", col = rgb(0.5,0.5,1, alpha = 0.5), main = "Genetic Programming\nFunção 5", ylab = "Erro percentual (%)")
boxplot(as.numeric(unlist(gpa_f5[5]*100))~as.numeric(unlist(gpa_f5[2]))*as.numeric(unlist(gpa_f5[1])), las = 2, ylim=(c(0,70)), border = "red", col = rgb(1,0.5,0.5, alpha = 0.5), add= TRUE)

boxplot(as.numeric(unlist(gpr_f4[5]*100))~as.numeric(unlist(gpr_f4[2]))*as.numeric(unlist(gpr_f4[1])), las = 2, ylim=(c(0,70)), border = "blue", col = rgb(0.5,0.5,1, alpha = 0.5), main = "Genetic Programming\nFunção 1 - GP Reduzido", ylab = "Erro percentual (%)")
boxplot(as.numeric(unlist(gpra_f4[5]*100))~as.numeric(unlist(gpra_f4[2]))*as.numeric(unlist(gpra_f4[1])), las = 2, ylim=(c(0,70)), border = "red", col = rgb(1,0.5,0.5, alpha = 0.5), add= TRUE)

boxplot(abs(as.numeric(unlist(gpr_f2[5]*100)))~as.numeric(unlist(gpr_f2[2]))*as.numeric(unlist(gpr_f2[1])), las = 2, ylim=(c(0,70)), border = "blue", col = rgb(0.5,0.5,1, alpha = 0.5), main = "Genetic Programming\nFunção 2 GP Reduzido", ylab = "Erro percentual (%)")
boxplot(as.numeric(abs(unlist(gpra_f2[5]*100)))~as.numeric(unlist(gpra_f2[2]))*as.numeric(unlist(gpra_f2[1])), las = 2, ylim=(c(0,70)), border = "red", col = rgb(1,0.5,0.5, alpha = 0.5), add= TRUE)

boxplot(as.numeric(unlist(gpr_f1[5]*100))~as.numeric(unlist(gpr_f1[2]))*as.numeric(unlist(gpr_f1[1])), las = 2, ylim=(c(0,70)), border = "blue", col = rgb(0.5,0.5,1, alpha = 0.5), main = "Genetic Programming\nFunção 3GP Reduzido", ylab = "Erro percentual (%)")
boxplot(as.numeric(unlist(gpra_f1[5]*100))~as.numeric(unlist(gpra_f1[2]))*as.numeric(unlist(gpra_f1[1])), las = 2, ylim=(c(0,70)), border = "red", col = rgb(1,0.5,0.5, alpha = 0.5), add= TRUE)

boxplot(as.numeric(unlist(gpr_f3[5]*100))~as.numeric(unlist(gpr_f3[2]))*as.numeric(unlist(gpr_f3[1])), las = 2, ylim=(c(0,70)), border = "blue", col = rgb(0.5,0.5,1, alpha = 0.5), main = "Genetic Programming\nFunção 4GP Reduzido", ylab = "Erro percentual (%)")
boxplot(as.numeric(unlist(gpra_f3[5]*100))~as.numeric(unlist(gpra_f3[2]))*as.numeric(unlist(gpra_f3[1])), las = 2, ylim=(c(0,70)), border = "red", col = rgb(1,0.5,0.5, alpha = 0.5), add= TRUE)

boxplot(as.numeric(unlist(gpr_f51[5]*100))~as.numeric(unlist(gpr_f51[2]))*as.numeric(unlist(gpr_f51[1])), las = 2, ylim=(c(0,70)), border = "blue", col = rgb(0.5,0.5,1, alpha = 0.5), main = "Genetic Programming\nFunção 5GP Reduzido", ylab = "Erro percentual (%)")
boxplot(as.numeric(unlist(gpra_f5[5]*100))~as.numeric(unlist(gpra_f5[2]))*as.numeric(unlist(gpra_f5[1])), las = 2, ylim=(c(0,70)),  border = "red", col = rgb(1,0.5,0.5, alpha = 0.5), add= TRUE)

par(mfrow = c(2,3))

#boxplot(as.numeric(unlist(gp_f4[4]))~as.numeric(unlist(gp_f4[2]))*as.numeric(unlist(gp_f4[1])), las = 2, ylim=(c(0,5)), border = "blue", col = rgb(0.5,0.5,1, alpha = 0.5), main = "Genetic Programming\nFunção 1", ylab = "MSE")
#boxplot(as.numeric(unlist(gpa_f4[4]))~as.numeric(unlist(gpa_f4[2]))*as.numeric(unlist(gpa_f4[1])), las = 2, ylim=(c(0,5)), border = "red", col = rgb(1,0.5,0.5, alpha = 0.5), add= TRUE)

#boxplot(abs(as.numeric(unlist(gp_f2[4])))~as.numeric(unlist(gp_f2[2]))*as.numeric(unlist(gp_f2[1])), las = 2, ylim=(c(0,5)), border = "blue", col = rgb(0.5,0.5,1, alpha = 0.5), main = "Genetic Programming\nFunção 2 ", ylab = "MSE")
#boxplot(as.numeric(abs(unlist(gpa_f2[4])))~as.numeric(unlist(gpa_f2[2]))*as.numeric(unlist(gpa_f2[1])), las = 2, ylim=(c(0,5)), border = "red", col = rgb(1,0.5,0.5, alpha = 0.5), add= TRUE)

boxplot(as.numeric(unlist(gp_f1[4]))~as.numeric(unlist(gp_f1[2]))*as.numeric(unlist(gp_f1[1])), las = 2, ylim=(c(0,3)), border = "blue", col = rgb(0.5,0.5,1, alpha = 0.5), main = "Genetic Programming\nFunção 3", ylab = "MSE")
boxplot(as.numeric(unlist(gpa_f1[4]))~as.numeric(unlist(gpa_f1[2]))*as.numeric(unlist(gpa_f1[1])), las = 2, ylim=(c(0,3)), border = "red", col = rgb(1,0.5,0.5, alpha = 0.5), add= TRUE)

boxplot(as.numeric(unlist(gp_f3[4]))~as.numeric(unlist(gp_f3[2]))*as.numeric(unlist(gp_f3[1])), las = 2, ylim=(c(0,.1)), border = "blue", col = rgb(0.5,0.5,1, alpha = 0.5), main = "Genetic Programming\nFunção 4", ylab = "MSE")
boxplot(as.numeric(unlist(gpa_f3[4]))~as.numeric(unlist(gpa_f3[2]))*as.numeric(unlist(gpa_f3[1])), las = 2, ylim=(c(0,.1)), border = "red", col = rgb(1,0.5,0.5, alpha = 0.5), add= TRUE)

boxplot(as.numeric(unlist(gp_f51[4]))~as.numeric(unlist(gp_f51[2]))*as.numeric(unlist(gp_f51[1])), las = 2, ylim=(c(0,.002)), border = "blue", col = rgb(0.5,0.5,1, alpha = 0.5), main = "Genetic Programming\nFunção 5", ylab = "")
boxplot(as.numeric(unlist(gpa_f51[4]))~as.numeric(unlist(gpa_f51[2]))*as.numeric(unlist(gpa_f51[1])), las = 2, ylim=(c(0,.002)), border = "red", col = rgb(1,0.5,0.5, alpha = 0.5), add= TRUE)

#boxplot(as.numeric(unlist(gpr_f4[4]))~as.numeric(unlist(gpr_f4[2]))*as.numeric(unlist(gpr_f4[1])), las = 2, ylim=(c(0,1)), border = "blue", col = rgb(0.5,0.5,1, alpha = 0.5), main = "Genetic Programming\nFunção 1GP Reduzido", ylab = "MSE")
#boxplot(as.numeric(unlist(gpra_f4[4]))~as.numeric(unlist(gpra_f4[2]))*as.numeric(unlist(gpra_f4[1])), las = 2, ylim=(c(0,1)), border = "red", col = rgb(1,0.5,0.5, alpha = 0.5), add= TRUE)

#boxplot(abs(as.numeric(unlist(gpr_f2[4])))~as.numeric(unlist(gpr_f2[2]))*as.numeric(unlist(gpr_f2[1])), las = 2, ylim=(c(0,1)), border = "blue", col = rgb(0.5,0.5,1, alpha = 0.5), main = "Genetic Programming\nFunção 2 GP Reduzido", ylab = "MSE")
#boxplot(as.numeric(abs(unlist(gpra_f2[4])))~as.numeric(unlist(gpra_f2[2]))*as.numeric(unlist(gpra_f2[1])), las = 2, ylim=(c(0,1)), border = "red", col = rgb(1,0.5,0.5, alpha = 0.5), add= TRUE)

boxplot(as.numeric(unlist(gpr_f1[4]))~as.numeric(unlist(gpr_f1[2]))*as.numeric(unlist(gpr_f1[1])), las = 2, ylim=(c(0,3)), border = "blue", col = rgb(0.5,0.5,1, alpha = 0.5), main = "Genetic Programming\nFunção 3GP Reduzido", ylab = "MSE")
boxplot(as.numeric(unlist(gpra_f1[4]))~as.numeric(unlist(gpra_f1[2]))*as.numeric(unlist(gpra_f1[1])), las = 2, ylim=(c(0,3)), border = "red", col = rgb(1,0.5,0.5, alpha = 0.5), add= TRUE)

boxplot(as.numeric(unlist(gpr_f3[4]))~as.numeric(unlist(gpr_f3[2]))*as.numeric(unlist(gpr_f3[1])), las = 2, ylim=(c(0,.1)), border = "blue", col = rgb(0.5,0.5,1, alpha = 0.5), main = "Genetic Programming\nFunção 4GP Reduzido", ylab = "MSE")
boxplot(as.numeric(unlist(gpra_f3[4]))~as.numeric(unlist(gpra_f3[2]))*as.numeric(unlist(gpra_f3[1])), las = 2, ylim=(c(0,.1)), border = "red", col = rgb(1,0.5,0.5, alpha = 0.5), add= TRUE)

boxplot(as.numeric(unlist(gpr_f51[4]))~as.numeric(unlist(gpr_f51[2]))*as.numeric(unlist(gpr_f51[1])), las = 2, ylim=(c(0,1)), border = "blue", col = rgb(0.5,0.5,1, alpha = 0.5), main = "Genetic Programming\nFunção 5GP Reduzido", ylab = "MSE")
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

