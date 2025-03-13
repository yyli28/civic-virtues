# Research Project Assessment

**This assessment is for the final research project only.** Use the `assessment.md` file for all mini-projects.

## Instructions

Before submitting your research project draft for grading, confirm:

1.  The manuscript .qmd for your project is in the root directory and knits to .pdf without error.
2.  The knitted .pdf of your draft is in the root directory, with the same filename as the .qmd.
3.  This `research-assessment.md` file is in the root directory of your project repo.
4.  Dr. Dowling and your section TA are collaborators on your GitHub repo with permissions to pull/push.

To complete this assessment:

1.  Complete the basic information section and AI statement.
2.  Confirm all links are correct and accessible
3.  Check off all objectives you are attempting to demonstrate
    1.  To earn 30 points you must demonstrate each objective. However, you do not need to attempt all objectives with each draft if your goal is to build the project over time.
    2.  If the objective is demonstrated somewhere other than the .qmd, add a note in the grader comments section for where to find it (e.g., "see `data-cleaning.R` lines 20-30").
4.  Optionally, complete the reflection section, which may earn engagement points.

## Basic information

Name: Yangyue Li

CNetID: yangyueli28

Section: 1

Research project title: The relationship between international study and civic virtues

Submission date: 3/12

Submission number (1-4): 1

Project GitHub repository URL: <https://github.com/yyli28/civic-virtues.git>

Filename of manuscript .qmd: civic-virtues-yyli28.qmd

Filename of knitted .pdf: civic-virtues-yyli28.pdf

## AI Statement

Describe whether and how you used AI/LLMs when completing this project:

I used AI for the following things:

1.  Debugging: I initially attempted to debug issues on my own. If I was unable to resolve them, I consulted AI by uploading error messages for assistance.
2.  Visual Design Suggestions: I sought for AI's recommendations on the most appropriate types of visualizations to effectively represent my data.

Optionally (for engagement points) reflect on your use of AI:

To be honest, AI can be dumb and frustratingly unhelpful at times, even when my prompts are clear and straightforward. During debugging, I often found it more effective to search for solutions on Reddit or Google rather than relying solely on AI. Asking for help on Slack was also a smart way! Additionally, while AI provided some guidance on visualizations, it didn’t always produce high-quality tables or figures. In the end, I often decided to rely on my own initial ideas rather than AI-generated suggestions.

## Overall requirements

Overall requirements for the research project are as follows:

1.  The project must be a research project. It must provide background on a research topic, ask at least one research question, use data to attempt to answer that question, report the results of the data analysis, and interpret the results in the context of the research question.
2.  The project must be contained in a github repository that follows git best practices and includes all necessary files to run the project from start to finish, including:
    1.  The .qmd file for the manuscript
    2.  All data files used in the project
    3.  All scripts used in the project
    4.  A README.md file & .gitignore file
3.  The project must be reproducible -- a reader should be able to clone the repo and run the .qmd from start to finish without error. The .qmd file should include:
    1.  A YAML header with all fields necessary for an APA manuscript
    2.  Setup source chunks that load libraries, read in data, set chunk options, set seed, etc.
    3.  Minimally, an IMRD structure (Introduction, Methods, Results, Discussion), though it may be more complex
    4.  Integration of markdown and code chunks throughout, following best practices for using code chunks
    5.  Figures and tables rendered in code chunks
    6.  Inline R code & references to render data-dependent text
    7.  At least 1 descriptive analysis and 1 hypothesis test, either in code chunks or sourced scripts
    8.  Frequent and informative code comments throughout
4.  The .qmd file should knit/render to an APA7 formatted manuscript with one click and no errors. The knitted manuscript should include:
    1.  A title page with title, author, and institutional affiliation
    2.  An abstract (this may be minimal, but should exist)
    3.  Narrative text comprising a complete research report
    4.  APA7 references, both in-text citations and a References page
    5.  Publication-ready figures (2+) and tables (1+)
    6.  Results of all analyses presented in-text (and where appropriate, in tables), with no raw R output; where possible, all text should be data-dependent and rendered with inline R code
    7.  Quarto generated references to all figures and tables
    8.  Statistical analyses and figures interpreted in narrative text
5.  The .qmd should render a .pdf identical to the .pdf you submit for grading

## Assessment

The final project must demonstrate each of 30 the course learning objectives, each worth 1 point.

Below each learning objective is a list of general expectations for meeting that objective. You should aim to meet all expectations to earn a point for meeting the objective, but these are not rigid requirements. For example, writing a complex and creative function that uses multiple arguments and returns a complex output could meet the "parse and define functions and arguments" objective, even if it is only used in one context.

Refer to the website for general tips on meeting these objectives and an FAQ.

### GitHub and R Studio

1.  Create and maintain a repo with sensible organization and naming conventions

    1.  All folder and file names are informative

    2.  Uses relative paths correctly

    3.  Does not have duplicate/redundant elements

        -   [x] Objective attempt
        -   [ ] Objective met
        -   Grader comments:

2.  Maintain an informative and up-to-date README.md

    1.  Includes description of repo purpose, data use, research questions, etc.

    2.  Outlines the repo structure with file tree or similar

        -   [x] Objective attempt
        -   [ ] Objective met
        -   Grader comments:

3.  integrate a GitHub repo with an R studio project, including .gitignore file

    1.  All scripts run and all notebooks render if the repo is cloned to another location

    2.  .gitingore comprehensively excludes unnecessary, private, and very large files and are commented appropriately

        -   [x] Objective attempt
        -   [ ] Objective met
        -   Grader comments:

4.  effectively use version control

    1.  Used frequent, informative commit messages

    2.  Relies on document revisions rather than manually created new versions

        -   [x] Objective attempt
        -   [ ] Objective met
        -   Grader comments:

### R programming

5.  Find, install, require, and load R packages

    1.  No errors occur when running scripts in a new environment

        1.  If packages other than the "class packages" listed on the resources page are used, code to install/require them is included *and commented out*
        2.  When a reader opts-in to installing packages by uncommenting the code, it runs without errors

    2.  Uses more than one function to install/load/require packages (including those used in commented code)

        -   [x] Objective attempt
        -   [ ] Objective met
        -   Grader comments:

6.  Use arithmetic, comparison, and logical operators

    1.  Uses all three types of operators

    2.  Uses multiple operators in data transformation pipelines and/or inline R code

        -   [x] Objective attempt
        -   [ ] Objective met
        -   Grader comments:

7.  Parse and define functions and arguments

    1.  Defines at least one function with at least one argument in code chunks or sourced scripts

    2.  User-defined function(s) run(s) without error and produces expected output in at least 2 contexts

    3.  Functions are well-documented with comments

        -   [x] Objective attempt
        -   [ ] Objective met
        -   Grader comments:

8.  Parse and write conditional statements and/or loops

    1.  Uses conditional in multiple contexts, including dplyr pipelines

    2.  Uses multiple types of conditional/loop functions (e.g., `if_else()`, `case_when()`, `for`, `while`)

        -   [x] Objective attempt
        -   [ ] Objective met
        -   Grader comments:

9.  Use `readr` functions to read in and write out data

    1.  Reads in data from at least one source in code chunk or sourced script

    2.  Writes out intermediate and/or final datasets in code chunks or sourced scripts

    3.  Uses only relative paths that run without error when repo is cloned

        -   [x] Objective attempt
        -   [ ] Objective met
        -   Grader comments:

10. Use `dplyr` and `tidyr` functions to transform data

    1.  Uses at least 3 unique `dplyr` functions

    2.  Uses at least 1 `tidyr` function in a data transformation pipeline

    3.  Combines `dplyr` and `tidyr` functions in a data transformation pipeline

        -   [x] Objective attempt
        -   [ ] Objective met
        -   Grader comments:

11. Use `stringr` functions to work with string variables

    1.  Uses ate least 2 unique `stringr` functions

    2.  Uses `stringr` functions in a data transformation pipeline

        -   [x] Objective attempt
        -   [ ] Objective met
        -   Grader comments:

12. Use `forcats` functions to work with factor variables

    1.  Uses ate least 2 unique `forcats` functions or one function in 2 unique contexts (with different purposes)
    2.  Uses `forcats` functions in a data transformation pipeline

    -   NOTE: Though they are base R functions, `factor()` and `levels()` can be used to meet this objective as long as they are used in a way that demonstrates the same skills as `forcats` functions, which should involve including optional arguments

        -   [x] Objective attempt
        -   [ ] Objective met
        -   Grader comments:

### Data visualization with ggplot2

13. Produce 1- and 2-variable plots with `geom_*` layers

    1.  Creates at least 2 figures with different `geom_*` layers (e.g., a scatter plot and a bar plot)

    2.  At least one plot is multi-variable

        -   [x] Objective attempt
        -   [ ] Objective met
        -   Grader comments:

14. Use dynamic aesthetics to group data

    1.  Uses at least 2 unique data-mapped `aes()` arguments (e.g., color, shape, size) to group data in a plot in one or multiple plots

        -   [x] Objective attempt
        -   [ ] Objective met
        -   Grader comments:

15. Use facets to create parallel plots

    1.  EITHER:
    2.  Uses both `facet_wrap()` and `facet_grid()` in two different plots *or*
    3.  Uses facets with at least one plot using at least two optional arguments (e.g., modifying the number of rows and columns, using free vs fixed scales, etc.)
    4.  Combines facets with other dynamic grouping aesthetics
    5.  If data only includes 1 sensible grouping variable, it may be used for both the faceting and groupin aes.

    -   [x] Objective attempt
    -   [ ] Objective met
    -   Grader comments:

16. Create publication-quality plots using `theme` and `labs` layers

    1.  Plots have informative titles, axis labels, and legends

    2.  Fonts are stylized professionally and legibly (e.g., adjusted size/angle/justification)

    3.  Variables and labels display in plain English (e.g., "Age (years)" not "child_age_yrs"

    4.  Uses at least 1 static aesthetic (e.g., color, shape, size) that improves visual clarity without mapping to data

        -   [x] Objective attempt
        -   [ ] Objective met
        -   Grader comments:

### Data analysis

17. Perform simple descriptive analyses with multiple data types

    1.  Calculates summary/descriptive statistics for at least 1 numeric variable (e.g., mean, standard deviation)
    2.  Calculates summary/descriptive statistics for at least 1 non-numeric variable (e.g., frequencies, proportions)
    3.  Presents results in narrative text, table, or plot

    -   NOTE: This objective may be met with only numeric or non-numeric summaries if they are sufficiently complex (at Dr. Dowling's discretion)

        -   [x] Objective attempt
        -   [ ] Objective met
        -   Grader comments:

18. Perform simple hypothesis testing analyses for multiple data types

    1.  Performs at least 1 hypothesis test for numeric data (e.g., t-tests, linear regression)
    2.  Performs at least 1 hypothesis test for factor data (e.g., chi-square, ANOVA)
    3.  Presents results in narrative text, table, or plot

    -   NOTE: This objective may be met with only numeric or factor data analyses if they are sufficiently complex (at Dr. Dowling's discretion)

        -   [x] Objective attempt
        -   [ ] Objective met
        -   Grader comments:

19. Present and interpret statistics in manuscript narrative

    1.  Presents and interprets results of analyses in narrative text, like the results section of a journal article, including all information appropriate for a given analysis (e.g., effect size, p-value, confidence interval -- dependent on analysis type and results)

    2.  Discriminates between statistically signficiant and non-signficant statistics, where applicable

    3.  Discriminates between informative and non-informative statistics and presents only the former in narrative text

    4.  Uses dynamic inline R code to render data-dependent text

        -   [x] Objective attempt
        -   [ ] Objective met
        -   Grader comments:

### BibTeX

20. Render APA7 in-text citations with BibTeX syntax for multiple citation forms

    1.  Cites at least 3 sources in-text

    2.  Uses at least 2 citation forms (e.g., (Author, Year), Author (Year), etc.)

    3.  May use `cite_r()` to cite R and R packages

        -   [x] Objective attempt
        -   [ ] Objective met
        -   Grader comments:

21. Render an APA7 references page from a .bib file

    1.  Includes all sources cited in-text

    2.  Formats references in APA7 style

    3.  Presents accurate, complete, and error-free references

    4.  May include R and R package citations with `cite_r()`

    5.  May include references not cited in-text

        -   [x] Objective attempt
        -   [ ] Objective met
        -   Grader comments:

### Notebooks and code chunks

22. Create and effectively use code chunks following best practices

    1.  Uses informative names/labels

    2.  Includes frequent, informative comments

    3.  Follows the "1-chunk-1-thing" rule

    4.  Chunks are distributed throughout the manuscript, sensibly placed near the text they support

        -   [x] Objective attempt
        -   [ ] Objective met
        -   Grader comments:

23. Use code chunks to set up a quarto document

    1.  Sources at least 1 .R script and/or reads in necessary data

    2.  Loads packages in at least 1 code chunk

    3.  Sets preferences/options in at least 1 code chunk

    4.  Organizes setup chunks sensibly

        -   [x] Objective attempt
        -   [ ] Objective met
        -   Grader comments:

24. Render publication-quality tables, figures, and images from code chunks

    1.  Produces at least 1 table or image with a caption
    2.  Produces at least 1 figure/plot with a markdown caption (title) and note
    3.  Captions are informative, complete, and render correctly
    4.  All tables and figures are referenced in the narrative text (e.g., Figure 1)
    5.  References render without error and link to the correct table/figure in pdf/html output

    -   NOTE: Ideally your table(s) should be produced in APA7 style, but this is not a strict requirement. At a minimum, they should render as formatted tables (not raw output), have readable and correctly formatted text (e.g., column headers should be capitalized and in plain english, not literal variable names), and the table must be dynamically referenced in the text.

        -   [x] Objective attempt
        -   [ ] Objective met
        -   Grader comments:

25. Execute descriptive and inferential analyses in code chunks

    1.  At least 1 code chunk executes a descriptive analysis (e.g., `summary()`, `table()`)

    2.  At least 1 code chunk executes a hypothesis test (e.g., `t.test()`, `chisq.test()`)

    3.  Results are presented in narrative text, table, or plot

    4.  Results are not displayed as raw R output

    5.  Chunks are organized sensibly and appear near the text they support

        -   [x] Objective attempt
        -   [ ] Objective met
        -   Grader comments:

### R Markdown and Quarto

26. Create and maintain a quarto document YAML header

    1.  Includes all necessary metadata, output options, and formatting options necessary to render an APA styled document (or other specified style if appropriate for the project)

        -   [x] Objective attempt
        -   [ ] Objective met
        -   Grader comments:

27. Use quarto R Markdown to compose an academic manuscript

    1.  Uses at least 2 unique text styles (e.g., bold, italics, code)
    2.  Uses at least 2 unique header levels
    3.  Includes at least 1 list
    4.  Includes at least 1 footnote

    -   NOTE: This is going to be one of the most flexible objectives to demonstrate. You need to demonstrate a range of markdown skills and use them to make a readable, informative manuscript. Hitting the four points above should do that, but you can use your judgment about what kind of markdown features will best serve your project. No matter what, you should use markdown to follow APA7 guidelines.

        -   [x] Objective attempt
        -   [ ] Objective met
        -   Grader comments:

28. Use inline R variables to replace static text

    1.  Replaces static text with inline R references in at least 3 unique numeric contexts

    2.  Replaces static text with inline R references in at least 1 character context

    3.  Ideally, uses inline R references for *all* data-dependent text

        -   [x] Objective attempt
        -   [ ] Objective met
        -   Grader comments:

29. Run inline R functions to render dynamic data-dependent text

    1.  Uses inline R functions to render at least 3 unique data-dependent text outputs (e.g., performs rounding, calculates means, subtracts one list length from another, etc. -- inline rather than in a code chunk)

        -   [x] Objective attempt
        -   [ ] Objective met
        -   Grader comments:

30. Use `knitr` and quarto to produce an APA7 formatted 1-click PDF manuscript

    1.  Produces a PDF output that is formatted in APA7 style

    2.  PDF includes all necessary elements (e.g., title page, abstract, body, references)

    3.  PDF renders without error and includes all text, tables, and figures

    4.  No additional steps are needed (e.g., finding data, determining necessary packages to install and load, running unsourced scripts, correcting aboslute paths)

        -   [x] Objective attempt
        -   [ ] Objective met
        -   Grader comments:

## Reflection (Optional)

Optionally (for engagement points) write a brief reflection about your work on this project. You can use this space to answer the following questions, but feel free to ignore these questions and write about whatever you think is most important.

-   What was the most challenging aspect of this project?
-   What was the most rewarding aspect of this project?
-   What would you do differently if you were to start over?
-   What did you learn from this project that you will carry forward to future projects?
-   What are you most proud of in this project?

The most challenging part of this project was that I left myself too little time to actually start working on it. Since I was still in the data collection phase, I kept hoping I’d have more data before diving into the analysis, which somehow meant I ended up rushing everything. Another frustrating part, also related to data, was that I only had five American students with study abroad experience, which made it nearly impossible to compare them with the other two groups in any meaningful way. That being said, the most rewarding part of this project was finally getting the majority of my thesis completed. While the written portions still need substantial revisions, I now have a solid foundation to build upon.If I could do it over, I’d definitely leave myself more time instead of waiting on data that might never come. Another rewarding thing was seeing the printed tables and plots in the output, and I actually enjoy adjusting and customizing those visuals (I guess these are the only part I could possibly say that "I like it").

I’m really not great at coding, and I’m definitely not the kind of person who just “gets” it. That’s probably what I’m most proud of because even though I struggled, I still finished this project, and that’s what really matters.

Final thing (not really related to this project but definitely related to this course) that i want to mention here is that I was ACUALLY using R to analyze data for my one other class - Amanda's survey class - only because I feel like I have some skills of coding in R, so why not? Anyways, I really learned a lot in this class.

Alternatively/additionally in mind some of the suggested ways to earn engagement points, and expand on this (or other aspects of your project) in your reflection:

-   Creating many figures and tables, or particularly complex or creative ones
-   Impressively thoughtful and thorough narrative writing in your literature review or discussion section
-   Employing sophisticated statistical techniques in your analysis
-   Making excellent use of markdown features to create a polished final product
-   Having a maximally reproducible and dynamic manuscript
-   Fully committing to best practices for version control and GitHub integration/organization

## Grading

All final projects are graded by Dr. Dowling. You will see your grade on Canvas separated into two categories: objective points and engagement points.

-   **Objective points:** #/30
-   **Engagement points:** #/10
-   **Total points:** #/40

**Comments:**
