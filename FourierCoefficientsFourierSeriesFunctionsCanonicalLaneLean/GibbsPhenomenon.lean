import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourierCoefficientsFourierSeriesFunctionsCanonicalLaneLean

structure GibbsPhenomenonPackage {V : PeriodicFunctionSpace} {F : FourierSeriesPackage V} {K : FejerKernelPackage V F} where
  jumpDiscontinuity : Prop
  overshoot : ℝ → Prop
  GibbsConstant : ℝ

def GibbsPhenomenonClosed {V : PeriodicFunctionSpace} {F : FourierSeriesPackage V} {K : FejerKernelPackage V F} (G : GibbsPhenomenonPackage V F K) : Prop :=
  G.overshoot G.GibbsConstant

end FourierCoefficientsFourierSeriesFunctionsCanonicalLaneLean
end HautevilleHouse
