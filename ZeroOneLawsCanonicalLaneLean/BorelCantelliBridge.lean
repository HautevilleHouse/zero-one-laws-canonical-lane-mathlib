import canonicalLaneMathlib.AdmissibleClass
open HautevilleHouse.ZeroOneLawsCanonicalLaneLean

namespace HautevilleHouse
namespace ZeroOneLawsCanonicalLaneLean

def BorelCantelliClosed (A : AdmissibleClass) : Prop :=
  AdmittedClosure A ∧ (∀ (E : Set A.object.space), E ∈ A.object.sigmaAlgebra → (A.object.measure E = 0 ∨ A.object.measure E = 1))

theorem borel_cantelli_bridge (A : AdmissibleClass) (h : AdmittedClosure A) : BorelCantelliClosed A := by
  refine ⟨h, ?_⟩
  intro E hE
  exact A.object.measureZeroOne E hE

end HautevilleHouse
end ZeroOneLawsCanonicalLaneLean