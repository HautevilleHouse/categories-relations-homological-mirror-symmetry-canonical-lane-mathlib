import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean

structure HomologicalMirrorSymmetryConjecturePackage (X : Type u) [CalabiYau X] where
  fukayaCategory : Type u
  derivedCategory : Type u
  equivalence : Prop
  compatibility : Prop
  numericalInvariants : Prop
  deformationTheory : Prop

structure HomologicalMirrorSymmetryConjectureEvidence (H : HomologicalMirrorSymmetryConjecturePackage X) where
  equivalenceClosed : H.equivalence
  compatibilityClosed : H.compatibility
  numericalInvariantsClosed : H.numericalInvariants
  deformationTheoryClosed : H.deformationTheory

def HomologicalMirrorSymmetryConjectureClosed (H : HomologicalMirrorSymmetryConjecturePackage X) : Prop :=
  H.equivalence ∧ H.compatibility ∧ H.numericalInvariants ∧ H.deformationTheory

theorem homological_mirror_symmetry_conjecture_closed_from_evidence (H : HomologicalMirrorSymmetryConjecturePackage X) (E : HomologicalMirrorSymmetryConjectureEvidence H) : HomologicalMirrorSymmetryConjectureClosed H :=
  And.intro E.equivalenceClosed (And.intro E.compatibilityClosed (And.intro E.numericalInvariantsClosed E.deformationTheoryClosed))

end CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean
end HautevilleHouse