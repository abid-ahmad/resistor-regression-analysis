# 📊 Regression Analysis: Resistor Brand Error Comparison

This repository showcases my **individual contribution** to a group project titled **"Variance in Resistors' Resistance"**.  
I conducted a complete **regression and statistical analysis** using MATLAB to evaluate whether **average percent error** varies with resistance across two brands: **BOJACK** and **ESSMETUIN**.

---

## 🎯 Objective

To determine if resistor accuracy degrades as resistance increases, and whether any brand performs more consistently than the other.

---

## 📁 Dataset

We tested 10 resistors from each brand at 3 nominal values:

- 10Ω  
- 2kΩ  
- 1MΩ  

From each batch, we calculated **average percent error** for BOJACK and ESSMETUIN and modeled error as a function of resistance.

---

## ⚙️ Methodology

- **Platform**: MATLAB  
- **Analysis Performed**:
  - Linear Regression
  - t-tests on slope coefficients
  - ANOVA for model fit
  - Log-scaled plots for clarity across magnitudes

- **Assumptions**:
  - Independent measurement error
  - Linearity across log-resistance
  - Equal variance within brand

---

## 📉 Results

### 🔴 ESSMETUIN

- **Regression Coefficients (T-Test)**  
  ![ESSMETUIN T-Test](./img/essmetuin_ttest.png)

- **ANOVA Table**  
  ![ESSMETUIN ANOVA](./img/essmetuin_anova.png)

- **Findings**:  
  - Slope ≈ -2.37e-07  
  - **p-value** = 0.82667 → Fail to reject H₀ (no significant trend)
  - ESSMETUIN errors appear relatively **flat** across resistance

---

### 🔵 BOJACK

- **Regression Coefficients (T-Test)**  
  ![BOJACK T-Test](./img/bojack_ttest.png)

- **ANOVA Table**  
  ![BOJACK ANOVA](./img/bojack_anova.png)

- **Findings**:  
  - Slope ≈ +2.91e-07  
  - **p-value** = 0.76411 → Fail to reject H₀
  - BOJACK showed more variance, but still statistically **insignificant**

---

### 📊 Final Regression Plot

![Regression Plot](./img/regression_plot.png)

- No clear upward or downward trend
- BOJACK fit line slightly upward; ESSMETUIN slightly downward
- Overall: **errors do not consistently increase with resistance**

---

## 🧠 Conclusion

> "There is no statistically significant evidence that average percent error increases with resistance for either BOJACK or ESSMETUIN resistors."

Both brands remain within tolerance across magnitudes, but BOJACK showed **slightly higher variability**.

---

## 🧑‍💻 Author

**Abid Ahmad**  
Electrical & Computer Engineering  
Wayne State University  
🔬 Focus: Data-driven hardware reliability & embedded systems

