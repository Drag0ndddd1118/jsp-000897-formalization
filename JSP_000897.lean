import Challenge
import Submission

open Classical in
/-- Formal Lean 4 bridge theorem for JSP-000897 (Erdős Problem #1079). -/
theorem jsp_000897_solved {n r : ℕ} (hr : 4 ≤ r) (hn : 2 ≤ n)
    (G : SimpleGraph (Fin n))
    (hG : Erdos1079.cliqueExtremalNumber n r ≤ Erdos1079.edgeCount G) :
    ∃ v : Fin n,
      G.degree v = G.maxDegree ∧
      n ≤ 2 * G.degree v ∧
      Erdos1079.cliqueExtremalNumber (G.degree v) (r - 1) ≤ Erdos1079.linkEdgeCount G v :=
  JSP000897.jsp_000897_solved hr hn G hG

#print axioms jsp_000897_solved
-- 'jsp_000897_solved' depends on axioms: [propext, Classical.choice, Quot.sound]
