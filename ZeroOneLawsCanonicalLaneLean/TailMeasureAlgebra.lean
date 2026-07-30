import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ZeroOneLawsCanonicalLaneLean

structure TailMeasureAlgebraPackage where
  productSpace : Type u
  coordinateSigmaAlgebras : Type u -> Type v
  tailSigmaAlgebra : Type u -> Type w
  probabilityMeasureProduct : Prop
  zeroOneProperty : Prop

structure TailMeasureAlgebraEvidence (T : TailMeasureAlgebraPackage) where
  tailSigmaAlgebraDefined : T.tailSigmaAlgebra T.productSpace
  zeroOnePropertyClosed : T.zeroOneProperty

def TailMeasureAlgebraClosed (T : TailMeasureAlgebraPackage) : Prop :=
  T.tailSigmaAlgebra T.productSpace ∧ T.zeroOneProperty

theorem tail_measure_algebra_closed_from_evidence (T : TailMeasureAlgebraPackage)
    (E : TailMeasureAlgebraEvidence T) : TailMeasureAlgebraClosed T := by
  exact And.intro E.tailSigmaAlgebraDefined E.zeroOnePropertyClosed

end HautevilleHouse
end ZeroOneLawsCanonicalLaneLean