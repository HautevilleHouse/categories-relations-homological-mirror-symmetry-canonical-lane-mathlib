import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesRelationsHomologicalMirrorSymmetry

structure CalabiYauThreefold where
  manifold : Type u
  kaehlerForm : Type v
  holomorphicThreeForm : Type w
  chernClassCondition : Prop

structure ComplexStructureData where
  complexCoordinates : Type u
  transitionFunctionsHolomorphic : Prop

structure KahlerModuliData where
  kahlerParameters : Type u
  volumeForm : Prop

end CategoriesRelationsHomologicalMirrorSymmetry
end HautevilleHouse