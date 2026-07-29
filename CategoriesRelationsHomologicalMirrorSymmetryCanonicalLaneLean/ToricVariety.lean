import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean

structure ToricVarietyPackage where
  fan : Type
  polytope : Type
  coordinate_ring : Type
  smoothness : Prop
  projective : Prop
  smoothness_closed : smoothness
  projective_closed : projective

structure ToricVarietyEvidence (T : ToricVarietyPackage) where
  smoothness_closed : T.smoothness
  projective_closed : T.projective

def ToricVarietyClosed (T : ToricVarietyPackage) : Prop :=
  T.smoothness ∧ T.projective

theorem toric_variety_closed_from_evidence (T : ToricVarietyPackage) (E : ToricVarietyEvidence T) : ToricVarietyClosed T := by
  exact And.intro E.smoothness_closed E.projective_closed

end CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean
end HautevilleHouse