import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoriesRelationsHomologicalMirrorSymmetry.HomologicalMirrorObject
import HautevilleHouse.CategoriesRelationsHomologicalMirrorSymmetry.CalabiYauGeometry
import HautevilleHouse.CategoriesRelationsHomologicalMirrorSymmetry.MirrorFunctor

namespace HautevilleHouse
namespace CategoriesRelationsHomologicalMirrorSymmetry

def ConstrainedMirrorSymmetryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_mirror_symmetry_endgame (A : AdmissibleClass) :
    ConstrainedMirrorSymmetryClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoriesRelationsHomologicalMirrorSymmetry
end HautevilleHouse