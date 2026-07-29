import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean

structure DGEnhancementPackage where
  triangulatedCategory : Type u
  dgCategory : Type v
  enhancementFunctor : triangulatedCategory → dgCategory
  quasiFullyFaithful : Prop
  inducesEquivalenceOnHomotopy : Prop

structure DGEnhancementEvidence (D : DGEnhancementPackage) where
  quasiFullyFaithfulClosed : D.quasiFullyFaithful
  inducesEquivalenceOnHomotopyClosed : D.inducesEquivalenceOnHomotopy

def DGEnhancementClosed (D : DGEnhancementPackage) : Prop :=
  D.quasiFullyFaithful ∧ D.inducesEquivalenceOnHomotopy

theorem dg_enhancement_closed_from_evidence (D : DGEnhancementPackage) (E : DGEnhancementEvidence D) :
    DGEnhancementClosed D := by
  exact And.intro E.quasiFullyFaithfulClosed E.inducesEquivalenceOnHomotopyClosed

end CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean
end HautevilleHouse