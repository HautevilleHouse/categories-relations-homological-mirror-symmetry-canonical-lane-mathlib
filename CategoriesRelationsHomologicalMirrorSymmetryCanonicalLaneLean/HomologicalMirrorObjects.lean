import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean

structure CalabiYauCategory where
  category : Type u
  objects : Type v
  morphisms : objects → objects → Type w
  composition : ∀ {X Y Z : objects}, morphisms Y Z → morphisms X Y → morphisms X Z
  identity : ∀ X : objects, morphisms X X
  categoryLaws : Prop

structure DerivedCategory (C : CalabiYauCategory) where
  triangulatedCategory : Type u
  shiftFunctor : ℤ → triangulatedCategory → triangulatedCategory
  distinguishedTriangles : Prop
  derivedEquivalence : Prop

structure HomologicalMirrorAdmittedObject where
  calabiYauThreefold : Type u
  complexStructure : Prop
  kahlerForm : Prop
  mirrorPartner : HomologicalMirrorAdmittedObject
  hodgeNumbersMirrored : Prop
  derivedCategoryEquivalence : DerivedCategory (CalabiYauCategory.mk ...)
  conclusion : derivedCategoryEquivalence.derivedEquivalence

def HomologicalMirrorWitnessClosed (O : HomologicalMirrorAdmittedObject) : Prop :=
  O.derivedCategoryEquivalence.derivedEquivalence

end CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean
end HautevilleHouse