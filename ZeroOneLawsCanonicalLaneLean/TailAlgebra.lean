import canonicallanemathlib.AdmissibleClass

namespace HautevilleHouse
namespace ZeroOneLawsCanonicalLaneLean

structure TailAlgebraPackage where
  space : ZeroOneSpace
  tailSigmaAlgebra : Prop
  exchangeableEvents : Prop
  kolmogorovZeroOneLaw : Prop

theorem tail_algebra_closed (T : TailAlgebraPackage) : T.tailSigmaAlgebra ∧ T.exchangeableEvents ∧ T.kolmogorovZeroOneLaw := by
  have h1 := T.tailSigmaAlgebra
  have h2 := T.exchangeableEvents
  have h3 := T.kolmogorovZeroOneLaw
  exact And.intro h1 (And.intro h2 h3)

end ZeroOneLawsCanonicalLaneLean
end HautevilleHouse