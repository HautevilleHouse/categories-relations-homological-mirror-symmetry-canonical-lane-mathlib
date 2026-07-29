import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesRelationsHomologicalMirrorSymmetry

structure AInfinityAlgebra where
  underlyingGraded : Type u
  multiplicationMaps : ℕ → (Type u → Type u → Type u)
  associativityRelations : Prop

structure MaurerCartanData where
  element : Type u
  equation : Prop

structure DeformationTheory where
  formalDGAlgebra : AInfinityAlgebra
  obstructionTheory : Prop

end CategoriesRelationsHomologicalMirrorSymmetry
end HautevilleHouse