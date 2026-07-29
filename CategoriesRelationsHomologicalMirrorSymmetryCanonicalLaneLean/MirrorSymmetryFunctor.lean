import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean

structure MirrorSymmetryFunctorPackage where
  sourceCategory : Type u
  targetCategory : Type v
  functor : Type w
  fullyFaithful : Prop
  essentialSurjective : Prop
  equivalenceOfCategories : Prop
  homologicalMirrorSymmetryConjecture : Prop

structure MirrorSymmetryFunctorEvidence (M : MirrorSymmetryFunctorPackage) where
  fullyFaithfulClosed : M.fullyFaithful
  essentialSurjectiveClosed : M.essentialSurjective
  equivalenceOfCategoriesClosed : M.equivalenceOfCategories
  homologicalMirrorSymmetryConjectureClosed : M.homologicalMirrorSymmetryConjecture

def MirrorSymmetryFunctorClosed (M : MirrorSymmetryFunctorPackage) : Prop :=
  M.fullyFaithful ∧ M.essentialSurjective ∧ M.equivalenceOfCategories ∧ M.homologicalMirrorSymmetryConjecture

theorem mirror_symmetry_functor_closed_from_evidence (M : MirrorSymmetryFunctorPackage) (E : MirrorSymmetryFunctorEvidence M) : MirrorSymmetryFunctorClosed M := by
  exact And.intro E.fullyFaithfulClosed
    (And.intro E.essentialSurjectiveClosed
      (And.intro E.equivalenceOfCategoriesClosed E.homologicalMirrorSymmetryConjectureClosed))

end CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean
end HautevilleHouse