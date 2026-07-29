import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean

structure HomologicalAlgebraPackage where
  derivedCategory : Type u
  boundedComplexes : Prop
  shiftFunctor : Prop
  distinguishedTriangles : Prop
  exactnessProperties : Prop

def HomologicalAlgebraClosed (H : HomologicalAlgebraPackage) : Prop :=
  H.boundedComplexes ∧ H.shiftFunctor ∧ H.distinguishedTriangles ∧ H.exactnessProperties

end CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean
end HautevilleHouse