# Basic data operation with R studio

# working with external data

#Reading .csv file
uni_sal<-read.csv("Salaries.csv")
View(uni_sal)
str(uni_sal)
head(uni_sal)
head(uni_sal,100)
summary(uni_sal)
tail(uni_sal,100)

# writing .csv file

write.csv(uni_sal,"Uni_sal.csv")

# writing excel file

#install.packages('xlsx')
library('xlsx')
write.xlsx(uni_sal,"Uni_sal.xlsx")

#Reading excel file
uni_Excel_sal<-read.xlsx("Uni_Sal.xlsx",sheetIndex = 1)
str(uni_Excel_sal)

#Alternative reading  and writing excel file
install.packages('readxl')

library('readxl')


install.packages('writexl')
library(writexl)

write_xlsx(uni_Sal,"Uni_Sal2.xlsx")
findFunction(write_xlsx)
find.package("writexl")

write.xlsx(uni_sal,"Uni_sal2.xlsx")
str(uni_Excel_sal2)

plot(uni_Excel_sal2$salary)

#Data Set Binding with the environment

attach(uni_Excel_sal2)
plot(salary)
summary(salary)

#data set unbinding the environment
detach(uni_sal)
plot(Salaries)

View(uni_Excel_sal2)

#Data management further
sal_A<-uni_Excel_sal2[,1:3] #DataSetName[rows,column]
sal_B<-uni_Excel_sal2[,c(1,4,5)]
sal_C<-uni_Excel_sal2[,c(1,6,7)]

str(sal_A)
str(sal_B)
str(sal_C)

View(sal_A)
View(sal_B)
View(sal_C)

write.csv(sal_A,"sal_A.csv")
write.csv(sal_B,"sal_B.csv")
write.csv(sal_C,"sal_c.csv")


#Column binding/Horizontal Binding /Merge columns