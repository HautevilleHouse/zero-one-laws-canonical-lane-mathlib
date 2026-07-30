import canonicallanemathlib.AdmissibleClass

namespace HautevilleHouse
namespace ZeroOneLawsCanonicalLaneLean

structure HewittSavageZeroOneLawPackage where
  productSpace : Prop
  symmetricEvents : Prop
  hewittSavageZeroOneLaw : Prop

theorem hewitt_savage_closed (H : HewittSavageZeroOneLawPackage) : H.symmetricEvents ∧ H.hewittSavageZeroOneLaw := by
  rcases H with ⟨_, h, h'⟩
  exact And.intro h h'

end ZeroOneLawsCanonicalLaneLean
end HautevilleHouse