import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ZeroOneLawsCanonicalLaneLean

structure KolmogorovAdmissibleObject where
  space : Type u
  sigmaAlgebra : Set (Set (space))
  measure : Set (space) → ℝ
  measureZeroOne : ∀ (E : Set (space)), E ∈ sigmaAlgebra → (measure E = 0 ∨ measure E = 1)

def kolmogorovAdmissibleClass : AdmissibleClass :=
  { object := (λ _ : Unit => True),
    endpointSatisfied := ∀ (A : KolmogorovAdmissibleObject), A.measureZeroOne,
    remainderRecorded := False,
    gateWitness := Or.inl (by intro A; exact A.measureZeroOne)
  }

end HautevilleHouse
end ZeroOneLawsCanonicalLaneLean