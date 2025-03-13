# Civic Virtues Analysis

## 📌 Overview

This repository contains all files related to the analysis of civic virtues among different student groups, including American students, American students with study abroad experience, and international students. The analysis examines key psychological constructs such as **Civic Behaviors, Civic Attitudes, Civility, Wise Reasoning, Empathy, and Cultural Competence.**

The project is implemented using **Quarto** for reproducible reporting and R for data processing, visualization, and statistical analysis.

------------------------------------------------------------------------

## 📂 Repository Structure

```         
civic-virtues-yyli28/
│── civic-virtues-dataset/      # Contains the cleaned dataset
│   ├── civic.clean.csv         # Cleaned dataset used for analysis
│── scripts/                    # Contains scripts for data cleaning and preprocessing
│   ├── data_cleaning.R         # Script for cleaning raw data
│── civic-virtues-yyli28.qmd    # Main Quarto document for analysis and report
│── civic-virtues-yyli28.pdf    # Compiled PDF version of the report
│── civic-virtues-yyli28.tex    # LaTeX output of the Quarto report
│── README.md                   # This README file
│── final-project-yangyue.Rproj  # R project file
│── sampleimage.png              # Example image used in the project
│── writing_files/               # Quarto-generated supporting files
│── bibliography.bib             # Bibliography file for references
```

## 📊 Data Processing & Cleaning

The dataset **`civic.clean.csv`** was derived from **`civic.raw.csv`** using a structured cleaning and transformation process. This process, implemented in **`clean_data.R`**, involved:

### 🔹 **1. Initial Data Preparation**

-   Imported raw data from `civic-virtues-dataset/civic.raw.csv`.
-   Added a unique **subject \#** for each participant.
-   Converted relevant columns to **numeric** format.

### 🔹 **2. Data Cleaning & Summed Scores Calculation**

-   **Removed incomplete responses**

-   Created summed scores for key constructs

-   **Dropped unnecessary variables**, including:

    -   Raw **questionnaire responses** used to compute summed scores.
    -   Redundant or unused survey metadata columns (`Q279_First.Click`, `Q279_Last.Click`, etc.).

### 🔹 **3. Student Group Categorization**

A **new categorical variable** for **Student Status** was created: - **"International"** → If Q367 = 1. - **"American.sa"** (American students with study abroad experience) → If Q367 = 2 and `Participation = 1`. - **"American"** → If Q367 = 2 and `Participation` was 2, 3, or 4.

### 🔹 **4. Additional Demographics**

-   **Cultural Competency (CC.sa)** was computed separately for **American.sa** and **International students**.
-   **Gender & Ethnicity**:
    -   Recoded gender into **Male, Female, Prefer to Describe, and Prefer Not to Answer**.
    -   Ethnicity was cleaned and grouped, including a **"Two or More Races"** category.

### 🔹 **5. Final Dataset for Analysis**

-   The final cleaned dataset, **`civic.clean.csv`**, includes:
    -   Key civic virtues constructs.
    -   **Student Status, Gender, Ethnicity, and Age**.

To replicate the cleaning process, run:

``` r
source("scripts/clean_data.R")
```

------------------------------------------------------------------------

## 📈 Analysis & Statistical Tests

The main analysis is conducted in **`civic-virtues-yyli28.qmd`** and includes:

### Descriptive Statistics

-   Summarized key civic virtue constructs across student groups.

### Group Comparisons (T-tests & ANOVA)

-   Compared constructs related to civic virtues between student groups.

### Data Visualization

-   Boxplots, correlation plots, and facet-wrapped comparisons.

To generate the full report, run:

``` sh
quarto render civic-virtues-yyli28.qmd --to pdf
```
