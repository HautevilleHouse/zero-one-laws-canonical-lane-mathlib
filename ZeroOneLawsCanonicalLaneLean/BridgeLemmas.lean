import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ZeroOneLawsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ZeroOneWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ZeroOneLawsCanonicalLaneLean
end HautevilleHouse