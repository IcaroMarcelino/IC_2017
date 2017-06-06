# Experimento 2
# Estatisticas dos Resultados
# DL
# Ativacao ReLU
dlr_f1 <- read.csv("DL/Relu/Result_DL_EXP2_RELU_FUNC_4.csv", quote ="", header=FALSE)
dlr_f1 <- dlr_f1[which(dlr_f1[5] != Inf), ]
dlr_f1 <- dlr_f1[which(dlr_f1[5] != 'NaN'), ]

dlr_f2 <- read.csv("DL/Relu/Result_DL_EXP2_RELU_FUNC_2.csv", quote ="", header=FALSE)
dlr_f2 <- dlr_f2[which(dlr_f2[5] != Inf), ]
dlr_f2 <- dlr_f2[which(dlr_f2[5] != 'NaN'), ]

dlr_f3 <- read.csv("DL/Relu/Result_DL_EXP2_RELU_FUNC_1.csv", quote ="", header=FALSE)
dlr_f3 <- dlr_f3[which(dlr_f3[5] != Inf), ]
dlr_f3 <- dlr_f3[which(dlr_f3[5] != 'NaN'), ]

dlr_f4 <- read.csv("DL/Relu/Result_DL_EXP2_RELU_FUNC_3.csv", quote ="", header=FALSE)
dlr_f4 <- dlr_f4[which(dlr_f4[5] != Inf), ]
dlr_f4 <- dlr_f4[which(dlr_f4[5] != 'NaN'), ]

dlr_f5 <- read.csv("DL/Relu/Result_DL_EXP2_RELU_FUNC_5.csv", quote ="", header=FALSE)
dlr_f5 <- dlr_f5[which(dlr_f5[5] != Inf), ]
dlr_f5 <- dlr_f5[which(dlr_f5[5] != 'NaN'), ]

remove(dlr_f1, dlr_f2, dlr_f3, dlr_f4, dlr_f5)

dlra_f1 <- read.csv("DL/Relu/Result_DL_EXP2_RELU_FUNC_4_Alea.csv", quote ="", header=FALSE)
dlra_f1 <- dlra_f1[which(dlra_f1[5] != Inf), ]
dlra_f1 <- dlra_f1[which(dlra_f1[5] != 'NaN'), ]

dlra_f2 <- read.csv("DL/Relu/Result_DL_EXP2_RELU_FUNC_2_Alea.csv", quote ="", header=FALSE)
dlra_f2 <- dlra_f2[which(dlra_f2[5] != Inf), ]
dlra_f2 <- dlra_f2[which(dlra_f2[5] != 'NaN'), ]

dlra_f3 <- read.csv("DL/Relu/Result_DL_EXP2_RELU_FUNC_1_Alea.csv", quote ="", header=FALSE)
dlra_f3 <- dlra_f3[which(dlra_f3[5] != Inf), ]
dlra_f3 <- dlra_f3[which(dlra_f3[5] != 'NaN'), ]

dlra_f4 <- read.csv("DL/Relu/Result_DL_EXP2_RELU_FUNC_3_Alea.csv", quote ="", header=FALSE)
dlra_f4 <- dlra_f4[which(dlra_f4[5] != Inf), ]
dlra_f4 <- dlra_f4[which(dlra_f4[5] != 'NaN'), ]

dlra_f5 <- read.csv("DL/Relu/Result_DL_EXP2_RELU_FUNC_5_Alea.csv", quote ="", header=FALSE)
dlra_f5 <- dlra_f5[which(dlra_f5[5] != Inf), ]
dlra_f5 <- dlra_f5[which(dlra_f5[5] != 'NaN'), ]

remove(dlra_f1, dlra_f2, dlra_f3, dlra_f4, dlra_f5)
#Ativacao Sigmoide
dls_f1 <- read.csv("DL/Sigmoid/Result_DL_EXP2_SIGMOID_FUNC_4.csv", quote ="", header=FALSE)
dls_f1 <- dls_f1[which(dls_f1[5] != Inf), ]
dls_f1 <- dls_f1[which(dls_f1[5] != 'NaN'), ]

dls_f2 <- read.csv("DL/Sigmoid/Result_DL_EXP2_SIGMOID_FUNC_2.csv", quote ="", header=FALSE)
dls_f2 <- dls_f2[which(dls_f2[5] != Inf), ]
dls_f2 <- dls_f2[which(dls_f2[5] != 'NaN'), ]

dls_f3 <- read.csv("DL/Sigmoid/Result_DL_EXP2_SIGMOID_FUNC_1.csv", quote ="", header=FALSE)
dls_f3 <- dls_f3[which(dls_f3[5] != Inf), ]
dls_f3 <- dls_f3[which(dls_f3[5] != 'NaN'), ]

dls_f4 <- read.csv("DL/Sigmoid/Result_DL_EXP2_SIGMOID_FUNC_3.csv", quote ="", header=FALSE)
dls_f4 <- dls_f4[which(dls_f4[5] != Inf), ]
dls_f4 <- dls_f4[which(dls_f4[5] != 'NaN'), ]

dls_f5 <- read.csv("DL/Sigmoid/Result_DL_EXP2_SIGMOID_FUNC_5.csv", quote ="", header=FALSE)
dls_f5 <- dls_f5[which(dls_f5[5] != Inf), ]
dls_f5 <- dls_f5[which(dls_f5[5] != 'NaN'), ]

remove(dls_f1, dls_f2, dls_f3, dls_f4, dls_f5)

dlsa_f1 <- read.csv("DL/Sigmoid/Result_DL_EXP2_SIGMOID_FUNC_4_Alea.csv", quote ="", header=FALSE)
dlsa_f1 <- dlsa_f1[which(dlsa_f1[5] != Inf), ]
dlsa_f1 <- dlsa_f1[which(dlsa_f1[5] != 'NaN'), ]

dlsa_f2 <- read.csv("DL/Sigmoid/Result_DL_EXP2_SIGMOID_FUNC_2_Alea.csv", quote ="", header=FALSE)
dlsa_f2 <- dlsa_f2[which(dlsa_f2[5] != Inf), ]
dlsa_f2 <- dlsa_f2[which(dlsa_f2[5] != 'NaN'), ]

dlsa_f3 <- read.csv("DL/Sigmoid/Result_DL_EXP2_SIGMOID_FUNC_1_Alea.csv", quote ="", header=FALSE)
dlsa_f3 <- dlsa_f3[which(dlsa_f3[5] != Inf), ]
dlsa_f3 <- dlsa_f3[which(dlsa_f3[5] != 'NaN'), ]

dlsa_f4 <- read.csv("DL/Sigmoid/Result_DL_EXP2_SIGMOID_FUNC_3_Alea.csv", quote ="", header=FALSE)
dlsa_f4 <- dlsa_f4[which(dlsa_f4[5] != Inf), ]
dlsa_f4 <- dlsa_f4[which(dlsa_f4[5] != 'NaN'), ]

dlsa_f5 <- read.csv("DL/Sigmoid/Result_DL_EXP2_SIGMOID_FUNC_5_Alea.csv", quote ="", header=FALSE)
dlsa_f5 <- dlsa_f5[which(dlsa_f5[5] != Inf), ]
dlsa_f5 <- dlsa_f5[which(dlsa_f5[5] != 'NaN'), ]

remove(dlsa_f1, dlsa_f2, dlsa_f3, dlsa_f4, dlsa_f5)

#GP
gp_f1 <- read.csv("GP/Result_GP_EXP2_FUNC_1.csv", quote ="", header=FALSE)
gp_f1 <- gp_f1[which(gp_f1[5] != Inf), ]
gp_f1 <- gp_f1[which(gp_f1[5] != 'NaN'), ]

gp_f2 <- read.csv("GP/Result_GP_EXP2_FUNC_2.csv", quote ="", header=FALSE)
gp_f2 <- gp_f2[which(gp_f2[5] != Inf), ]
gp_f2 <- gp_f2[which(gp_f2[5] != 'NaN'), ]

gp_f3 <- read.csv("GP/Result_GP_EXP2_FUNC_3.csv", quote ="", header=FALSE)
gp_f3 <- gp_f3[which(gp_f3[5] != Inf), ]
gp_f3 <- gp_f3[which(gp_f3[5] != 'NaN'), ]

gp_f4 <- read.csv("GP/Result_GP_EXP2_FUNC_4.csv", quote ="", header=FALSE)
gp_f4 <- gp_f4[which(gp_f4[5] != Inf), ]
gp_f4 <- gp_f4[which(gp_f4[5] != 'NaN'), ]

gp_f5 <- read.csv("GP/Result_GP_EXP2_FUNC_5.csv", quote ="", header=FALSE)
gp_f5 <- gp_f5[which(gp_f5[5] != Inf), ]
gp_f5 <- gp_f5[which(gp_f5[5] != 'NaN'), ]

gpa_f1 <- read.csv("GP/Result_GP_EXP2_FUNC_1_Alea.csv", quote ="", header=FALSE)
gpa_f1 <- gpa_f1[which(gpa_f1[5] != Inf), ]
gpa_f1 <- gpa_f1[which(gpa_f1[5] != 'NaN'), ]

gpa_f2 <- read.csv("GP/Result_GP_EXP2_FUNC_2_Alea.csv", quote ="", header=FALSE)
gpa_f2 <- gpa_f2[which(gpa_f2[5] != Inf), ]
gpa_f2 <- gpa_f2[which(gpa_f2[5] != 'NaN'), ]

gpa_f3 <- read.csv("GP/Result_GP_EXP2_FUNC_3_Alea.csv", quote ="", header=FALSE)
gpa_f3 <- gpa_f3[which(gpa_f3[5] != Inf), ]
gpa_f3 <- gpa_f3[which(gpa_f3[5] != 'NaN'), ]

gpa_f4 <- read.csv("GP/Result_GP_EXP2_FUNC_4_Alea.csv", quote ="", header=FALSE)
gpa_f4 <- gpa_f4[which(gpa_f4[5] != Inf), ]
gpa_f4 <- gpa_f4[which(gpa_f4[5] != 'NaN'), ]

gpa_f5 <- read.csv("GP/Result_GP_EXP2_FUNC_5_Alea.csv", quote ="", header=FALSE)
gpa_f5 <- gpa_f5[which(gpa_f5[5] != Inf), ]
gpa_f5 <- gpa_f5[which(gpa_f5[5] != 'NaN'), ]


#GP Reduzido
gpr_f1 <- read.csv("GP/Result_GP_EXP2_FUNC_1_Reduzido.csv", quote ="", header=FALSE)
gpr_f1 <- gpr_f1[which(gpr_f1[5] != Inf), ]
gpr_f1 <- gpr_f1[which(gpr_f1[5] != 'NaN'), ]

gpr_f2 <- read.csv("GP/Result_GP_EXP2_FUNC_2_Reduzido.csv", quote ="", header=FALSE)
gpr_f2 <- gpr_f2[which(gpr_f2[5] != Inf), ]
gpr_f2 <- gpr_f2[which(gpr_f2[5] != 'NaN'), ]

gpr_f3 <- read.csv("GP/Result_GP_EXP2_FUNC_3_Reduzido.csv", quote ="", header=FALSE)
gpr_f3 <- gpr_f3[which(gpr_f3[5] != Inf), ]
gpr_f3 <- gpr_f3[which(gpr_f3[5] != 'NaN'), ]

gpr_f4 <- read.csv("GP/Result_GP_EXP2_FUNC_4_Reduzido.csv", quote ="", header=FALSE)
gpr_f4 <- gpr_f4[which(gpr_f4[5] != Inf), ]
gpr_f4 <- gpr_f4[which(gpr_f4[5] != 'NaN'), ]

gpr_f5 <- read.csv("GP/Result_GP_EXP2_FUNC_5_Reduzido.csv", quote ="", header=FALSE)
gpr_f5 <- gpr_f5[which(gpr_f5[5] != Inf), ]
gpr_f5 <- gpr_f5[which(gpr_f5[5] != 'NaN'), ]

gpra_f1 <- read.csv("GP/Result_GP_EXP2_FUNC_1_Reduzido_Alea.csv", quote ="", header=FALSE)
gpra_f1 <- gpra_f1[which(gpra_f1[5] != Inf), ]
gpra_f1 <- gpra_f1[which(gpra_f1[5] != 'NaN'), ]

gpra_f2 <- read.csv("GP/Result_GP_EXP2_FUNC_2_Reduzido_Alea.csv", quote ="", header=FALSE)
gpra_f2 <- gpra_f2[which(gpra_f2[5] != Inf), ]
gpra_f2 <- gpra_f2[which(gpra_f2[5] != 'NaN'), ]

gpra_f3 <- read.csv("GP/Result_GP_EXP2_FUNC_3_Reduzido_Alea.csv", quote ="", header=FALSE)
gpra_f3 <- gpra_f3[which(gpra_f3[5] != Inf), ]
gpra_f3 <- gpra_f3[which(gpra_f3[5] != 'NaN'), ]

gpra_f4 <- read.csv("GP/Result_GP_EXP2_FUNC_4_Reduzido_Alea.csv", quote ="", header=FALSE)
gpra_f4 <- gpra_f4[which(gpra_f4[5] != Inf), ]
gpra_f4 <- gpra_f4[which(gpra_f4[5] != 'NaN'), ]

gpra_f5 <- read.csv("GP/Result_GP_EXP2_FUNC_5_Reduzido_Alea.csv", quote ="", header=FALSE)
gpra_f5 <- gpra_f5[which(gpra_f5[5] != Inf), ]
gpra_f5 <- gpra_f5[which(gpra_f5[5] != 'NaN'), ]

remove(gpra_f1, gpra_f2, gpra_f3, gpra_f4, gpra_f5)
remove(gpr_f1, gpr_f2, gpr_f3, gpr_f4, gpr_f5)
remove(gpa_f1, gpa_f2, gpa_f3, gpa_f4, gpa_f5)
remove(gp_f1, gp_f2, gp_f3, gp_f4, gp_f5)


