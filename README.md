# Resistor Precision Analysis – Regression Study (BOJACK vs ESSMETUIN)

## 📌 Project Overview
This project investigates the consistency and precision of resistors from two brands — **BOJACK** and **ESSMETUIN** — at three nominal resistance values: **10 Ω, 2 kΩ, and 1 MΩ**.  
We used **statistical analysis** and **data visualization** to compare measurement deviations and determine if average percent error increases with resistance.

The study was conducted as part of a group project for **BE 2100: Basic Engineering III – *Probability and Statistics***, with my individual contribution focused on **regression analysis using MATLAB**.

---

## 🔍 My Role in the Project
- Performed **regression analysis** to test the relationship between resistance and average percent error.
- Developed MATLAB scripts to:
  - Calculate **average percent error** for each resistor type.
  - Perform **t-tests** and **ANOVA** for both brands.
  - Create regression plots with **logarithmic x-axis scaling** for clarity.
- Wrote the **Regression Analysis** section of the final report, including:
  - **Justification** for method choice.
  - **Assumptions** of the regression model.
  - **Interpretation** of results.
- Designed the **"Average Percent Error vs Resistance"** plot with fitted trend lines for both brands.

---

## 📊 Regression Results Summary
- **Goal:** Determine if average percent error increases consistently with resistance.
- **Method:** Simple linear regression in MATLAB (3 resistance levels, 30 samples each).
- **Key Findings:**
  - p-values > 0.05 for all cases → **no statistically significant relationship**.
  - Slopes close to zero, low R², and low F-statistics indicate **very weak correlation**.
  - Conclusion: **Percent error does not increase consistently** with resistance.
- **Why Logarithmic Scale:** The resistor dataset spans three orders of magnitude (10 Ω to 1 MΩ).  
  A standard linear scale would compress low resistance values, making them difficult to compare. Using a log scale:
  1. Improves visibility of both low and high resistance points.
  2. Makes proportional differences easier to interpret.
  3. Reduces skewness in regression visualization.

---

## 🛠️ Tools & Technologies
- **MATLAB** – Data analysis, regression modeling, and plotting.
- **Multimeter** – Resistance measurement.
- **Excel/Spreadsheets** – Data recording and organization.

---

## 📂 Repository Structure

| **Folder/File** | **Description** |
|-----------------|-----------------|
| 📄 [BE2100_FP1.m](analysis/BE2100_FP1.m) | MATLAB code for regression |
| 📊 [resistor_data_bojack_essmetuin.csv](data/resistor_data_bojack_essmetuin.csv) | Dataset of resistor measurements (BOJACK & ESSMETUIN) |
| 📁 **Figures** | Generated plots & statistical tables |
| &emsp;🖼 [REGRESSION_PLOT.png](figures/REGRESSION_PLOT.png) | Regression plot |
| &emsp;🖼 [BOJACK_T-TEST.png](figures/BOJACK_T-TEST.png) | BOJACK T-Test table |
| &emsp;🖼 [BOJACK_ANOVA_TABLE.png](figures/BOJACK_ANOVA_TABLE.png) | BOJACK ANOVA table |
| &emsp;🖼 [ESSMETUIN_T-TEST.png](figures/ESSMETUIN_T-TEST.png) | ESSMETUIN T-Test table |
| &emsp;🖼 [ESSMETUIN_ANOVA_TABLE.png](figures/ESSMETUIN_ANOVA_TABLE.png) | ESSMETUIN ANOVA table |
| 📄 [resistor_regression_report.pdf](report/resistor_regression_report.pdf) | Final project report |
| 📄 [resistor_variance_slides.pdf](report/resistor_variance_slides.pdf) | Presentation slides |
| 📄 [README.md](README.md) | Project documentation |

---

**Abid Ahmad**  
Electrical & Computer Engineering  
Wayne State University  
🔬 Focus: Data-driven hardware reliability & embedded systems
🌐 [LinkedIn](https://www.linkedin.com/in/abid-ahmad-83bb0527b) 
