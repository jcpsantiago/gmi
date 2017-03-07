# NEFA index by Wagner et al., 2016 (http://goo.gl/cwJNz7)

# ---- NEFA INDEX ----

nefaISI = function(i, n, b){
  60*exp(3.853 - 0.9*log(b[1])
         -0.205*log(i[1]) 
         -0.128*log(i[2])
         -0.256*log(i[3])
         -0.138*log(n[3])
  )
}

nefaISI_df_new = function(df){
  df %<>%
    filter((parameter == "nefa_umolL" & timePoint == 120) | (parameter == "insulin_pmoll" & timePoint %in% c(0,60,120))) %>%
    spread(parameter, value) %>%
    select(c(subjectNumber, treatment, bmi, timePoint, nefa_umolL, insulin_pmoll))
  
  df %>%
    group_by(subjectNumber, treatment) %>%
    summarise(indexValue = nefaISI(i=insulin_pmoll, n=nefa_umolL, b=bmi))
}
