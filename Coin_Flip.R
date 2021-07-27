#####Simulate 10,000,000 flips of two coins
#Initialze the variables
number.of.flips <- 10000000
nTT <- 0
nTH <- 0
nHT <- 0
nHH <- 0
for(i in 1:number.of.flips){
  #Strategy: flip two coins, recorded as a random number between 0 and 1.
  # If the random number is > 0.5, call it "heads"; if it is < 0.5, call it "tails"
  tosscoin1 <- runif(n = 1, min = 0, max = 1)
  tosscoin2 <- runif(n = 1, min = 0, max = 1)
  #Note that "&" means "and"
  if((tosscoin1 < 0.5) & (tosscoin2 < 0.5)) nTT <- nTT + 1
  if((tosscoin1 < 0.5) & (tosscoin2 > 0.5)) nTH <- nTH + 1
  if((tosscoin1 > 0.5) & (tosscoin2 < 0.5)) nHT <- nHT + 1
  if((tosscoin1 > 0.5) & (tosscoin2 > 0.5)) nHH <- nHH + 1
}# end for(i in 1:number.of.flips)
#Calculate the relative frequencies
Rel.freq.TT <- nTT/number.of.flips
Rel.freq.TH <- nTH/number.of.flips
Rel.freq.HT <- nHT/number.of.flips
Rel.freq.HH <- nHH/number.of.flips
#View the results
Rel.freq.TT
Rel.freq.TH
Rel.freq.HT
Rel.freq.HH