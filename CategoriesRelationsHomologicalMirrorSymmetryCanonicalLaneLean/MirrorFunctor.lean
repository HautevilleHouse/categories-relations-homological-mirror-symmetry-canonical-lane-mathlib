import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoriesRelationsHomologicalMirrorSymmetry.HomologicalMirrorObject

namespace HautevilleHouse
namespace CategoriesRelationsHomologicalMirrorSymmetry

structure MirrorFunctorPair where
  AtoB : FukayaCategoryData → DerivedCategoryData
  BtoA : DerivedCategoryData → FukayaCategoryData
  adjunction : Prop

structure HomologicalMirrorSymmetryBridge where
  mirrorPair : MirrorFunctorPair
  coherenceCondition : Prop
  bridgeAdmissible : bridgeClosed ∧ gateClosed

end CategoriesRelationsHomologicalMirrorSymmetry
end HautevilleHouse