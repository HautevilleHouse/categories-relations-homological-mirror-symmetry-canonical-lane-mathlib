import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean

structure MirrorTriangulatedCategories where
  derivedCategory : Type u
  floerCategory : Type v
  triangulatedStructureDerived : Prop
  triangulatedStructureFloer : Prop
  equivalenceFunctor : Type w
  equivalenceFullyFaithful : Prop

def MirrorTriangulatedCategoriesClosed (M : MirrorTriangulatedCategories) : Prop :=
  M.triangulatedStructureDerived ∧ M.triangulatedStructureFloer ∧ M.equivalenceFullyFaithful

end CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean
end HautevilleHouse