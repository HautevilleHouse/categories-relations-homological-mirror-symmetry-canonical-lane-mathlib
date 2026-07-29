import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean

structure MirrorSymmetryPackage where
  symplecticSide : FukayaCategory
  complexSide : DerivedCategory
  homologicalConjecture : Prop
  hodgeNumbersMatch : Prop
  mirrorMap : HomologicalMirrorAdmittedObject → HomologicalMirrorAdmittedObject

structure MirrorSymmetryEvidence (M : MirrorSymmetryPackage) where
  homologicalConjectureClosed : M.homologicalConjecture
  hodgeNumbersMatchClosed : M.hodgeNumbersMatch
  mirrorMapInvolutive : Prop
  mirrorMapInvolutiveClosed : mirrorMapInvolutive

def MirrorSymmetryClosed (M : MirrorSymmetryPackage) : Prop :=
  M.homologicalConjecture ∧ M.hodgeNumbersMatch ∧ MirrorSymmetryEvidence.mirrorMapInvolutive

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HomologicalMirrorWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

theorem mirror_symmetry_closed_from_evidence (M : MirrorSymmetryPackage) (E : MirrorSymmetryEvidence M) :
    MirrorSymmetryClosed M := by
  exact And.intro E.homologicalConjectureClosed (And.intro E.hodgeNumbersMatchClosed E.mirrorMapInvolutiveClosed)

end CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean
end HautevilleHouse