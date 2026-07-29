import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean

structure HomAlgebraPackage (C : Type) [Category C] where
  hom_spaces : Type
  composition : Type
  yoneda_embedding : Prop
  hom_adjunction : Prop
  yoneda_closed : yoneda_embedding
  adjunction_closed : hom_adjunction

structure HomAlgebraEvidence (C : Type) [Category C] (H : HomAlgebraPackage C) where
  yoneda_closed : H.yoneda_embedding
  adjunction_closed : H.hom_adjunction

def HomAlgebraClosed (C : Type) [Category C] (H : HomAlgebraPackage C) : Prop :=
  H.yoneda_embedding ∧ H.hom_adjunction

theorem hom_algebra_closed_from_evidence (C : Type) [Category C] (H : HomAlgebraPackage C) (E : HomAlgebraEvidence C H) : HomAlgebraClosed C H := by
  exact And.intro E.yoneda_closed E.adjunction_closed

end CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean
end HautevilleHouse