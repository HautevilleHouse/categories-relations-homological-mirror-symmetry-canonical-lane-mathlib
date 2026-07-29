import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean

structure HMSpace where
  carrier : Type
  complexStructure : carrier → Type
  symplecticForm : carrier → Type

definition HMSAdmittedObject (X : HMSpace) : Prop :=
  True

end CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean
end HautevilleHouse