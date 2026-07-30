import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ZeroOneLawsCanonicalLaneLean

structure BorelCantelliPackage where
  eventSequence : Type u
  sumProbabilities : Prop
  infinitelyOftenEvent : Type v
  zeroOneConclusion : Prop

structure BorelCantelliEvidence (B : BorelCantelliPackage) where
  sumProbabilitiesClosed : B.sumProbabilities
  zeroOneConclusionClosed : B.zeroOneConclusion

def BorelCantelliClosed (B : BorelCantelliPackage) : Prop :=
  B.sumProbabilities ∧ B.zeroOneConclusion

theorem borel_cantelli_closed_from_evidence (B : BorelCantelliPackage)
    (E : BorelCantelliEvidence B) : BorelCantelliClosed B :=
  And.intro E.sumProbabilitiesClosed E.zeroOneConclusionClosed

end ZeroOneLawsCanonicalLaneLean
end HautevilleHouse