import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ZeroOneLawsCanonicalLaneLean

structure TailEventClosurePackage where
  sequenceSpace : Type u
  productSigmaAlgebra : Set (Set (sequenceSpace))
  tailEvent : Set sequenceSpace
  tailEventMeasurable : tailEvent ∈ productSigmaAlgebra
  shiftInvariant : Prop
  shiftInvariantClosed : shiftInvariant

def TailEventClosure (P : TailEventClosurePackage) : Prop :=
  P.tailEventMeasurable ∧ P.shiftInvariant

theorem tail_event_closure_from_package (P : TailEventClosurePackage) : TailEventClosure P := by
  exact And.intro P.tailEventMeasurable P.shiftInvariantClosed

end ZeroOneLawsCanonicalLaneLean
end HautevilleHouse
