#### modified from original code by Frederik Weber

# ---- matsudaFunction ----
#matsuda = function(g, i){
 # weights = c(1,2,2,2,1)
 # 80000/sqrt(g[1] * i[1] * sum(weights * g) * sum(weights * i))
#}

matsuda = function(g, i){
  10000/sqrt(g[1] * i[1] * mean(g) * mean(i))
}

matsuda_df_new = function(df){
  require(magrittr)
  df %<>%
    select(c(subjectNumber, treatment, timePoint, parameter, value))
    
  valid_matsuda_timePoints = c(0,30,60,90,120)
  
  df %>%
    filter(timePoint %in% valid_matsuda_timePoints) %>%
    spread(parameter, value) %>%
    group_by(subjectNumber, treatment) %>%
    summarise(indexValue = matsuda(glucose_mmoll, insulin_pmoll))
}
