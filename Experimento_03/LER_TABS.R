

Ler <- function(FILE){
  v <- read.csv(FILE, quote ="", header=FALSE)
  v <- v[which(v[5] != Inf), ]
  v <- v[which(v[5] != 'NaN'), ]
  return(v)
}

files_DL <- c("DL/Result_DL_EXP2_RELU_SIN_F1.csv",
           "DL/Result_DL_EXP2_RELU_SIN_F1_Alea.csv",
           "DL/Result_DL_EXP2_RELU_COS_F1.csv",
           "DL/Result_DL_EXP2_RELU_COS_F1_Alea.csv",
           "DL/Result_DL_EXP2_RELU_TAN_F1.csv",
           "DL/Result_DL_EXP2_RELU_TAN_F1_Alea.csv",
           "DL/Result_DL_EXP2_RELU_FUNC_e-x.csv",
           "DL/Result_DL_EXP2_RELU_FUNC_e-x_Alea.csv",
           "DL/Result_DL_EXP2_RELU_FUNC_LOG.csv",
           "DL/Result_DL_EXP2_RELU_FUNC_LOG_Alea.csv",
           "DL/Result_DL_EXP2_RELU_FUNC_POL.csv",
           "DL/Result_DL_EXP2_RELU_FUNC_POL_Alea.csv")

files_GP <- c("GP/Result_GP_EXP2_COS.csv",
              "GP/Result_GP_EXP2_COS_Alea.csv",
              "GP/Result_GP_EXP2_SIN.csv",
              "GP/Result_GP_EXP2_SIN_Alea.csv",
              "GP/Result_GP_EXP2_TAN.csv",
              "GP/Result_GP_EXP2_TAN_Alea.csv",
              "GP/Result_GP_EXP2_FUNC_e-x_Reduzido.csv",
              "GP/Result_GP_EXP2_FUNC_e-x_Reduzido_Alea.csv",
              "GP/Result_GP_EXP2_FUNC_LOG_Reduzido.csv",
              "GP/Result_GP_EXP2_FUNC_LOG_Reduzido_Alea.csv",
              "GP/Result_GP_EXP2_FUNC_POL_Reduzido.csv",
              "GP/Result_GP_EXP2_FUNC_POL_Reduzido_Alea.csv")
dl_sin <- Ler(files_DL[1])
dla_sin <- Ler(files_DL[2])
dl_cos <- Ler(files_DL[3])
dla_cos <- Ler(files_DL[4])
dl_tan <- Ler(files_DL[5])
dla_tan <- Ler(files_DL[6])
dl_e <- Ler(files_DL[7])
dla_e <- Ler(files_DL[8])
dl_log <- Ler(files_DL[9])
dla_log <- Ler(files_DL[10])
dl_pol <- Ler(files_DL[11])
dla_pol <- Ler(files_DL[12])

gp_cos <- Ler(files_GP[1])
gpa_cos <- Ler(files_GP[2])
gp_sin <- Ler(files_GP[3])
gpa_sin <- Ler(files_GP[4])
gp_tan <- Ler(files_GP[5])
gpa_tan <- Ler(files_GP[6])
gp_e <- Ler(files_GP[7])
gpa_e <- Ler(files_GP[8])
gp_log <- Ler(files_GP[9])
gpa_log <- Ler(files_GP[10])
gp_pol <- Ler(files_GP[11])
gpa_pol <- Ler(files_GP[12])

