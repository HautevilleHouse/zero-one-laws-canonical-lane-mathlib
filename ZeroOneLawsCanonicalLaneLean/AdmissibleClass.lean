import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ZeroOneLawsCanonicalLaneLean

structure AdmissibleClass where
  object : ZeroOneAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ZeroOneWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ZeroOneLawsCanonicalLaneLean
end HautevilleHouse