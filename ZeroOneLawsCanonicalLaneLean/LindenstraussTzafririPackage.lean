import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ZeroOneLawsCanonicalLaneLean

structure LindenstraussTzafririPackage where
  banachSpace : Type u
  subspace : Type v
  property : Prop
  zeroOneConclusion : Prop

structure LindenstraussTzafririEvidence (L : LindenstraussTzafririPackage) where
  propertyClosed : L.property
  zeroOneConclusionClosed : L.zeroOneConclusion

def LindenstraussTzafririClosed (L : LindenstraussTzafririPackage) : Prop :=
  L.property ∧ L.zeroOneConclusion

theorem lindenstrauss_tzafriri_closed_from_evidence (L : LindenstraussTzafririPackage)
    (E : LindenstraussTzafririEvidence L) : LindenstraussTzafririClosed L :=
  And.intro E.propertyClosed E.zeroOneConclusionClosed

end ZeroOneLawsCanonicalLaneLean
end HautevilleHouse