import FourierCoefficientsFourierSeriesFunctionsCanonicalLaneLean.ConvergencePackage

namespace HautevilleHouse
namespace FourierCoefficientsFourierSeriesFunctionsCanonicalLaneLean

structure OrthonormalBasisPackage where
  basisType : Type
  orthonormality : Prop
  completeness : Prop
  coefficientFormula : Prop

structure OrthonormalBasisEvidence (B : OrthonormalBasisPackage) where
  orthonormalityClosed : B.orthonormality
  completenessClosed : B.completeness
  coefficientFormulaClosed : B.coefficientFormula

def OrthonormalBasisClosed (B : OrthonormalBasisPackage) : Prop :=
  B.orthonormality ∧ B.completeness ∧ B.coefficientFormula

theorem orthonormal_basis_closed_from_evidence (B : OrthonormalBasisPackage)
    (E : OrthonormalBasisEvidence B) : OrthonormalBasisClosed B := by
  exact And.intro E.orthonormalityClosed (And.intro E.completenessClosed E.coefficientFormulaClosed)

end FourierCoefficientsFourierSeriesFunctionsCanonicalLaneLean
end HautevilleHouse