import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ZeroOneLawsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ZeroOneSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ZeroOneAdmittedObject where
  space : ZeroOneSpace
  measurableStructure : Prop
  tailAlgebra : Prop
  zeroOneLawHolds : Prop
  conclusion : zeroOneLawHolds

structure ZeroOneEndgameState where
  object : ZeroOneAdmittedObject

def ZeroOneWitnessClosed (O : ZeroOneAdmittedObject) : Prop :=
  O.zeroOneLawHolds

end ZeroOneLawsCanonicalLaneLean
end HautevilleHouse