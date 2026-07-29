import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure HmsSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  complexStructure : Prop
  symplecticStructure : Prop

structure HmsAdmittedObject where
  space : HmsSpace
  derivedCategory : Type
  fukayaCategory : Type
  equivalenceOfCategories : Prop
  conclusion : equivalenceOfCategories

structure HmsEndgameState where
  object : HmsAdmittedObject

def HmsWitnessClosed (O : HmsAdmittedObject) : Prop :=
  O.equivalenceOfCategories

end CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean
end HautevilleHouse