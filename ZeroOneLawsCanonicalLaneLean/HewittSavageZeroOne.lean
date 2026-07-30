import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ZeroOneLawsCanonicalLaneLean

structure HewittSavageZeroOnePackage where
  iidSequence : Type u
  exchangeableSigmaAlgebra : Set (Set (iidSequence))
  event : Set iidSequence
  eventExchangeable : event ∈ exchangeableSigmaAlgebra
  probabilityEvent : Prop
  probabilityZeroOrOne : probabilityEvent ∨ (1 - probabilityEvent)

structure HewittSavageZeroOneEvidence (H : HewittSavageZeroOnePackage) where
  eventExchangeableClosed : H.eventExchangeable
  probabilityEventClosed : H.probabilityEvent
  probabilityZeroOrOneClosed : H.probabilityZeroOrOne

def HewittSavageZeroOneClosed (H : HewittSavageZeroOnePackage) : Prop :=
  H.eventExchangeable ∧ H.probabilityEvent ∧ H.probabilityZeroOrOne

theorem hewitt_savage_zero_one_closed_from_evidence (H : HewittSavageZeroOnePackage)
    (E : HewittSavageZeroOneEvidence H) : HewittSavageZeroOneClosed H := by
  exact And.intro E.eventExchangeableClosed (And.intro E.probabilityEventClosed E.probabilityZeroOrOneClosed)

end ZeroOneLawsCanonicalLaneLean
end HautevilleHouse
