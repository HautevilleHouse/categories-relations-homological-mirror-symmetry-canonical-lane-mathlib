import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesRelationsHomologicalMirrorSymmetry

structure FukayaCategoryData where
  lagrangian : Type u
  floerComplex : Type v
  aInfinityStructure : Prop

structure DerivedCategoryData where
  triangulatedCategory : Type w
  dgCategory : Prop
  enhancement : Prop

structure MirrorDualData where
  fukaya : FukayaCategoryData
  derived : DerivedCategoryData
  equivalence : Prop
  equivalenceWitness : equivalence

end CategoriesRelationsHomologicalMirrorSymmetry
end HautevilleHouse