ler <- function(arq){
  f <- read.csv(arq, header = FALSE, quote="")
  f <- f[which(f[5] != Inf), ]
  f <- f[which(f[5] != 'NaN'), ]
  f <- abs(as.numeric(unlist(f[5])))*100

  return(f)
}

lista_arq <- c("Result_GP_EXP2_FUNC_SIN_Reduzido.csv",
               "Result_GP_EXP2_FUNC_SIN_Reduzido_Alea.csv",
               "Result_DL_EXP2_RELU_FUNC_SIN.csv",
               "Result_DL_EXP2_RELU_FUNC_SIN_Alea.csv",
               "Result_GP_EXP2_FUNC_LOG_Reduzido.csv",
               "Result_GP_EXP2_FUNC_LOG_Reduzido_Alea.csv",
               "Result_DL_EXP2_RELU_FUNC_LOG.csv",
               "Result_DL_EXP2_RELU_FUNC_LOG_Alea.csv",
               "Result_GP_EXP2_FUNC_e-x_Reduzido.csv",
               "Result_GP_EXP2_FUNC_e-x_Reduzido_Alea.csv",
               "Result_DL_EXP2_RELU_FUNC_e-x.csv",
               "Result_DL_EXP2_RELU_FUNC_e-x_Alea.csv",
               "Result_GP_EXP2_FUNC_POL_Reduzido.csv",
               "Result_GP_EXP2_FUNC_POL_Reduzido_Alea.csv",
               "Result_DL_EXP2_RELU_FUNC_POL.csv",
               "Result_DL_EXP2_RELU_FUNC_POL_Alea.csv")

sin_gp  <- ler(lista_arq[1])
sin_gpa <- ler(lista_arq[2])
sin_dl  <- ler(lista_arq[3])
sin_dla <- ler(lista_arq[4]) 

log_gp  <- ler(lista_arq[5])
log_gpa <- ler(lista_arq[6])
log_dl  <- ler(lista_arq[7])
log_dla <- ler(lista_arq[8]) 

ex_gp  <- ler(lista_arq[9])
ex_gpa <- ler(lista_arq[10])
ex_dl  <- ler(lista_arq[11])
ex_dla <- ler(lista_arq[12]) 

#pol_gp  <- ler(lista_arq[13])
#pol_gpa <- ler(lista_arq[14])
#pol_dl  <- ler(lista_arq[15])
#pol_dla <- ler(lista_arq[16]) 

boxplot(c(sin_gp,sin_gpa), c(log_gp,log_gpa), c(ex_gp,ex_gpa), border = "dark green", ylab = "Erro Percentual(%)", names = c("sin(X)", "log(x)", "exp(-x)"))
boxplot(c(sin_dl,sin_dla), c(log_dl,log_dla), c(ex_dl,ex_dla), add = TRUE, border = "orange", names = c("","",""))
legend("topleft", legend=c("Genetic Programming", "Deep Learning"),
       fill=c("dark green", "orange"), bty="n")

remove(sin_gp, sin_dl, sin_gpa, sin_dla, log_gp,log_gpa, ex_gp,ex_gpa, log_dl,log_dla, ex_dl,ex_dla)
