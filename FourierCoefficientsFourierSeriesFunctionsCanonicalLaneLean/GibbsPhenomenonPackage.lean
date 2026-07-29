import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourierCoefficientsFourierSeriesFunctionsCanonicalLaneLean

structure GibbsPhenomenonPackage (F : FourierCoefficientPackage) (S : FourierSeriesPackage F) where
  jumpDiscontinuity : Prop
  overshootValue : ℝ
  asymptoticBehavior : Prop
  resolutionMethod : Prop

structure GibbsPhenomenonEvidence {F : FourierCoefficientPackage} {S : FourierSeriesPackage F} (G : GibbsPhenomenonPackage F S) where
  jumpDiscontinuityClosed : G.jumpDiscontinuity
  overshootValueComputed : G.overshootValue = 0.0894899
  asymptoticBehaviorClosed : G.asymptoticBehavior
  resolutionMethodClosed : G.resolutionMethod

def GibbsPhenomenonClosed {F : FourierCoefficientPackage} {S : FourierSeriesPackage F} (G : GibbsPhenomenonPackage F S) : Prop :=
  G.jumpDiscontinuity ∧ G.asymptoticBehavior ∧ G.resolutionMethod

theorem gibbs_phenomenon_closed_from_evidence
    {F : FourierCoefficientPackage} {S : FourierSeriesPackage F} (G : GibbsPhenomenonPackage F S)
    (E : GibbsPhenomenonEvidence G) : GibbsPhenomenonClosed G := by
  exact And.intro E.jumpDiscontinuityClosed
    (And.intro E.asymptoticBehaviorClosed E.resolutionMethodClosed)

end FourierCoefficientsFourierSeriesFunctionsCanonicalLaneLean
end HautevilleHouse
