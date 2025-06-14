# 📊 Regression Analysis: Resistor Brand Error Comparison

This repo contains my **individual contribution** to the group project *“Variance in Resistors’ Resistance.”*  
My role focused on the **regression analysis** and **statistical testing** used to evaluate how **average percent error** varies with resistance across two resistor brands: **BOJACK** and **ESSMETUIN**.

---

## 🎯 Objective

Investigate whether average percent error **increases with resistance** and compare error patterns between brands using:

| Technique | Purpose |
|-----------|---------|
| *Simple Linear Regression* | Trend detection (error vs resistance) |
| *t-test / ANOVA* | Hypothesis testing on regression slope & brand effect |
| *MATLAB Visualisations* | Scatter + regression lines (log-scaled x-axis) |

Resistances tested: **10 Ω**, **2 kΩ**, **1 MΩ**

---

## 📁 Project Structure

```
resistor-regression-analysis/
├─ data/
│  └─ resistor_error_raw.csv
├─ matlab/
│  ├─ regression_bojack.m
│  ├─ regression_essmetuin.m
│  ├─ ttest_bojack.m
│  ├─ ttest_essmetuin.m
│  └─ anova_comparison.m
├─ figures/
│  ├─ bojack_regression.png
│  └─ essmetuin_regression.png
├─ report/
│  └─ summary.pdf
└─ README.md   ← (this file)
```

---

## 📉 Methodology

| Item | Details |
|------|---------|
| **Tools** | MATLAB R2024a |
| **Data** | Average % error at three resistance levels for each brand |
| **Models** | Separate linear regressions for BOJACK and ESSMETUIN |
| **Tests** | t-test (slope significance), ANOVA (brand comparison) |
| **Scaling** | Log10 x-axis for clarity across magnitude |
| **Assumptions** | Linearity, independent errors, equal variance (homoscedasticity) |

---

## 🔍 Key Results

- **BOJACK**
  - Slope ≈ 0 → Flat trend
  - p-value > 0.05 → No significant increase in error with resistance

- **ESSMETUIN**
  - Slope ≈ 0 → Flat trend
  - ANOVA: Low F-value → Resistance explains little variance

📌 **Conclusion**  
> There is no strong evidence that average percent error increases linearly with resistance for either brand.

---

## 📊 Sample Output

> *Figures will appear once you place them in `/figures/`.*

<p align="center">
  <img src="figures/bojack_regression.png" width="420" alt="BOJACK regression">
  <img src="figures/essmetuin_regression.png" width="420" alt="ESSMETUIN regression">
</p>

Full MATLAB code and test results are available in the **`/matlab/`** folder.  
Summary interpretation is provided in **`/report/summary.pdf`**.

---

## 🙋 Author

**Abid Ahmad**  
Electrical & Computer Engineering, Wayne State University  
Focus: data-driven hardware reliability & embedded analytics  
[LinkedIn](https://www.linkedin.com/in/abid-ahmad-) • [GitHub](https://github.com/abid-ahmad)

---

## ✅ Note

This repository reflects **my individual work** on regression modeling, hypothesis testing, and visual interpretation of both resistor brands.  
Raw data collection and fabrication were shared among group members.
