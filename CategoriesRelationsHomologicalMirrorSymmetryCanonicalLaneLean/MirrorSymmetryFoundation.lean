import canonicalLaneMathlib.AdmissibleClass
import .FukayaCategory
import .DerivedCategory

namespace HautevilleHouse
namespace CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean

structure MirrorSymmetryFoundation where
  symplecticSide : FukayaCategory
  complexSide : DerivedCategory
  equivalenceConjecture : Prop

def MirrorSymmetryFoundationClosed (F : MirrorSymmetryFoundation) : Prop :=
  FukayaCategoryClosed F.symplecticSide ∧ DerivedCategoryClosed F.complexSide ∧ F.equivalenceConjecture

end CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean
end HautevilleHouse