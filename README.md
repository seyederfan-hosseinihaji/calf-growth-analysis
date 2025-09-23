# Calf Growth Analysis

These lines of code allow you to calculate Relative Growth Rate (RGR) and Average Daily Gain (ADG) for a herd of any type of livestock, such as beef cattle, sheep, goats, etc."

## Overview

This project is designed to analyze calf growth in a small-scale herd. It calculates key metrics, including **Relative Growth Rate (RGR)** and **Average Daily Gain (ADG)**, for each calf and for the herd as a whole.

## Features

-   Calculates RGR for each calf with input validation
-   Determines whether each calf grew over the period
-   Computes ADG (Average Daily Gain)
-   Summarizes herd performance (mean RGR, mean ADG, number and percentage of calves that grew)
-   Exports results to a CSV file for future analysis

## Installation

`git clone https://github.com/seyederfan-hosseinihaji/calf-growth-analysis.git`

`cd calf-growth-analysis`

In R:

`install.packages(c("dplyr", "readr"))`

`source("calf_growth_analysis.R")`

## Notes

-   Code includes warnings for invalid inputs (For example, if initial or final body weight ≤ 0, t2 ≤ t1)
-   This project can be used for other livestock growth studies
