import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean

structure LuntsOrlovEquivalencePackage where
  derivedCategory : Type u
  dgCategory : Type v
  enhancementFunctor : derivedCategory → dgCategory
  fullyFaithful : Prop
  essentiallySurjective : Prop

structure LuntsOrlovEquivalenceEvidence (L : LuntsOrlovEquivalencePackage) where
  fullyFaithfulClosed : L.fullyFaithful
  essentiallySurjectiveClosed : L.essentiallySurjective

def LuntsOrlovEquivalenceClosed (L : LuntsOrlovEquivalencePackage) : Prop :=
  L.fullyFaithful ∧ L.essentiallySurjective

theorem lunts_orlov_equivalence_closed_from_evidence (L : LuntsOrlovEquivalencePackage) (E : LuntsOrlovEquivalenceEvidence L) :
    LuntsOrlovEquivalenceClosed L := by
  exact And.intro E.fullyFaithfulClosed E.essentiallySurjectiveClosed

end CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean
end HautevilleHouse