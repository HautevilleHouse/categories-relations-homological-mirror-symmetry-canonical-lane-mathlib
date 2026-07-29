import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean

structure SymplecticManifold where
  manifold : Type u
  symplecticForm : Type v
  closedNondegenerate : Prop
  smoothness : Prop

def SymplecticManifoldClosed (M : SymplecticManifold) : Prop :=
  M.closedNondegenerate ∧ M.smoothness

end CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean
end HautevilleHouse