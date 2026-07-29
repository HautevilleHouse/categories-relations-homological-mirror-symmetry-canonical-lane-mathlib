import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AdmissibleClass.bridgeWitness A

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.bridgeWitness

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedHMSSymmetryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_hms_symmetry_endgame (A : AdmissibleClass) : ConstrainedHMSSymmetryClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean
end HautevilleHouse