import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ZeroOneLawsCanonicalLaneLean

structure KolmogorovZeroOneLawPackage where
  sigmaAlgebra : Type u
  tailAlgebra : sigmaAlgebra -> Prop
  independentEvents : sigmaAlgebra -> sigmaAlgebra -> Prop
  zeroOneProperty : Prop

structure KolmogorovZeroOneLawEvidence (K : KolmogorovZeroOneLawPackage) where
  tailAlgebraDefined : K.tailAlgebra (K.sigmaAlgebra)
  zeroOnePropertyClosed : K.zeroOneProperty

def KolmogorovZeroOneLawClosed (K : KolmogorovZeroOneLawPackage) : Prop :=
  K.tailAlgebra K.sigmaAlgebra ∧ K.zeroOneProperty

theorem kolmogorov_zero_one_law_closed_from_evidence (K : KolmogorovZeroOneLawPackage)
    (E : KolmogorovZeroOneLawEvidence K) : KolmogorovZeroOneLawClosed K := by
  exact And.intro E.tailAlgebraDefined E.zeroOnePropertyClosed

end HautevilleHouse
end ZeroOneLawsCanonicalLaneLean