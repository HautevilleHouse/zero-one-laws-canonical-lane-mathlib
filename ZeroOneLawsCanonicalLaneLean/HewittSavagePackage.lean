import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ZeroOneLawsCanonicalLaneLean

structure HewittSavagePackage where
  exchangeableSigmaAlgebra : Type u
  exchangeableEvent : Type v
  probabilitySpace : Type w
  exchangeableEventProbability : Prop
  zeroOneConclusion : Prop

structure HewittSavageEvidence (H : HewittSavagePackage) where
  exchangeableEventProbabilityClosed : H.exchangeableEventProbability
  zeroOneConclusionClosed : H.zeroOneConclusion

def HewittSavageClosed (H : HewittSavagePackage) : Prop :=
  H.exchangeableEventProbability ∧ H.zeroOneConclusion

theorem hewitt_savage_closed_from_evidence (H : HewittSavagePackage)
    (E : HewittSavageEvidence H) : HewittSavageClosed H :=
  And.intro E.exchangeableEventProbabilityClosed E.zeroOneConclusionClosed

end ZeroOneLawsCanonicalLaneLean
end HautevilleHouse