import Erdos1079

namespace JSP000897

open Erdos1079

open scoped Classical
attribute [local instance] Classical.propDecidable
attribute [local instance] Fintype.ofFinite

/--
Formal statement for JSP-000897 (Erdős Problem #1079):
At the corresponding Turán edge threshold, must some vertex neighborhood contain sufficiently many edges?

Affirmatively answered by Béla Bollobás and Andrew Thomason (1981), and strengthened by
J. A. Bondy (1983): for r ≥ 4, every n-vertex graph at the K_r Turán threshold has a
maximum-degree vertex v whose degree satisfies n ≤ 2 * degree(v) and whose open neighborhood
spans at least ex(d, K_{r-1}) edges (and strictly more if edges strictly exceed the threshold).
-/
def jsp000897Statement : Prop :=
  ∀ {n r : ℕ}, 4 ≤ r → 2 ≤ n →
    ∀ G : SimpleGraph (Fin n),
      cliqueExtremalNumber n r ≤ edgeCount G →
      ∃ v : Fin n,
        G.degree v = G.maxDegree ∧
        n ≤ 2 * G.degree v ∧
        cliqueExtremalNumber (G.degree v) (r - 1) ≤ linkEdgeCount G v

end JSP000897
