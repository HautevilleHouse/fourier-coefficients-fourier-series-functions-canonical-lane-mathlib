import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FourierCoefficientsFourierSeriesFunctionsCanonicalLaneLean.FourierCoefficientPackage

/-!
# Fourier Series Package
-/

namespace HautevilleHouse
namespace FourierCoefficientsFourierSeriesFunctionsCanonicalLaneLean

structure FourierSeriesPackage {P : FourierCoefficientPackage} where
  partialSums : ℕ → ℝ → ℂ
  pointwiseLimit : ℝ → ℂ
  uniformConvergence : Prop
  normConvergence : Prop
  pointwiseConvergence : Prop

structure FourierSeriesEvidence {P : FourierCoefficientPackage} (S : FourierSeriesPackage P) where
  pointwiseConvergenceClosed : S.pointwiseConvergence
  uniformConvergenceClosed : S.uniformConvergence
  normConvergenceClosed : S.normConvergence

def FourierSeriesClosed {P : FourierCoefficientPackage} (S : FourierSeriesPackage P) : Prop :=
  S.pointwiseConvergence ∧ S.uniformConvergence ∧ S.normConvergence

theorem fourier_series_closed_from_evidence {P : FourierCoefficientPackage} (S : FourierSeriesPackage P) (E : FourierSeriesEvidence S) :
    FourierSeriesClosed S := by
  exact And.intro E.pointwiseConvergenceClosed (And.intro E.uniformConvergenceClosed E.normConvergenceClosed)

end FourierCoefficientsFourierSeriesFunctionsCanonicalLaneLean
end HautevilleHouse