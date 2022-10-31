## code to prepare `hamarhamarconflictdata` dataset goes here

# Load libraries ----------------------------------------------------------
library(tidyverse)

# Read data ---------------------------------------------------------------
hamarconflictdata <- read_csv("data-raw/conflict_data_v1csv.csv")


# Make new variables ------------------------------------------------------

# Create intra vs inter gender variables
hamarconflictdata$gender_conflict <- NA
hamarconflictdata$gender_conflict[hamarconflictdata$person1_gender == "male" &
                               hamarconflictdata$person2_gender == "male"] = "male-male"
hamarconflictdata$gender_conflict[hamarconflictdata$person1_gender == "female" &
                               hamarconflictdata$person2_gender == "female"] = "female-female"

hamarconflictdata$gender_conflict[hamarconflictdata$person1_gender == "female" &
                               hamarconflictdata$person2_gender == "male"] = "female-male"
hamarconflictdata$gender_conflict[hamarconflictdata$person1_gender == "male" &
                               hamarconflictdata$person2_gender == "female"] = "female-male"

# Create same vs different clan variables
hamarconflictdata <- hamarconflictdata %>%
  mutate(clan_major_conflict = case_when(person1clan_major == person2clan_major ~ "intra-clan (major)",
                                         person1clan_major != person2clan_major ~ "inter-clan (major)"))
hamarconflictdata <- hamarconflictdata %>%
  mutate(clan_minor_conflict = case_when(person1clan_minor == person2clan_minor ~ "intra-clan (minor)",
                                         person1clan_minor != person2clan_minor ~ "inter-clan (minor)"))



usethis::use_data(hamarconflictdata, overwrite = TRUE)

