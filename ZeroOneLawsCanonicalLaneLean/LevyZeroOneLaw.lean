import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ZeroOneLawsCanonicalLaneLean

structure LevyZeroOneLawPackage where
  filtration : Type u -> Type v
  martingaleConvergence : Prop
  zeroOneProperty : Prop
  regularConditionalProbability : Prop

structure LevyZeroOneLawEvidence (L : LevyZeroOneLawPackage) where
  martingaleConvergenceClosed : L.martingaleConvergence
  zeroOnePropertyClosed : L.zeroOneProperty

def LevyZeroOneLawClosed (L : LevyZeroOneLawPackage) : Prop :=
  L.martingaleConvergence ∧ L.zeroOneProperty

theorem levy_zero_one_law_closed_from_evidence (L : LevyZeroOneLawPackage)
    (E : LevyZeroOneLawEvidence L) : LevyZeroOneLawClosed L := by
  exact And.intro E.martingaleConvergenceClosed E.zeroOnePropertyClosed

end HautevilleHouse
end ZeroOneLawsCanonicalLaneLean