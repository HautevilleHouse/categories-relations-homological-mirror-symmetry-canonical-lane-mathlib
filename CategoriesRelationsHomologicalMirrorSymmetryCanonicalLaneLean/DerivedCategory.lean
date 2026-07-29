import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean

structure DerivedCategoryPackage (X : Type u) [Scheme X] where
  objects : Type v
  morphisms (A B : objects) : Type w
  triangulatedStructure : Prop
  tStructure : Prop
  heart : Prop
  boundedness : Prop
  duality : Prop

derived class DerivedCategoryEvidence {X : Type u} [Scheme X] (D : DerivedCategoryPackage X) where
  triangulatedStructureClosed : D.triangulatedStructure
  tStructureClosed : D.tStructure
  heartClosed : D.heart
  boundednessClosed : D.boundedness
  dualityClosed : D.duality

def DerivedCategoryClosed {X : Type u} [Scheme X] (D : DerivedCategoryPackage X) : Prop :=
  D.triangulatedStructure ∧ D.tStructure ∧ D.heart ∧ D.boundedness ∧ D.duality

theorem derived_category_closed_from_evidence {X : Type u} [Scheme X] (D : DerivedCategoryPackage X) (E : DerivedCategoryEvidence D) : DerivedCategoryClosed D :=
  And.intro E.triangulatedStructureClosed (And.intro E.tStructureClosed (And.intro E.heartClosed (And.intro E.boundednessClosed E.dualityClosed)))

end CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean
end HautevilleHouse