# Calf Growth Analysis

## Overview

This project is designed to analyze calf growth for a small scale herd. It calculates metrics including **Relative Growth Rate (RGR**) and **Average Daily Gain (ADG)** for each calf and the whole herd.

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

-   Code includes warnings for invalid inputs (For example if initial or final body weight ≤ 0, t2 ≤ t1)
-   This project can be used for other livestock growth studies
