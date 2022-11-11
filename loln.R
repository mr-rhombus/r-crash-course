# Test the Law of Large Numbers for N random normally distributed numbers with mean = 0,
# stdev = 1

# Count how many of these #s fall between -1 and 1, then divide by total qty of N

# E(X) = 68.2%

N <- 10000

nums <- rnorm(N, mean=0, sd=1)

one_sd_away_cnt <- 0

for (num in nums){
  if (num < 1 & num > -1){
    one_sd_away_cnt <- one_sd_away_cnt + 1
  }
}

pct_within_one_sd = one_sd_away_cnt/N*100