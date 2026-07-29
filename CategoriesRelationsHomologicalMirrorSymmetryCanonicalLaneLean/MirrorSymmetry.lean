import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean

structure MirrorSymmetryPackage (X Y : Type) [TopologicalSpace X] [TopologicalSpace Y] where
  fukaya_X : FukayaCategoryPackage X
  derived_Y : DerivedCategoryPackage (CategoryOfSheaves Y)
  equivalence : Type
  homological_mirror_symmetry : Prop
  equivalence_closed : equivalence
  hms_closed : homological_mirror_symmetry

structure MirrorSymmetryEvidence (X Y : Type) [TopologicalSpace X] [TopologicalSpace Y] (M : MirrorSymmetryPackage X Y) where
  fukaya_closed : FukayaCategoryClosed X M.fukaya_X
  derived_closed : DerivedCategoryClosed (CategoryOfSheaves Y) M.derived_Y
  hms_closed : M.homological_mirror_symmetry

def MirrorSymmetryClosed (X Y : Type) [TopologicalSpace X] [TopologicalSpace Y] (M : MirrorSymmetryPackage X Y) : Prop :=
  FukayaCategoryClosed X M.fukaya_X ∧ DerivedCategoryClosed (CategoryOfSheaves Y) M.derived_Y ∧ M.homological_mirror_symmetry

theorem mirror_symmetry_closed_from_evidence (X Y : Type) [TopologicalSpace X] [TopologicalSpace Y] (M : MirrorSymmetryPackage X Y) (E : MirrorSymmetryEvidence X Y M) : MirrorSymmetryClosed X Y M := by
  exact And.intro E.fukaya_closed (And.intro E.derived_closed E.hms_closed)

end CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean
end HautevilleHouse