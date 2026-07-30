import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ZeroOneLawsCanonicalLaneLean

structure KolmogorovZeroOnePackage where
  probabilitySpace : Type u
  sigmaAlgebra : Set (Set (probabilitySpace))
  tailSigmaAlgebra : Set (Set (probabilitySpace))
  event : Set probabilitySpace
  eventInTail : event ∈ tailSigmaAlgebra
  probabilityEvent : Prop
  probabilityZeroOrOne : probabilityEvent ∨ (1 - probabilityEvent)

structure KolmogorovZeroOneEvidence (K : KolmogorovZeroOnePackage) where
  eventInTailClosed : K.eventInTail
  probabilityEventClosed : K.probabilityEvent
  probabilityZeroOrOneClosed : K.probabilityZeroOrOne

def KolmogorovZeroOneClosed (K : KolmogorovZeroOnePackage) : Prop :=
  K.eventInTail ∧ K.probabilityEvent ∧ K.probabilityZeroOrOne

theorem kolmogorov_zero_one_closed_from_evidence (K : KolmogorovZeroOnePackage)
    (E : KolmogorovZeroOneEvidence K) : KolmogorovZeroOneClosed K := by
  exact And.intro E.eventInTailClosed (And.intro E.probabilityEventClosed E.probabilityZeroOrOneClosed)

end ZeroOneLawsCanonicalLaneLean
end HautevilleHouse
