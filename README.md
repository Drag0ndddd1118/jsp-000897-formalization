# Formalization of JSP-000897 (Erdős Problem #1079)

## Problem Overview

**Catalog ID:** [JSP-000897](https://github.com/TheJustinSunPrize/awards/blob/main/problems/catalog-0801-0900.md#JSP-000897)  
**Erdős Problem:** [#1079](https://www.erdosproblems.com/1079)  
**Mathematical Area:** Graph Theory / Turán Numbers  

### Problem Statement

At the corresponding Turán edge threshold, must some vertex neighborhood contain sufficiently many edges?

### Resolution

Affirmatively answered by Béla Bollobás and Andrew Thomason (1981, "Dense neighbourhoods and Turán's theorem"), and strengthened by J. A. Bondy (1983): for $r \ge 4$, every $n$-vertex graph at the $K_r$ Turán threshold has a maximum-degree vertex $v$ whose degree satisfies $n \le 2 \cdot \operatorname{deg}(v)$ and whose open neighborhood spans at least $\operatorname{ex}(d, K_{r-1})$ edges (and strictly more if edges strictly exceed the threshold).

## Formalization Details

- **Contract Statement:** `Challenge.lean` defines `JSP000897.jsp000897Statement`
- **Solution Theorem:** `Submission.lean` proves `JSP000897.jsp_000897_solved : jsp000897Statement`
- **Underlying Formalization:** `Erdos1079.lean` provides complete, fully closed proofs.
- **Axioms Check:**
  `#print axioms JSP000897.jsp_000897_solved` yields strictly:
  ```lean
  [propext, Classical.choice, Quot.sound]
  ```
  **Zero** unproved hypotheses, zero `sorry`, zero `admit`, zero custom axioms.

## Build & Verification Instructions

```bash
lake exe cache get
lake build
python3 check.py
```
