# Read the CSV file
civic.raw <- read.csv("civic-virtues-dataset/civic.raw.csv")

# Create a function to check if a column can be safely converted to numeric
is_convertible_to_numeric <- function(x) {
  if(is.numeric(x)) {
    return(TRUE)
  } else {
    na_before <- sum(is.na(x))
    na_after <- sum(is.na(suppressWarnings(as.numeric(x))))
    return(na_before == na_after)  # Return TRUE only if conversion doesn't create new NAs
  }
}

civic.clean <- civic.raw %>%
  # Add subject numbers starting from 1001
  mutate(`subject #` = 1001:(1000 + nrow(.))) %>%
  # Move subject # column to the leftmost position
  select(`subject #`, everything()) %>%
  # Convert appropriate columns to numeric type
  mutate(across(where(is_convertible_to_numeric), as.numeric))

# Check column types using str()
# str(civic.clean)

civic.construct <- civic.clean %>%
  # Remove Row 83 since the participant did not finish the survey
  slice(-83) %>%
  # Create summed column
  mutate(`Civility Towards Others` = rowSums(select(., WRC_A1:WRC_A13), na.rm = TRUE),
         `Civility Towards Me` = rowSums(select(., WRC_B1:WRC_B13), na.rm = TRUE),
         `Civility Total` = `Civility Towards Others` + `Civility Towards Me`, 
         `Civic Behaviors` = rowSums(select(., ceB_1:ceB_6), na.rm = TRUE),
         `Civic Attitudes` = rowSums(select(., ceA_1:ceA_8), na.rm = TRUE),
         `CB_CA Total` = `Civic Behaviors` + `Civic Attitudes`, 
         `Wise Reasoning`= rowSums(select(., SWIS_1:SWIS_21), na.rm = TRUE), 
         # Reverse code the columns (for a 1-5 scale, new_value = 6 - old_value)
         NFC_3 = 6 - NFC_3R, 
         NFC_4 = 6 - NFC_4R,
         `Need for Cognition` = NFC_1 + NFC_2 + NFC_3 + NFC_4 + NFC_5 + NFC_6,
         `Empathy` = rowSums(select(., EQ_1:EQ_8), na.rm = TRUE),
         `Need for Closure` = rowSums(select(., Q625:Q348), na.rm = TRUE)
  )%>%
  
  {
    # Get column positions
    all_cols <- names(.)
    start_col <- which(all_cols == "Q625")
    end_col <- which(all_cols == "Q348")
    cols_to_remove <- all_cols[start_col:end_col]
    
    # Apply all removals
    select(.,
           -starts_with("WRC_A"), -starts_with("WRC_B"), 
           -starts_with("ceB_"), -starts_with("ceA_"),
           -Q279_First.Click, -Q279_Last.Click, -Q279_Page.Submit, -Q279_Click.Count,
           -starts_with("SWIS_Personal_Intro"),
           -starts_with("SWIS_"),
           -starts_with("NFC_"),
           -starts_with("EQ_"),
           # Remove Q625 through Q348 columns
           -all_of(cols_to_remove),
           -starts_with("EH_Q"),
           -starts_with("SA7"),
           -Lottery_1,
           -Q315,
           -Q321, 
           -prior.SA., 
           -NoSA2a,
           -itnl.travel,
           -Q314
    )
  } %>%
  rename(`Epistemic Humility` = SC22,
         `Cultural Competence` = SC26) %>%
  
  # Reorder to place new column near the beginning
  select(`subject #`, 
         `Civility Towards Others`, `Civility Towards Me`, `Civility Total`, 
         `Civic Behaviors`, `Civic Attitudes`, `CB_CA Total`,
         `Wise Reasoning`,
         `Need for Cognition`,
         `Empathy`,
         `Need for Closure`,
         `Epistemic Humility`,
         `Cultural Competence`,
         everything())%>%
  
  # Remove columns from Q373 to id 
  select(-Q373:-id)

view(civic.construct)
write_csv(civic.construct, "civic-virtues-dataset/civic.construct.csv")



# Create a new dataset with additional columns for student
civic.student <- civic.construct %>%
  # Create a column to differentiate between American students, International students, and American students with a study abroad experience
  mutate(`Student Status` = factor(case_when(
    Q367 == 1 ~ "International",
    Q367 == 2 & Participation == 1 ~ "American.sa",
    Q367 == 2 & Participation %in% c(2, 3, 4) ~ "American"
  ),
  # Specify levels to control the order in analyses
  levels = c("International", "American.sa", "American", "Other"))) %>%
    
  # Create a column for a second set of cultural competency scores
  mutate(`CC.sa` = case_when(
    `Student Status` == "American.sa" ~ rowSums(select(., Q371_1:Q371_5), na.rm = TRUE),
    `Student Status` == "International" ~ rowSums(select(., Q372_1:Q372_5), na.rm = TRUE),
    TRUE ~ 0
  ))%>%
  
  # Create a column for gender
  mutate(`Gender` = factor(case_when(
    Q663 == 1 ~ "Male",
    Q663 == 2 ~ "Female",
    Q663 == 3 ~ "Prefer to desribe",
    Q663 == 4 ~ "Prefer not to answer"
  ))) %>%
  
  # Create a column for ethnicity
  mutate(`Ethnicity` = fct_infreq(factor(case_when(
    Q664 == 1 ~ "Black or African American",
    Q664 == 2 ~ "White",
    Q664 == 3 ~ "Asian",
    Q664 == 4 ~ "American Indian or Alaskan Native",
    Q664 == 5 ~ "Native Hawaiian or Other Pacific Islander",
    Q664 == 6 ~ "Two or more races",
    Q664 == 7 ~ "Prefer to self-describe",
    Q664 == 8 ~ "Prefer not to answer",
    Q664 %in% c("1,4,6,7", "2,7", "3,6", "3,7", "2,3", "2,6", 
                "1,4,6,7", "2,4", "3,4", "1,2", "1,3") ~ "Two or more races",
    Q664 == "" ~ "Not specified"
  )))) %>%
  
  mutate(Multiracial = str_detect(Ethnicity, "Two or more races"),
         Ethnicity_Shortened = str_replace(Ethnicity, 
                                           "Prefer to ", 
                                           "")) %>%
  
  
  rename(Age = Q662)%>%
  replace_na(list(Age = 0, `CC.sa` = 0)) %>%
  
  
  select(-Q367, -Participation, -Q371_1, -Q371_2, -Q371_3, -Q371_4, -Q371_5, -Q371_6, -Q371_7,
         -Q372_1, -Q372_2, -Q372_3, -Q372_4, -Q372_5,
         -Q663, -Q663_3_TEXT, 
         -Q664, -Q664_7_TEXT)%>%
  
  select(`subject #`, 
         `Civility Towards Others`, `Civility Towards Me`, `Civility Total`, 
         `Civic Behaviors`, `Civic Attitudes`, `CB_CA Total`,
         `Wise Reasoning`,
         `Need for Cognition`,
         `Empathy`,
         `Need for Closure`,
         `Epistemic Humility`,
         `Cultural Competence`,
         `Student Status`,
         `CC.sa`,
         `Gender`,
         `Ethnicity`,
         `Age`,
         everything())
  
view(civic.student)
write_csv(civic.student, "civic-virtues-dataset/civic.student.csv")


civic.clean <- civic.student %>%
  select(`subject #`, 
         `Civility Towards Others`, `Civility Towards Me`, `Civility Total`, 
         `Civic Behaviors`, `Civic Attitudes`, `CB_CA Total`,
         `Wise Reasoning`,
         `Need for Cognition`,
         `Empathy`,
         `Need for Closure`,
         `Epistemic Humility`,
         `Cultural Competence`,
         `Student Status`,
         `CC.sa`,
         `Gender`,
         `Ethnicity`,
         `Age`)

write_csv(civic.clean, "civic-virtues-dataset/civic.clean.csv")











