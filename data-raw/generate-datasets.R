load(here::here("data-raw/OGTT_tidy.rda"))
OGTT_long <- OGTT_tidy

library(tidyr)
library(dplyr)

OGTT_wide <- OGTT_long %>% 
  gather(Measurement, Value, matches("glucose|insulin|nefa")) %>% 
  mutate(
    timePoint = as.character(timePoint),
    timePoint = stringr::str_replace(timePoint, "-", "minus_")
  ) %>% 
  unite(measure_time, Measurement, timePoint) %>% 
  spread(measure_time, Value)

usethis::use_data(OGTT_long, overwrite = TRUE)
usethis::use_data(OGTT_wide, overwrite = TRUE)
