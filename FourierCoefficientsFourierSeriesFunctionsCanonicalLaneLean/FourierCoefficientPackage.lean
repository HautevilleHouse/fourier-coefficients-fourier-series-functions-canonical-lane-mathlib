import canonicalLaneMathlib.AdmissibleClass

/-!
# Fourier Coefficient Package
-/

namespace HautevilleHouse
namespace FourierCoefficientsFourierSeriesFunctionsCanonicalLaneLean

structure FourierCoefficientPackage where
  integrableFunction : ℕ → ℝ → ℂ
  fourierCoefficient : ℕ → ℕ → ℂ
  decayProperty : Prop
  convergenceProperty : Prop
  coefficientFormula : Prop

structure FourierCoefficientEvidence (P : FourierCoefficientPackage) where
  coefficientFormulaClosed : P.coefficientFormula
  decayPropertyClosed : P.decayProperty
  convergencePropertyClosed : P.convergenceProperty

def FourierCoefficientClosed (P : FourierCoefficientPackage) : Prop :=
  P.coefficientFormula ∧ P.decayProperty ∧ P.convergenceProperty

theorem fourier_coefficient_closed_from_evidence (P : FourierCoefficientPackage) (E : FourierCoefficientEvidence P) :
    FourierCoefficientClosed P := by
  exact And.intro E.coefficientFormulaClosed (And.intro E.decayPropertyClosed E.convergencePropertyClosed)

end FourierCoefficientsFourierSeriesFunctionsCanonicalLaneLean
end HautevilleHouse