par(mfrow = c(2,3))

#boxplot(as.numeric(unlist(dlr_4[5]*100))~as.numeric(unlist(dlr_4[2]))*as.numeric(unlist(dlr_4[1])), las = 2, ylim=(c(0,70)), border = "blue", col = "light blue", main = "Fun��o 1 - Ativa��o ReLU", ylab = "Erro percentual (%)")
#boxplot(as.numeric(unlist(dlra_4[5]*100))~as.numeric(unlist(dlra_4[2]))*as.numeric(unlist(dlra_4[1])), las = 2, ylim=(c(0,70)), border = "red", add= TRUE)

#boxplot(abs(as.numeric(unlist(dlr_2[5]*100)))~as.numeric(unlist(dlr_2[2]))*as.numeric(unlist(dlr_2[1])), las = 2, ylim=(c(0,70)), border = "blue", col = "light blue", main = "Fun��o 2  - Ativa��o ReLU", ylab = "Erro percentual (%)")
#boxplot(as.numeric(abs(unlist(dlra_2[5]*100)))~as.numeric(unlist(dlra_2[2]))*as.numeric(unlist(dlra_2[1])), las = 2, ylim=(c(0,70)), border = "red", add= TRUE)

boxplot(as.numeric(unlist(dlr_1[5]*100))~as.numeric(unlist(dlr_1[2]))*as.numeric(unlist(dlr_1[1])), las = 2, ylim=(c(0,70)), border = "blue", col = "light blue", main = "Fun��o 3 - Ativa��o ReLU", ylab = "Erro percentual (%)")
boxplot(as.numeric(unlist(dlra_1[5]*100))~as.numeric(unlist(dlra_1[2]))*as.numeric(unlist(dlra_1[1])), las = 2, ylim=(c(0,70)), border = "red", add= TRUE)

boxplot(as.numeric(unlist(dlr_3[5]*100))~as.numeric(unlist(dlr_3[2]))*as.numeric(unlist(dlr_3[1])), las = 2, ylim=(c(0,70)), border = "blue", col = "light blue", main = "Fun��o 4 - Ativa��o ReLU", ylab = "Erro percentual (%)")
boxplot(as.numeric(unlist(dlra_3[5]*100))~as.numeric(unlist(dlra_3[2]))*as.numeric(unlist(dlra_3[1])), las = 2, ylim=(c(0,70)), border = "red", add= TRUE)

boxplot(as.numeric(unlist(dlr_51[5]*100))~as.numeric(unlist(dlr_51[2]))*as.numeric(unlist(dlr_51[1])), las = 2, ylim=(c(0,70)), border = "blue", col = "light blue", main = "Fun��o 5 - Ativa��o ReLU", ylab = "Erro percentual (%)")
boxplot(as.numeric(unlist(dlra_51[5]*100))~as.numeric(unlist(dlra_51[2]))*as.numeric(unlist(dlra_51[1])), las = 2, ylim=(c(0,70)), border = "red", add= TRUE)

#boxplot(as.numeric(unlist(dls_4[5]*100))~as.numeric(unlist(dls_4[2]))*as.numeric(unlist(dls_4[1])), las = 2, ylim=(c(0,70)), border = "blue", col = "light blue", main = "Fun��o 1 - Ativa��o Sigm�ide", ylab = "Erro percentual (%)")
#boxplot(as.numeric(unlist(dlsa_4[5]*100))~as.numeric(unlist(dlsa_4[2]))*as.numeric(unlist(dlsa_4[1])), las = 2, ylim=(c(0,70)), border = "red", add= TRUE)

#boxplot(abs(as.numeric(unlist(dls_2[5]*100)))~as.numeric(unlist(dls_2[2]))*as.numeric(unlist(dls_2[1])), las = 2, ylim=(c(0,70)), border = "blue", col = "light blue", main = "Fun��o 2  - Ativa��o Sigm�ide", ylab = "Erro percentual (%)")
#boxplot(as.numeric(abs(unlist(dlsa_2[5]*100)))~as.numeric(unlist(dlsa_2[2]))*as.numeric(unlist(dlsa_2[1])), las = 2, ylim=(c(0,70)), border = "red", add= TRUE)

boxplot(as.numeric(unlist(dls_1[5]*100))~as.numeric(unlist(dls_1[2]))*as.numeric(unlist(dls_1[1])), las = 2, ylim=(c(0,70)), border = "blue", col = "light blue", main = "Fun��o 3 - Ativa��o Sigm�ide", ylab = "Erro percentual (%)")
boxplot(as.numeric(unlist(dlsa_1[5]*100))~as.numeric(unlist(dlsa_1[2]))*as.numeric(unlist(dlsa_1[1])), las = 2, ylim=(c(0,70)), border = "red", add= TRUE)

boxplot(as.numeric(unlist(dls_3[5]*100))~as.numeric(unlist(dls_3[2]))*as.numeric(unlist(dls_3[1])), las = 2, ylim=(c(0,70)), border = "blue", col = "light blue", main = "Fun��o 4 - Ativa��o Sigm�ide", ylab = "Erro percentual (%)")
boxplot(as.numeric(unlist(dlsa_3[5]*100))~as.numeric(unlist(dlsa_3[2]))*as.numeric(unlist(dlsa_3[1])), las = 2, ylim=(c(0,70)), border = "red", add= TRUE)

boxplot(as.numeric(unlist(dls_51[5]*100))~as.numeric(unlist(dls_51[2]))*as.numeric(unlist(dls_51[1])), las = 2, ylim=(c(0,70)), border = "blue", col = "light blue", main = "Fun��o 5 - Ativa��o Sigm�ide", ylab = "Erro percentual (%)")
boxplot(as.numeric(unlist(dlsa_5[5]*100))~as.numeric(unlist(dlsa_5[2]))*as.numeric(unlist(dlsa_5[1])), las = 2, ylim=(c(0,70)),  border = "red", add= TRUE)

par(mfrow = c(2,3))

#boxplot(as.numeric(unlist(dlr_4[4]))~as.numeric(unlist(dlr_4[2]))*as.numeric(unlist(dlr_4[1])), las = 2, ylim=(c(0,5)), border = "blue", col = "light blue", main = "Fun��o 1 - Ativa��o ReLU", ylab = "MSE")
#boxplot(as.numeric(unlist(dlra_4[4]))~as.numeric(unlist(dlra_4[2]))*as.numeric(unlist(dlra_4[1])), las = 2, ylim=(c(0,5)), border = "red", add= TRUE)

#boxplot(abs(as.numeric(unlist(dlr_2[4])))~as.numeric(unlist(dlr_2[2]))*as.numeric(unlist(dlr_2[1])), las = 2, ylim=(c(0,5)), border = "blue", col = "light blue", main = "Fun��o 2  - Ativa��o ReLU", ylab = "MSE")
#boxplot(as.numeric(abs(unlist(dlra_2[4])))~as.numeric(unlist(dlra_2[2]))*as.numeric(unlist(dlra_2[1])), las = 2, ylim=(c(0,5)), border = "red", add= TRUE)

boxplot(as.numeric(unlist(dlr_1[4]))~as.numeric(unlist(dlr_1[2]))*as.numeric(unlist(dlr_1[1])), las = 2, ylim=(c(0,3)), border = "blue", col = "light blue", main = "Fun��o 3 - Ativa��o ReLU", ylab = "MSE")
boxplot(as.numeric(unlist(dlra_1[4]))~as.numeric(unlist(dlra_1[2]))*as.numeric(unlist(dlra_1[1])), las = 2, ylim=(c(0,3)), border = "red", add= TRUE)

boxplot(as.numeric(unlist(dlr_3[4]))~as.numeric(unlist(dlr_3[2]))*as.numeric(unlist(dlr_3[1])), las = 2, ylim=(c(0,.1)), border = "blue", col = "light blue", main = "Fun��o 4 - Ativa��o ReLU", ylab = "MSE")
boxplot(as.numeric(unlist(dlra_3[4]))~as.numeric(unlist(dlra_3[2]))*as.numeric(unlist(dlra_3[1])), las = 2, ylim=(c(0,.1)), border = "red", add= TRUE)

boxplot(as.numeric(unlist(dlr_51[4]))~as.numeric(unlist(dlr_51[2]))*as.numeric(unlist(dlr_51[1])), las = 2, ylim=(c(0,.002)), border = "blue", col = "light blue", main = "Fun��o 5 - Ativa��o ReLU", ylab = "")
boxplot(as.numeric(unlist(dlra_51[4]))~as.numeric(unlist(dlra_51[2]))*as.numeric(unlist(dlra_51[1])), las = 2, ylim=(c(0,.002)), border = "red", add= TRUE)

#boxplot(as.numeric(unlist(dls_4[4]))~as.numeric(unlist(dls_4[2]))*as.numeric(unlist(dls_4[1])), las = 2, ylim=(c(0,1)), border = "blue", col = "light blue", main = "Fun��o 1 - Ativa��o Sigm�ide", ylab = "MSE")
#boxplot(as.numeric(unlist(dlsa_4[4]))~as.numeric(unlist(dlsa_4[2]))*as.numeric(unlist(dlsa_4[1])), las = 2, ylim=(c(0,1)), border = "red", add= TRUE)

#boxplot(abs(as.numeric(unlist(dls_2[4])))~as.numeric(unlist(dls_2[2]))*as.numeric(unlist(dls_2[1])), las = 2, ylim=(c(0,1)), border = "blue", col = "light blue", main = "Fun��o 2  - Ativa��o Sigm�ide", ylab = "MSE")
#boxplot(as.numeric(abs(unlist(dlsa_2[4])))~as.numeric(unlist(dlsa_2[2]))*as.numeric(unlist(dlsa_2[1])), las = 2, ylim=(c(0,1)), border = "red", add= TRUE)

boxplot(as.numeric(unlist(dls_1[4]))~as.numeric(unlist(dls_1[2]))*as.numeric(unlist(dls_1[1])), las = 2, ylim=(c(0,3)), border = "blue", col = "light blue", main = "Fun��o 3 - Ativa��o Sigm�ide", ylab = "MSE")
boxplot(as.numeric(unlist(dlsa_1[4]))~as.numeric(unlist(dlsa_1[2]))*as.numeric(unlist(dlsa_1[1])), las = 2, ylim=(c(0,3)), border = "red", add= TRUE)

boxplot(as.numeric(unlist(dls_3[4]))~as.numeric(unlist(dls_3[2]))*as.numeric(unlist(dls_3[1])), las = 2, ylim=(c(0,.1)), border = "blue", col = "light blue", main = "Fun��o 4 - Ativa��o Sigm�ide", ylab = "MSE")
boxplot(as.numeric(unlist(dlsa_3[4]))~as.numeric(unlist(dlsa_3[2]))*as.numeric(unlist(dlsa_3[1])), las = 2, ylim=(c(0,.1)), border = "red", add= TRUE)

boxplot(as.numeric(unlist(dls_51[4]))~as.numeric(unlist(dls_51[2]))*as.numeric(unlist(dls_51[1])), las = 2, ylim=(c(0,1)), border = "blue", col = "light blue", main = "Fun��o 5 - Ativa��o Sigm�ide", ylab = "MSE")
boxplot(as.numeric(unlist(dlsa_5[4]))~as.numeric(unlist(dlsa_5[2]))*as.numeric(unlist(dlsa_5[1])), las = 2, ylim=(c(0,1)),  border = "red", add= TRUE)







par(mfrow = c(2, 5))
boxplot(as.numeric(unlist(dls_1[5]))~as.numeric(unlist(dls_1[2]))*as.numeric(unlist(dls_1[1])), las = 2)
boxplot(abs(as.numeric(unlist(dls_2[5])))~as.numeric(unlist(dls_2[2]))*as.numeric(unlist(dls_2[1])), las = 2)
boxplot(as.numeric(unlist(dls_3[5]))~as.numeric(unlist(dls_3[2]))*as.numeric(unlist(dls_3[1])), las = 2)
boxplot(as.numeric(unlist(dls_4[5]))~as.numeric(unlist(dls_4[2]))*as.numeric(unlist(dls_4[1])), las = 2)
boxplot(as.numeric(unlist(dls_5[5]))~as.numeric(unlist(dls_5[2]))*as.numeric(unlist(dls_5[1])), las = 2)

boxplot(as.numeric(unlist(dlsa_1[5]))~as.numeric(unlist(dlsa_1[2]))*as.numeric(unlist(dlsa_1[1])), las = 2)
boxplot(as.numeric(abs(unlist(dlsa_2[5])))~as.numeric(unlist(dlsa_2[2]))*as.numeric(unlist(dlsa_2[1])), las = 2)
boxplot(as.numeric(unlist(dlsa_3[5]))~as.numeric(unlist(dlsa_3[2]))*as.numeric(unlist(dlsa_3[1])), las = 2)
boxplot(as.numeric(unlist(dlsa_4[5]))~as.numeric(unlist(dlsa_4[2]))*as.numeric(unlist(dlsa_4[1])), las = 2)
boxplot(as.numeric(unlist(dlsa_5[5]))~as.numeric(unlist(dlsa_5[2]))*as.numeric(unlist(dlsa_5[1])), las = 2)

par(mfrow = c(2, 5))
boxplot(as.numeric(unlist(dlr_1[5]))~as.numeric(unlist(dlr_1[1]))*as.numeric(unlist(dlr_1[1])), las = 2, ylim=(c(0,1)))
boxplot(abs(as.numeric(unlist(dlr_2[5])))~as.numeric(unlist(dlr_2[1]))*as.numeric(unlist(dlr_2[1])), las = 2, ylim=(c(0,1)))
boxplot(as.numeric(unlist(dlr_3[5]))~as.numeric(unlist(dlr_3[1]))*as.numeric(unlist(dlr_3[1])), las = 2, ylim=(c(0,1)))
boxplot(as.numeric(unlist(dlr_4[5]))~as.numeric(unlist(dlr_4[1]))*as.numeric(unlist(dlr_4[1])), las = 2, ylim=(c(0,1)))
boxplot(as.numeric(unlist(dlr_5[5]))~as.numeric(unlist(dlr_5[1]))*as.numeric(unlist(dlr_5[1])), las = 2, ylim=(c(0,1)))

boxplot(as.numeric(unlist(dlra_1[5]))~as.numeric(unlist(dlra_1[1]))*as.numeric(unlist(dlra_1[1])), las = 2, ylim=(c(0,1)))
boxplot(as.numeric(abs(unlist(dlra_2[5])))~as.numeric(unlist(dlra_2[1]))*as.numeric(unlist(dlra_2[1])), las = 2, ylim=(c(0,1)))
boxplot(as.numeric(unlist(dlra_3[5]))~as.numeric(unlist(dlra_3[1]))*as.numeric(unlist(dlra_3[1])), las = 2, ylim=(c(0,1)))
boxplot(as.numeric(unlist(dlra_4[5]))~as.numeric(unlist(dlra_4[1]))*as.numeric(unlist(dlra_4[1])), las = 2, ylim=(c(0,1)))
boxplot(as.numeric(unlist(dlra_5[5]))~as.numeric(unlist(dlra_5[1]))*as.numeric(unlist(dlra_5[1])), las = 2, ylim=(c(0,1)))

par(mfrow = c(2, 5))
boxplot(as.numeric(unlist(dls_1[5]))~as.numeric(unlist(dls_1[2]))*as.numeric(unlist(dls_1[2])), las = 2)
boxplot(abs(as.numeric(unlist(dls_2[5])))~as.numeric(unlist(dls_2[2]))*as.numeric(unlist(dls_2[2])), las = 2)
boxplot(as.numeric(unlist(dls_3[5]))~as.numeric(unlist(dls_3[2]))*as.numeric(unlist(dls_3[2])), las = 2)
boxplot(as.numeric(unlist(dls_4[5]))~as.numeric(unlist(dls_4[2]))*as.numeric(unlist(dls_4[2])), las = 2)
boxplot(as.numeric(unlist(dls_5[5]))~as.numeric(unlist(dls_5[2]))*as.numeric(unlist(dls_5[2])), las = 2)

boxplot(as.numeric(unlist(dlsa_1[5]))~as.numeric(unlist(dlsa_1[2]))*as.numeric(unlist(dlsa_1[2])), las = 2)
boxplot(as.numeric(abs(unlist(dlsa_2[5])))~as.numeric(unlist(dlsa_2[2]))*as.numeric(unlist(dlsa_2[2])), las = 2)
boxplot(as.numeric(unlist(dlsa_3[5]))~as.numeric(unlist(dlsa_3[2]))*as.numeric(unlist(dlsa_3[2])), las = 2)
boxplot(as.numeric(unlist(dlsa_4[5]))~as.numeric(unlist(dlsa_4[2]))*as.numeric(unlist(dlsa_4[2])), las = 2)
boxplot(as.numeric(unlist(dlsa_5[5]))~as.numeric(unlist(dlsa_5[2]))*as.numeric(unlist(dlsa_5[2])), las = 2)
