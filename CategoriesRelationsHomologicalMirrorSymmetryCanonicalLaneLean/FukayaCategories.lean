import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean

structure FukayaCategoryPackage where
  lagrangianSubmanifolds : Prop
  floerComplex : Prop
  productStructure : Prop
  quilts : Prop

structure FukayaCategoryEvidence (F : FukayaCategoryPackage) where
  lagrangianSubmanifoldsClosed : F.lagrangianSubmanifolds
  floerComplexClosed : F.floerComplex
  productStructureClosed : F.productStructure
  quiltsClosed : F.quilts

def FukayaCategoryClosed (F : FukayaCategoryPackage) : Prop :=
  F.lagrangianSubmanifolds ∧ F.floerComplex ∧ F.productStructure ∧ F.quilts

theorem fukaya_category_closed_from_evidence
    (F : FukayaCategoryPackage) (E : FukayaCategoryEvidence F) :
    FukayaCategoryClosed F := by
  exact And.intro E.lagrangianSubmanifoldsClosed
    (And.intro E.floerComplexClosed
      (And.intro E.productStructureClosed E.quiltsClosed))

end CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean
end HautevilleHouse