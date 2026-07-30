import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ZeroOneLawsCanonicalLaneLean

def ConstrainedZeroOneClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_zero_one_endgame (A : AdmissibleClass) :
    ConstrainedZeroOneClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ZeroOneLawsCanonicalLaneLean
end HautevilleHouse