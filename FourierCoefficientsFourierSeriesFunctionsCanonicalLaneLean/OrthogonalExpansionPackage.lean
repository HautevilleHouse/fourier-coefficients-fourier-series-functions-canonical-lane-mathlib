import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourierCoefficientsFourierSeriesFunctionsCanonicalLaneLean

structure OrthogonalExpansionPackage {F : FourierSeriesPackage} (C : FourierCoefficientPackage F) where
  orthogonalBasis : Prop
  expansionFormula : Prop
  parsevalIdentity : Prop
  besovInequality : Prop

structure OrthogonalExpansionEvidence {F : FourierSeriesPackage} {C : FourierCoefficientPackage F} (O : OrthogonalExpansionPackage C) where
  orthogonalBasisClosed : O.orthogonalBasis
  expansionFormulaClosed : O.expansionFormula
  parsevalIdentityClosed : O.parsevalIdentity
  besovInequalityClosed : O.besovInequality

def OrthogonalExpansionClosed {F : FourierSeriesPackage} {C : FourierCoefficientPackage F} (O : OrthogonalExpansionPackage C) : Prop :=
  O.orthogonalBasis ∧ O.expansionFormula ∧ O.parsevalIdentity ∧ O.besovInequality

theorem orthogonal_expansion_closed_from_evidence {F : FourierSeriesPackage} {C : FourierCoefficientPackage F} (O : OrthogonalExpansionPackage C) (E : OrthogonalExpansionEvidence O) : OrthogonalExpansionClosed O := by
  exact And.intro E.orthogonalBasisClosed (And.intro E.expansionFormulaClosed (And.intro E.parsevalIdentityClosed E.besovInequalityClosed))

end FourierCoefficientsFourierSeriesFunctionsCanonicalLaneLean
end HautevilleHouse