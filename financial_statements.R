#Prompt
# I am a DS working for a consulting firm. One of my colleagues from the auditing dept asked me
# to help assess the financial statement. I have been supplied with 2 vectors: monthly revenue
# and monthly expenses for the financial year in question. I need to find the following...

#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 
             11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 
              3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution
# 1) Profit for each month
profit <- revenue - expenses

# 2) Profit after tax (tax rate is 30%)
p_after_tax <- profit*0.7

# 3) Profit margin for each month - profit after tax divided by revenue
p_margin <- p_after_tax/revenue

# 4) Good months - profit after tax > mean for the year
good_months <- p_after_tax > mean(p_after_tax)

# 5) Bad months - profit after tax < mean for the year
bad_months <- p_after_tax < mean(p_after_tax)

# 6) Best month - profit after tax was the max for the year
best_month <- p_after_tax == max(p_after_tax)

# 7) Worth month - " worst "
worst_month <- p_after_tax == min(p_after_tax)
worst_month
