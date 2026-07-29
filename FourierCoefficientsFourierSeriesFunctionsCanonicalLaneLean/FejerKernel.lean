import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourierCoefficientsFourierSeriesFunctionsCanonicalLaneLean

structure FejerKernelPackage {V : PeriodicFunctionSpace} {F : FourierSeriesPackage V} where
  fejerKernel : ℕ → V.carrier → ℝ
  positivity : Prop
  approximationIdentity : Prop

structure FejerKernelEvidence {V : PeriodicFunctionSpace} {F : FourierSeriesPackage V} (K : FejerKernelPackage V F) where
  positivityClosed : K.positivity
  approximationIdentityClosed : K.approximationIdentity

def FejerKernelClosed {V : PeriodicFunctionSpace} {F : FourierSeriesPackage V} (K : FejerKernelPackage V F) : Prop :=
  K.positivity ∧ K.approximationIdentity

theorem fejer_kernel_closed_from_evidence {V : PeriodicFunctionSpace} {F : FourierSeriesPackage V} (K : FejerKernelPackage V F) (E : FejerKernelEvidence K) : FejerKernelClosed K := by
  exact And.intro E.positivityClosed E.approximationIdentityClosed

end FourierCoefficientsFourierSeriesFunctionsCanonicalLaneLean
end HautevilleHouse
