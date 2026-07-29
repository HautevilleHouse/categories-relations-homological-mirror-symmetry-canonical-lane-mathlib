import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean.HomologicalMirrorBridge

namespace HautevilleHouse
namespace CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean

def ConstrainedHMClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_hm_endgame (A : AdmissibleClass) :
    ConstrainedHMClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean
end HautevilleHouse