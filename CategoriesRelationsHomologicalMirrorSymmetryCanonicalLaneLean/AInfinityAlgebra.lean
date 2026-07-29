import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean

structure AInfinityAlgebraPackage where
  underlying_module : Type
  operations : Type
  associativity_relations : Prop
  higher_arity_relations : Prop
  associativity_closed : associativity_relations
  higher_arity_closed : higher_arity_relations

structure AInfinityAlgebraEvidence (A : AInfinityAlgebraPackage) where
  associativity_closed : A.associativity_relations
  higher_arity_closed : A.higher_arity_relations

def AInfinityAlgebraClosed (A : AInfinityAlgebraPackage) : Prop :=
  A.associativity_relations ∧ A.higher_arity_relations

theorem a_infinity_algebra_closed_from_evidence (A : AInfinityAlgebraPackage) (E : AInfinityAlgebraEvidence A) : AInfinityAlgebraClosed A := by
  exact And.intro E.associativity_closed E.higher_arity_closed

end CategoriesRelationsHomologicalMirrorSymmetryCanonicalLaneLean
end HautevilleHouse