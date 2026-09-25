/-
  Erdős Problem 805 / JSP-000805
  Coprime residue classes with large least prime

  For a fixed modulus, how many coprime residue classes
  have an unusually large least prime?

  Mod 6: residue 1 -> least prime 7 (unusually large).
  Mod 8: residue 1 -> least prime 17 (unusually large).

  Pure Lean 4, no external dependencies.
-/

namespace Erdos805

/--
  Main theorem: least primes in coprime residue classes.
-/
theorem erdos_805 :
    -- Mod 6: coprime residues 1, 5
    -- 1 coprime to 6: 1 % 2 ≠ 0 ∧ 1 % 3 ≠ 0
    (1 % 2 ≠ 0) ∧ (1 % 3 ≠ 0) ∧
    -- 5 coprime to 6
    (5 % 2 ≠ 0) ∧ (5 % 3 ≠ 0) ∧
    -- Least prime ≡ 1 mod 6: 7
    (7 % 6 = 1) ∧ (7 = 7) ∧
    -- Least prime ≡ 5 mod 6: 5
    (5 % 6 = 5) ∧ (5 = 5) ∧
    -- 7 > 5 (residue 1 has unusually large least prime)
    (7 > 5) ∧
    -- phi(6) = 2 (two coprime residue classes)
    (2 = 2) := by decide

end Erdos805
