
managers_data <-read.csv("managers.csv", na="")
View(managers_data)
str(managers_data)


managers_data$Date
converted_date <- as.Date(managers_data$Date,
                          format =c("%Y-%d-%m", "%m/%d/%Y", "%Y-%d-%m"))
converted_date


managers_data$Date <- converted_date
managers_data$Date

str(managers_data)

startdate<-as.Date("2018-10-15")
enddate<-as.Date("2018-11-01")

startdate
enddate



class(startdate)
class(enddate)

new_data <- managers_data[managers_data$Date >= startdate & 
                            managers_data$Date <= enddate,]

new_data

include_list1 <-managers_data[,8:9]
include_list2 <-managers_data[,c('Q3','Q4')]

names(managers_data)
help('%in%')

include_list<-names(managers_data) %in% c("Q3","Q4")
include_list
new_data<-managers_data[(include_list)]
new_data

new_data<-subset(new_data, select =-Q4)
new_data

attach(managers_data)
new_data<- subset(managers_data, Age>=35 | Age<24,select=c(Q1,Q2,Q3,Q4))
new_data
detach(managers_data)


managers_data
new_data<- subset(managers_data, Age>25 & Gender=='M',select=Gender:Q4)
new_data


my_sample<-managers_data[sample(2:nrow(managers_data),3,replace = FALSE),]
my_sample

my_sample1<-managers_data[sample(1:nrow(managers_data),10,replace = TRUE),]
my_sample1

write.csv(my_sample1,file = "random_sample.csv")

attach(managers_data)
new_data<-managers_data[order(Age),]
new_data

new_data<-managers_data[order(Gender,Age),]
new_data
detach(managers_data)
