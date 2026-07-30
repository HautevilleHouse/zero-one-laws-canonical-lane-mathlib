import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ZeroOneLawsCanonicalLaneLean

structure TailEventAlgebra where
  sampleSpace : Type u
  sigmaAlgebra : Set (Set (sampleSpace))
  measurableSpace : MeasurableSpace sampleSpace
  tailSigmaAlgebra : Set (Set (sampleSpace))
  tailMeasurableSpace : MeasurableSpace sampleSpace
  tailContained : tailSigmaAlgebra ⊆ sigmaAlgebra
  tailMeasurableSubspace : tailMeasurableSpace ≤ measurableSpace

def ZeroOneAdmittedObject (A : AdmissibleClass) : Prop :=
  (∀ (E : Set A.object.space), E ∈ A.object.sigmaAlgebra → (A.object.measure E = 0 ∨ A.object.measure E = 1))

end HautevilleHouse
end ZeroOneLawsCanonicalLaneLean