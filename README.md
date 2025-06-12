# 📊 Regression Analysis: Resistor Brand Error Comparison

This repository showcases my **individual contribution** to a larger group project titled *"Variance in Resistors' Resistance"*. My role focused specifically on the **regression analysis** and **statistical testing** to evaluate how the average percent error of resistors changes with resistance, across two brands: **BOJACK** and **ESSMETUIN**.

---

## 🎯 Objective

To investigate whether **average percent error** increases with resistance and to compare error patterns across resistor brands using:

- Simple Linear Regression
- t-tests and ANOVA
- MATLAB visualizations
- Logarithmic scaling for clarity across 10Ω, 2kΩ, and 1MΩ

---

## 📁 Project Structure

---

## 📉 Methodology

- **Tools Used**: MATLAB  
- **Data**: Average percent error at 3 resistance levels (10Ω, 2kΩ, 1MΩ)  
- **Models**:
  - BOJACK: Regression line + t-test for slope
  - ESSMETUIN: Regression + ANOVA testing

- **Graph Scaling**: Logarithmic x-axis to accommodate magnitude difference
- **Assumptions**:
  - Linear relationship (resistance vs error)
  - Random, unbiased error
  - Uniform variance across brands

---

## 🔍 Key Results

- 📌 **p-values > 0.05** → Failed to reject null hypothesis  
- 📌 **Low F-statistics** → Very little variation explained  
- 📌 **Flat slopes** → No meaningful trend  
- ✨ **Conclusion**:  
  > "There is no strong evidence that average percent error increases linearly with resistance."

---

## 📊 Sample Output


> See full t-test/ANOVA output in `/matlab/` folder and summary PDF in `/report/`.

---

## 🙋 Author

**Abid Ahmad**  
Electrical & Computer Engineering student  
Wayne State University  
Focus: data-driven hardware reliability & embedded analytics

---

## ✅ Note

This repository reflects **my individual work** on the group project — all MATLAB-based regression analysis, hypothesis testing, visualization, and interpretation were independently conducted and documented by me.


