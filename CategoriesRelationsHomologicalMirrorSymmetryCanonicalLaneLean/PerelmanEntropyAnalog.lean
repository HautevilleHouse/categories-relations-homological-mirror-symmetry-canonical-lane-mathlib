import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesRelationsHomologicalMirrorSymmetry

--  This file adapts the concept of Perelman entropy to mirror symmetry.

structure AnalyticEntropyData where
  wFunctional : Type u
  muFunctional : Type v
  monotonicity : Prop

structure MirrorEntropyBridge where
  entropyOnA : AnalyticEntropyData
  entropyOnB : AnalyticEntropyData
  equivalenceUnderMirror : Prop
  entropyBridgeClosed : bridgeClosed ∧ gateClosed

end CategoriesRelationsHomologicalMirrorSymmetry
end HautevilleHouse