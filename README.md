# Youth Tobacco Survey Analysis

This project analyzes data from the **Youth Tobacco Survey (YTS)** to explore trends in tobacco use among minors in Alabama. The analysis focuses on changes in tobacco use over time and gender-based disparities among high school students.

## Project Overview
- **Data Source**: [Youth Tobacco Survey (YTS) Data](https://catalog.data.gov/dataset/youth-tobacco-survey-vts-data)
- **Tools Used**: R, ggplot2, dplyr
- **Key Questions**:
  1. How has tobacco usage among minors in Alabama changed over time?
  2. Are there gender-based disparities in tobacco use among high school students?

## Key Findings
- Tobacco use among high school students in Alabama has decreased significantly from 2000 to 2016.
- Female students show a stronger and more consistent decline in tobacco use compared to male students.
- The lowest tobacco use rates were observed in 2010.

## Visualizations
1. **Tobacco Use by Year**: Bar chart showing tobacco use trends for middle and high school students.
2. **Tobacco Use by Gender**: Histogram comparing tobacco use frequencies between male and female students.
3. **Scatter Plot**: Correlation between year and tobacco use, stratified by gender.

## Code
- `tobacco_use_by_year.R`: Code for the bar chart.
- `tobacco_use_by_gender.R`: Code for the histogram.
- `scatterplot_tobacco_use.R`: Code for the scatter plot.

## Limitations
- The dataset covers only up to 2016, missing recent trends.
- Self-reported data may introduce inaccuracies.

## Future Work
- Expand the analysis to include more recent data.
- Investigate the impact of e-cigarettes and vaping on tobacco use trends.

## Sources
- [American Cancer Society](https://www.cancer.org)
- [American Lung Association](https://www.lung.org)
- [Centers for Disease Control and Prevention](https://www.cdc.gov/tobacco)
- [National Institute on Drug Abuse](https://www.drugabuse.gov)

---

## How to Run the Code
1. Clone this repository.
2. Install the required R packages: `dplyr`, `ggplot2`.
3. Run the R scripts to generate the visualizations.
