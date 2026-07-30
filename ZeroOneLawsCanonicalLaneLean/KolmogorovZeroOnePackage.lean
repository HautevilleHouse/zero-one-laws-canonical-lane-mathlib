import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ZeroOneLawsCanonicalLaneLean

structure KolmogorovZeroOnePackage where
  tailSigmaAlgebra : Type u
  tailEvent : Type v
  probabilityMeasure : Type w
  independenceCondition : Prop
  tailEventProbability : Prop
  zeroOneConclusion : Prop

structure KolmogorovZeroOneEvidence (K : KolmogorovZeroOnePackage) where
  tailEventProbabilityClosed : K.tailEventProbability
  zeroOneConclusionClosed : K.zeroOneConclusion

def KolmogorovZeroOneClosed (K : KolmogorovZeroOnePackage) : Prop :=
  K.tailEventProbability ∧ K.zeroOneConclusion

theorem kolmogorov_zero_one_closed_from_evidence (K : KolmogorovZeroOnePackage)
    (E : KolmogorovZeroOneEvidence K) : KolmogorovZeroOneClosed K :=
  And.intro E.tailEventProbabilityClosed E.zeroOneConclusionClosed

end ZeroOneLawsCanonicalLaneLean
end HautevilleHouse