import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ZeroOneLawsCanonicalLaneLean

structure ExchangeableSigmaAlgebraPackage where
  infiniteProductSpace : Type u
  actionOfFinitePermutations : Type u -> Type v
  exchangeableEvents : Type u -> Type w
  zeroOneProperty : Prop
  deFinettiTheorem : Prop

structure ExchangeableSigmaAlgebraEvidence (E : ExchangeableSigmaAlgebraPackage) where
  exchangeableEventsClosed : E.exchangeableEvents E.infiniteProductSpace
  zeroOnePropertyClosed : E.zeroOneProperty

def ExchangeableSigmaAlgebraClosed (E : ExchangeableSigmaAlgebraPackage) : Prop :=
  E.exchangeableEvents E.infiniteProductSpace ∧ E.zeroOneProperty

theorem exchangeable_sigma_algebra_closed_from_evidence (E : ExchangeableSigmaAlgebraPackage)
    (Ev : ExchangeableSigmaAlgebraEvidence E) : ExchangeableSigmaAlgebraClosed E := by
  exact And.intro Ev.exchangeableEventsClosed Ev.zeroOnePropertyClosed

end HautevilleHouse
end ZeroOneLawsCanonicalLaneLean