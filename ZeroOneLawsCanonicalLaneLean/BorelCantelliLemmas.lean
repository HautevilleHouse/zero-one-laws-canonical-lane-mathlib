import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ZeroOneLawsCanonicalLaneLean

structure BorelCantelliPackage where
  eventSequence : Type u -> Type v
  probabilityMeasure : Type u -> Type w
  firstLemma : Prop
  secondLemma : Prop
  independenceCondition : Prop

structure BorelCantelliEvidence (B : BorelCantelliPackage) where
  firstLemmaClosed : B.firstLemma
  secondLemmaClosed : B.secondLemma

def BorelCantelliClosed (B : BorelCantelliPackage) : Prop :=
  B.firstLemma ∧ B.secondLemma

theorem borel_cantelli_closed_from_evidence (B : BorelCantelliPackage)
    (E : BorelCantelliEvidence B) : BorelCantelliClosed B := by
  exact And.intro E.firstLemmaClosed E.secondLemmaClosed

end HautevilleHouse
end ZeroOneLawsCanonicalLaneLean