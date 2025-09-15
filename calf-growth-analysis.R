data_frame <- data.frame(
  #calves ID
  ID = c("c1", "c2", "c3", "c4", "c5"),
  #initial body weight (Kg)
  Initial_BW = c(38.2, 42.3, 40, 48, 39),
  #final body weight (Kg)
  Final_BW = c(85.4, 90.2, 78.6, 95, 88.1),
  #Day 0
  t1 = rep(0, 5),
  #Day 60
  t2 = rep(60, 5),
  #relative growth rate
  RGR =  rep(NA, 5),
  #It shows whether the animal grew by the end of the period or not
  Grew = rep(NA, 5)
)

# I used a for loop to calculate RGR for each row in data frame separately
for (i in 1:nrow(data_frame)) {
  if (data_frame$Initial_BW[i] <= 0) {
    print(paste("initial_BW for", data_frame$ID[i], "is less than or equal to 0" ))
  } else if (data_frame$Final_BW[i] <= 0) {
    print(paste("Final_BW for", data_frame$ID[i], "is less than or equal to 0"))
  } else if (data_frame$t2[i] < data_frame$t1[i]) {
    print(paste("t2 for", data_frame$ID[i], "is less than or equal to t1"))
  } else {
    data_frame$RGR[i] <- (log(data_frame$Final_BW[i]) - log(data_frame$Initial_BW[i])) / 
      (data_frame$t2[i] - data_frame$t1[i])
  }
}

for (i in 1:5) {
  if (data_frame$Initial_BW[i] > 0 &
      data_frame$Final_BW[i] > 0 &
      data_frame$t2[i] > data_frame$t1[i]) {
    data_frame$Grew[i] = isTRUE(data_frame$Initial_BW[i] < data_frame$Final_BW[i] )
  }
}

#to view data_frame in a separate tab
View(data_frame)