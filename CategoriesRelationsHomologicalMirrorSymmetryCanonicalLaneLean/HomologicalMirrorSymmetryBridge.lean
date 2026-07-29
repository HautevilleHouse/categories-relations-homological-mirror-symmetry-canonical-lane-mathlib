import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean

structure HmsBridgePackage where
  mirrorManifold : Type
  derivedCategoryEquivalence : Prop
  fukayaCategoryEquivalence : Prop
  homologicalMatching : Prop

structure HmsBridgeEvidence (H : HmsBridgePackage) where
  derivedCategoryEquivalenceClosed : H.derivedCategoryEquivalence
  fukayaCategoryEquivalenceClosed : H.fukayaCategoryEquivalence
  homologicalMatchingClosed : H.homologicalMatching

def HmsBridgeClosed (H : HmsBridgePackage) : Prop :=
  H.derivedCategoryEquivalence ∧ H.fukayaCategoryEquivalence ∧ H.homologicalMatching

theorem hms_bridge_closed_from_evidence
    (H : HmsBridgePackage) (E : HmsBridgeEvidence H) :
    HmsBridgeClosed H := by
  exact And.intro E.derivedCategoryEquivalenceClosed
    (And.intro E.fukayaCategoryEquivalenceClosed E.homologicalMatchingClosed)

end CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean
end HautevilleHouse