import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourierCoefficientsFourierSeriesFunctionsCanonicalLaneLean

structure PoissonSummationPackage {V : PeriodicFunctionSpace} where
  thetaSeries : ℕ → V.carrier → ℂ
  functionalEquation : Prop
  convergenceRate : Prop

structure PoissonSummationEvidence {V : PeriodicFunctionSpace} (P : PoissonSummationPackage V) where
  functionalEquationClosed : P.functionalEquation
  convergenceRateClosed : P.convergenceRate

def PoissonSummationClosed {V : PeriodicFunctionSpace} (P : PoissonSummationPackage V) : Prop :=
  P.functionalEquation ∧ P.convergenceRate

theorem poisson_summation_closed_from_evidence {V : PeriodicFunctionSpace} (P : PoissonSummationPackage V) (E : PoissonSummationEvidence P) : PoissonSummationClosed P := by
  exact And.intro E.functionalEquationClosed E.convergenceRateClosed

end FourierCoefficientsFourierSeriesFunctionsCanonicalLaneLean
end HautevilleHouse
