# Resistor Precision Analysis – Regression Study (BOJACK vs ESSMETUIN)

## 📌 Project Overview
This project investigates the consistency and precision of resistors from two brands — **BOJACK** and **ESSMETUIN** — at three nominal resistance values: **10 Ω, 2 kΩ, and 1 MΩ**.  
We used **statistical analysis** and **data visualization** to compare measurement deviations and determine if average percent error increases with resistance.

The study was conducted as part of a group project for **[Course Name]**, with my individual contribution focused on **regression analysis using MATLAB**.

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
  - p-values > 0.05 for all cases → **no statistically significant trend**.
  - Slopes close to zero, low R², and low F-statistics indicate **very weak correlation**.
  - Conclusion: **Percent error does not increase consistently** with resistance.

---

## 🛠️ Tools & Technologies
- **MATLAB** – Data analysis, regression modeling, and plotting.
- **Multimeter** – Resistance measurement.
- **Excel/Spreadsheets** – Data recording and organization.

---
## 📂 Repository Structure

## 📂 Repository Structure

| Folder/File | Description |
|-------------|-------------|
| 📁 [analysis/](analysis) | MATLAB scripts for regression analysis |
| └── 📄 [BE2100_FP1.m](analysis/BE2100_FP1.m) | MATLAB code for regression |
| 📁 [data/](data) | Raw resistor measurement data |
| └── 📄 [resistor_data.csv](data/resistor_data.csv) | Dataset of resistor measurements |
| 📁 [figures/](figures) | Generated plots & images |
| ├── 🖼 [regression_plot.png](figures/regression_plot.png) | Regression plot |
| ├── 🖼 [boxplot.png](figures/boxplot.png) | Boxplot |
| └── 🖼 [histogram.png](figures/histogram.png) | Histogram |
| 📁 [report/](report) | Final report & presentation slides |
| ├── 📄 [resistor_regression_report.pdf](report/resistor_regression_report.pdf) | Final project report |
| └── 📄 [resistor_variance_slides.pdf](report/resistor_variance_slides.pdf) | Presentation slides |
| 📄 [README.md](README.md) | Project documentation |
| 📄 [LICENSE](LICENSE) | License file (MIT, Apache, etc.) |

## 🧑‍💻 Author

**Abid Ahmad**  
Electrical & Computer Engineering  
Wayne State University  
🔬 Focus: Data-driven hardware reliability & embedded systems

