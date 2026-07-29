import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean

structure FukayaCategoryPackage (M : Type u) [SymplecticManifold M] where
  objects : Type v
  morphisms (X Y : objects) : Type w
  composition {X Y Z : objects} (f : morphisms X Y) (g : morphisms Y Z) : morphisms X Z
  identity (X : objects) : morphisms X X
  associativity : Prop
  unitLaws : Prop
  lagrangianSubmanifolds : Prop
  intersectionTheory : Prop
  boundingCoherentSheaf : Prop
  backgroundClass : Type u

structure FukayaCategoryEvidence {M : Type u} [SymplecticManifold M] (F : FukayaCategoryPackage M) where
  associativityClosed : F.associativity
  unitLawsClosed : F.unitLaws
  lagrangianSubmanifoldsClosed : F.lagrangianSubmanifolds
  intersectionTheoryClosed : F.intersectionTheory
  boundingCoherentSheafClosed : F.boundingCoherentSheaf

def FukayaCategoryClosed {M : Type u} [SymplecticManifold M] (F : FukayaCategoryPackage M) : Prop :=
  F.associativity ∧ F.unitLaws ∧ F.lagrangianSubmanifolds ∧ F.intersectionTheory ∧ F.boundingCoherentSheaf

theorem fukaya_category_closed_from_evidence {M : Type u} [SymplecticManifold M] (F : FukayaCategoryPackage M) (E : FukayaCategoryEvidence F) : FukayaCategoryClosed F :=
  And.intro E.associativityClosed (And.intro E.unitLawsClosed (And.intro E.lagrangianSubmanifoldsClosed (And.intro E.intersectionTheoryClosed E.boundingCoherentSheafClosed)))

end CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean
end HautevilleHouse