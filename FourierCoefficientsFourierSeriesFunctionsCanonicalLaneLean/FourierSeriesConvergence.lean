import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourierCoefficientsFourierSeriesFunctionsCanonicalLaneLean

structure FourierSeriesConvergencePackage where
  pointwiseConvergence : Prop
  uniformConvergence : Prop
  cesaroSummability : Prop
  gibbsPhenomenon : Prop
  dirichletKernelConv : Prop
  fejerKernelConv : Prop

structure FourierSeriesConvergenceEvidence (C : FourierSeriesConvergencePackage) where
  pointwiseConvergenceClosed : C.pointwiseConvergence
  uniformConvergenceClosed : C.uniformConvergence
  cesaroSummabilityClosed : C.cesaroSummability
  gibbsPhenomenonClosed : C.gibbsPhenomenon
  dirichletKernelConvClosed : C.dirichletKernelConv
  fejerKernelConvClosed : C.fejerKernelConv

def FourierSeriesConvergenceClosed (C : FourierSeriesConvergencePackage) : Prop :=
  C.pointwiseConvergence ∧ C.uniformConvergence ∧ C.cesaroSummability ∧
  C.gibbsPhenomenon ∧ C.dirichletKernelConv ∧ C.fejerKernelConv

theorem fourier_series_convergence_closed_from_evidence (C : FourierSeriesConvergencePackage) (E : FourierSeriesConvergenceEvidence C) :
    FourierSeriesConvergenceClosed C :=
  And.intro E.pointwiseConvergenceClosed
    (And.intro E.uniformConvergenceClosed
      (And.intro E.cesaroSummabilityClosed
        (And.intro E.gibbsPhenomenonClosed
          (And.intro E.dirichletKernelConvClosed E.fejerKernelConvClosed))))

end FourierCoefficientsFourierSeriesFunctionsCanonicalLaneLean
end HautevilleHouse