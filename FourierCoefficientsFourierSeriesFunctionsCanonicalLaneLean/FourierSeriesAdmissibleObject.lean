import canonicalLaneMathlib.AdmissibleClass
import FourierCoefficientsFourierSeriesFunctionsCanonicalLaneLean.FourierSeriesAdmissibleClass

namespace HautevilleHouse
namespace FourierCoefficientsFourierSeriesFunctionsCanonicalLaneLean

structure FourierCoefficientPackage where
  functionType : Type
  coefficientSequence : Type
  convergenceMode : Prop
  orthonormalCompleteness : Prop

structure FourierCoefficientEvidence (P : FourierCoefficientPackage) where
  convergenceModeClosed : P.convergenceMode
  orthonormalCompletenessClosed : P.orthonormalCompleteness

def FourierCoefficientClosed (P : FourierCoefficientPackage) : Prop :=
  P.convergenceMode ∧ P.orthonormalCompleteness

theorem fourier_coefficient_closed_from_evidence (P : FourierCoefficientPackage)
    (E : FourierCoefficientEvidence P) : FourierCoefficientClosed P := by
  exact And.intro E.convergenceModeClosed E.orthonormalCompletenessClosed

end FourierCoefficientsFourierSeriesFunctionsCanonicalLaneLean
end HautevilleHouse