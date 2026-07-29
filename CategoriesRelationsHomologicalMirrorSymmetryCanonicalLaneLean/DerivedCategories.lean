import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean

structure DerivedCategoryPackage where
  triangulatedStructure : Prop
  boundedComplexes : Prop
  exactTriangles : Prop
  serreDuality : Prop

structure DerivedCategoryEvidence (D : DerivedCategoryPackage) where
  triangulatedStructureClosed : D.triangulatedStructure
  boundedComplexesClosed : D.boundedComplexes
  exactTrianglesClosed : D.exactTriangles
  serreDualityClosed : D.serreDuality

def DerivedCategoryClosed (D : DerivedCategoryPackage) : Prop :=
  D.triangulatedStructure ∧ D.boundedComplexes ∧ D.exactTriangles ∧ D.serreDuality

theorem derived_category_closed_from_evidence
    (D : DerivedCategoryPackage) (E : DerivedCategoryEvidence D) :
    DerivedCategoryClosed D := by
  exact And.intro E.triangulatedStructureClosed
    (And.intro E.boundedComplexesClosed
      (And.intro E.exactTrianglesClosed E.serreDualityClosed))

end CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean
end HautevilleHouse