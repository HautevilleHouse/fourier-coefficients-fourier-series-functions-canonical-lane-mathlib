import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourierCoefficientsFourierSeriesFunctionsCanonicalLaneLean

structure ConvergencePackage {F : FourierSeriesPackage} (C : FourierCoefficientPackage F) where
  pointwiseConvergence : Prop
  uniformConvergence : Prop
  L2Convergence : Prop
  convergenceRate : Prop

structure ConvergenceEvidence {F : FourierSeriesPackage} {C : FourierCoefficientPackage F} (V : ConvergencePackage C) where
  pointwiseConvergenceClosed : V.pointwiseConvergence
  uniformConvergenceClosed : V.uniformConvergence
  L2ConvergenceClosed : V.L2Convergence
  convergenceRateClosed : V.convergenceRate

def ConvergenceClosed {F : FourierSeriesPackage} {C : FourierCoefficientPackage F} (V : ConvergencePackage C) : Prop :=
  V.pointwiseConvergence ∧ V.uniformConvergence ∧ V.L2Convergence ∧ V.convergenceRate

theorem convergence_closed_from_evidence {F : FourierSeriesPackage} {C : FourierCoefficientPackage F} (V : ConvergencePackage C) (E : ConvergenceEvidence V) : ConvergenceClosed V := by
  exact And.intro E.pointwiseConvergenceClosed (And.intro E.uniformConvergenceClosed (And.intro E.L2ConvergenceClosed E.convergenceRateClosed))

end FourierCoefficientsFourierSeriesFunctionsCanonicalLaneLean
end HautevilleHouse