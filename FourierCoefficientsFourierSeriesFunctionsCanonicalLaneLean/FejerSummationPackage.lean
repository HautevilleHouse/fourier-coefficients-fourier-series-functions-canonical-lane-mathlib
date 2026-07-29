import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourierCoefficientsFourierSeriesFunctionsCanonicalLaneLean

structure FejerSummationPackage (F : FourierCoefficientPackage) (S : FourierSeriesPackage F) where
  cesaroMean : ℕ → F.functionSpace → F.functionSpace
  uniformConvergenceContinuous : Prop
  fejerKernel : F.functionSpace → F.functionSpace

structure FejerSummationEvidence {F : FourierCoefficientPackage} {S : FourierSeriesPackage F} (J : FejerSummationPackage F S) where
  cesaroMeanDefined : ∀ (n : ℕ) (f : F.functionSpace), J.cesaroMean n f = ???
  uniformConvergenceContinuousClosed : J.uniformConvergenceContinuous
  fejerKernelDefined : ∀ (f : F.functionSpace), J.fejerKernel f = ???

def FejerSummationClosed {F : FourierCoefficientPackage} {S : FourierSeriesPackage F} (J : FejerSummationPackage F S) : Prop :=
  J.uniformConvergenceContinuous

theorem fejer_summation_closed_from_evidence
    {F : FourierCoefficientPackage} {S : FourierSeriesPackage F} (J : FejerSummationPackage F S)
    (E : FejerSummationEvidence J) : FejerSummationClosed J := by
  exact E.uniformConvergenceContinuousClosed

end FourierCoefficientsFourierSeriesFunctionsCanonicalLaneLean
end HautevilleHouse
