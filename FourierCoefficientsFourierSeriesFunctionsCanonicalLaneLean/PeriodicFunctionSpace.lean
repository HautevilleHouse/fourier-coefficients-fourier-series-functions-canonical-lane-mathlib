import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourierCoefficientsFourierSeriesFunctionsCanonicalLaneLean

structure PeriodicFunctionSpace where
  carrier : Type u
  norm : carrier → ℝ
  innerProduct : carrier → carrier → ℝ
  completeness : Prop
  orthonormalBasis : Type v

structure PeriodicFunctionEvidence (V : PeriodicFunctionSpace) where
  completenessClosed : V.completeness

end FourierCoefficientsFourierSeriesFunctionsCanonicalLaneLean
end HautevilleHouse
