import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean

def ConstrainedHmsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_hms_endgame (A : AdmissibleClass) :
    ConstrainedHmsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean
end HautevilleHouse