import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ZeroOneLawsCanonicalLaneLean

structure ZeroOneAdmittedObject where
  sigmaAlgebra : Type u
  probabilityMeasure : Type v
  event : Type w
  tailEvent : Bool
  conclusion : tailEvent → (event = ∅ ∨ event = Set.univ)

def ZeroOneWitnessClosed (O : ZeroOneAdmittedObject) : Prop :=
  O.tailEvent → (O.event = ∅ ∨ O.event = Set.univ)

end ZeroOneLawsCanonicalLaneLean
end HautevilleHouse