# Data-Driven Quality Analysis of Dissimilar Resistance Spot Welding of DP590-GA and IF-GA Automotive Steels

## Overview

This project combines manufacturing engineering and data analytics to study the quality of dissimilar resistance spot welding (RSW) between DP590-GA and IF-GA automotive steels.

The idea for this project originated during my Summer Internship under Dr. Kanwer Singh Arora, where I worked on Resistance Spot Welding experiments. While analyzing the experimental results, I realized that the collected welding data could be further explored using modern data analytics techniques.

Instead of limiting the study to conventional welding analysis, I decided to integrate my growing skills in SQL, Python, NumPy, Pandas, Matplotlib, Seaborn, and Power BI to extract meaningful insights from the experimental data and investigate how welding parameters influence weld quality.

This project represents an attempt to bridge the gap between manufacturing processes and data-driven decision-making.



## Objectives

The primary objectives of this project are:

* Analyze the relationship between welding parameters and weld quality.
* Study the influence of welding current, weld time, and electrode force on tensile strength.
* Identify the optimal welding window for maximum weld quality.
* Compare different failure modes such as Pullout Failure (PF) and Interfacial Fracture (IF).
* Demonstrate the application of data analytics techniques in manufacturing engineering.



## Materials

### Base Materials

* DP590-GA (Dual Phase 590 Galvannealed Steel)
* IF-GA (Interstitial Free Galvannealed Steel)

These steels are widely used in automotive body structures because they provide a balance of strength, formability, and corrosion resistance.



## Dataset Description

The dataset consists of welding process parameters and weld quality measurements.

### Features

| Feature             | Description                   |
| ------------------- | ----------------------------- |
| Sample_ID           | Unique sample number          |
| Current_kA          | Welding current (kA)          |
| Weld_Time_Cycles    | Welding time (cycles)         |
| Electrode_Force_kN  | Electrode force (kN)          |
| Resistance_mOhm     | Contact resistance            |
| Heat_Input          | Heat generated during welding |
| Nugget_Diameter_mm  | Weld nugget diameter          |
| Tensile_Strength_kN | Tensile shear strength        |
| Failure_Mode        | PF or IF                      |
| Expulsion           | Presence of expulsion         |

---

## Tools and Technologies

### Database

* PostgreSQL

### Data Analysis

* Python
* Pandas
* NumPy

### Data Visualization

* Matplotlib
* Seaborn


### Data Preparation

* Microsoft Excel



## Methodology

### 1. Data Collection

Experimental welding data was collected from resistance spot welding trials involving DP590-GA and IF-GA steel sheets.

### 2. Data Storage

The data was structured and stored in PostgreSQL for efficient querying and management.

### 3. SQL Analysis

Several SQL queries were used to:

* Calculate average tensile strength
* Identify optimal welding parameters
* Analyze failure mode distributions
* Determine expulsion rates
* Compare weld quality across different parameter combinations

### 4. Python Analysis

Using Pandas and NumPy:

* Data cleaning
* Statistical analysis
* Correlation studies
* Outlier detection
* Feature exploration

### 5. Data Visualization

Matplotlib and Seaborn were used to generate:

* Correlation heatmaps
* Scatter plots
* Distribution plots
* Regression plots
* Failure mode comparisons

### 6. Predictive Modeling

A Linear Regression model was implemented to investigate whether tensile strength could be predicted using welding process parameters.



## Research Questions

The project attempts to answer the following questions:

1. Which welding parameter has the strongest influence on tensile strength?
2. How does welding current affect weld quality?
3. What relationship exists between nugget diameter and tensile strength?
4. Which parameter combinations result in Pullout Failure?
5. At what point does expulsion become significant?
6. Can weld quality be predicted using process parameters?
7. What is the optimal welding window for achieving maximum strength without expulsion?



## Key Findings

* Welding current showed a strong influence on tensile strength and nugget diameter.
* Larger nugget diameters generally resulted in higher tensile shear strength.
* Pullout Failure (PF) was associated with stronger welds compared to Interfacial Fracture (IF).
* Excessive current increased the probability of expulsion.
* Data analytics techniques successfully identified trends that are difficult to observe through conventional experimentation alone.
* Linear regression demonstrated the feasibility of predicting weld strength using welding parameters.



## Skills Demonstrated

### Manufacturing Engineering

* Resistance Spot Welding
* Weld Quality Analysis
* Failure Mode Analysis
* Process Optimization

### Data Analytics

* SQL Querying
* Data Cleaning
* Statistical Analysis
* Correlation Analysis
* Predictive Modeling

### Visualization
* Seaborn Visualizations
* Matplotlib Charts

### Programming

* Python
* Pandas
* NumPy
* PostgreSQL



## Future Scope

Future enhancements may include:

* Machine Learning-based weld quality prediction
* Classification of failure modes using supervised learning
* Real-time weld monitoring systems
* Integration with manufacturing quality control dashboards
* Process capability and Six Sigma analysis



## Conclusion

This project demonstrates how manufacturing engineering data can be transformed into actionable insights using modern analytics tools. By combining Resistance Spot Welding experimentation with SQL, Python, and visualization platforms, the study highlights the potential of data-driven approaches for process optimization and quality improvement in automotive manufacturing.

The project also reflects my interest in applying data analytics concepts to core Production and Industrial Engineering domains, creating a practical intersection between manufacturing processes and digital engineering.

