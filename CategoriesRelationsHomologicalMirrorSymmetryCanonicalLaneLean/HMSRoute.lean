import CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean.FukayaCategory
import CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean

structure HMSRouteObligations where
  calabiYauPair : Prop
  derivedCategory : Prop
  fukayaCategory : Prop
  mirrorEquivalence : Prop

structure HMSRouteEvidence (R : HMSRouteObligations) where
  calabiYauPairClosed : R.calabiYauPair
  derivedCategoryClosed : R.derivedCategory
  fukayaCategoryClosed : R.fukayaCategory
  mirrorEquivalenceClosed : R.mirrorEquivalence

def HMSRouteClosed (R : HMSRouteObligations) : Prop :=
  R.calabiYauPair ∧ R.derivedCategory ∧ R.fukayaCategory ∧ R.mirrorEquivalence

theorem hms_route_closed_from_evidence (R : HMSRouteObligations) (E : HMSRouteEvidence R) :
    HMSRouteClosed R := by
  exact And.intro E.calabiYauPairClosed
    (And.intro E.derivedCategoryClosed
      (And.intro E.fukayaCategoryClosed E.mirrorEquivalenceClosed))

end CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean
end HautevilleHouse