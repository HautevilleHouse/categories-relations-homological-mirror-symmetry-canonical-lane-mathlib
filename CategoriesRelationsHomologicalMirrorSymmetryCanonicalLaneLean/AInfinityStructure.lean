import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean

structure AInfinityAlgebra where
  underlyingChainComplex : Type u
  degree : ℤ
  maps : ℕ → (underlyingChainComplex ⊗^[n] → underlyingChainComplex)
  quadraticRelation : Prop
  higherRelations : Prop

structure AInfinityMorphism where
  source : AInfinityAlgebra
  target : AInfinityAlgebra
  componentMaps : ℕ → (source.underlyingChainComplex → target.underlyingChainComplex)
  compatibility : Prop

structure AInfinityCategory where
  objects : Type u
  morphismSpaces : objects → objects → AInfinityAlgebra
  compositionAInfinity : objects → objects → objects → AInfinityMorphism (morphismSpaces A B) (morphismSpaces B C) (morphismSpaces A C)
  unitAInfinity : ∀ (X : objects), AInfinityMorphism (unitAlgebra) (morphismSpaces X X)

structure HomologicalMirrorAdmittedObject where
  fukayaCategory : FukayaCategory
  derivedCategory : DerivedCategory
  AInfinityEquivalence : AInfinityCategory
  equivalenceIsFullyFaithful : Prop
  equivalenceIsEssentiallySurjective : Prop
  conclusion : equivalenceIsFullyFaithful ∧ equivalenceIsEssentiallySurjective

end CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean
end HautevilleHouse