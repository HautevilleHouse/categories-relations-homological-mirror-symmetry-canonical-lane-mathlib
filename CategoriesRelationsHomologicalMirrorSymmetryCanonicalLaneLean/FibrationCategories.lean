import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean

structure FibrationCategoryPackage (C : Type u) [Category C] where
  base : Type u
  fibers : Type u
  projectionFunctor : Type u
  cleavage : Prop
  cartesianLift : Prop
  cocartesianLift : Prop
  fibrationCondition : Prop
  opfibrationCondition : Prop
  factorization : Prop

structure FibrationCategoryEvidence {C : Type u} [Category C] (F : FibrationCategoryPackage C) where
  cleavageClosed : F.cleavage
  cartesianLiftClosed : F.cartesianLift
  cocartesianLiftClosed : F.cocartesianLift
  fibrationConditionClosed : F.fibrationCondition
  opfibrationConditionClosed : F.opfibrationCondition
  factorizationClosed : F.factorization

def FibrationCategoryClosed {C : Type u} [Category C] (F : FibrationCategoryPackage C) : Prop :=
  F.cleavage ∧ F.cartesianLift ∧ F.cocartesianLift ∧ F.fibrationCondition ∧ F.opfibrationCondition ∧ F.factorization

theorem fibration_category_closed_from_evidence {C : Type u} [Category C] (F : FibrationCategoryPackage C) (E : FibrationCategoryEvidence F) : FibrationCategoryClosed F :=
  And.intro E.cleavageClosed (And.intro E.cartesianLiftClosed (And.intro E.cocartesianLiftClosed (And.intro E.fibrationConditionClosed (And.intro E.opfibrationConditionClosed E.factorizationClosed))))

end CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean
end HautevilleHouse