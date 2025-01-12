#More analysis
library("PerformanceAnalytics")
numeric_cols <- sapply(df, is.numeric)
numeric_df <- df[, numeric_cols]

# Now you can use the performanceAnalytics functions
chart.Correlation(numeric_df)
#chart.RiskReturnScatter(numeric_df)
#chart.Correlation(df, upper.panel = panel.cor) not working error
#chart.Correlation(df) has error

#pairs(df, lower.panel = panel.smooth, upper.panel = panel.cor) not workiing again


