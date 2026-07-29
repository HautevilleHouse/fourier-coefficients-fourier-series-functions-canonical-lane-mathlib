import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FourierCoefficientsFourierSeriesFunctionsCanonicalLaneLean.FourierSeriesPackage

/-!
# Fourier Function Package
-/

namespace HautevilleHouse
namespace FourierCoefficientsFourierSeriesFunctionsCanonicalLaneLean

structure FourierFunctionPackage {P : FourierCoefficientPackage} {S : FourierSeriesPackage P} where
  functionSpace : Type u
  norm : functionSpace → ℝ
  innerProduct : functionSpace → functionSpace → ℂ
  orthonormalBasis : ℕ → functionSpace
  completeness : Prop
  orthonormality : Prop

structure FourierFunctionEvidence {P : FourierCoefficientPackage} {S : FourierSeriesPackage P} (F : FourierFunctionPackage P S) where
  completenessClosed : F.completeness
  orthonormalityClosed : F.orthonormality

def FourierFunctionClosed {P : FourierCoefficientPackage} {S : FourierSeriesPackage P} (F : FourierFunctionPackage P S) : Prop :=
  F.completeness ∧ F.orthonormality

theorem fourier_function_closed_from_evidence {P : FourierCoefficientPackage} {S : FourierSeriesPackage P} (F : FourierFunctionPackage P S) (E : FourierFunctionEvidence F) :
    FourierFunctionClosed F := by
  exact And.intro E.completenessClosed E.orthonormalityClosed

end FourierCoefficientsFourierSeriesFunctionsCanonicalLaneLean
end HautevilleHouse