# QUICKI

#QUICKI = function(g, i){
#  1/(log(i) + log(g))
#}

#QUICKI_DF = function(df){
#  df %<>%
#    select(c(subjectNumber, treatment, hour, parameter, value))
#  
#  df %>%
#    filter(!(is.na(value))) %>%
#    filter(hour == "07:15") %>%
#    spread(parameter, value) %>%
#    group_by(subjectNumber, treatment) %>%
#    summarise(quicki_index = QUICKI(glucose_mgdl, insulin_microU))
#}

# REVISED QUICKI http://goo.gl/OJ5OZi

QUICKIR = function(g, i, n){
  1/(log(i) + log(g) + log(n))
}

QUICKIR_DF = function(df){
  df %<>%
    select(c(subjectNumber, treatment, timePoint, parameter, value))
  
  df %>%
    filter(!(is.na(value))) %>%
    filter(timePoint == 0) %>%
    spread(parameter, value) %>%
    mutate(nefa_mmol = nefa_umolL/1000) %>%
    group_by(subjectNumber, treatment) %>%
    summarise(indexValue = QUICKIR(glucose_mgdl, insulin_microU, nefa_mmol))
}
