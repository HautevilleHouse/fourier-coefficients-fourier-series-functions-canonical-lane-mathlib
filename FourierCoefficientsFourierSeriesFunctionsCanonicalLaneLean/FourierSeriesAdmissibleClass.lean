import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourierCoefficientsFourierSeriesFunctionsCanonicalLaneLean

structure AdmissibleFourierSeries (A : AdmissibleClass) where
  integrableFunction : ℕ → ℝ
  fourierCoefficients : ℕ → ℝ
  coefficientConvergence : Prop
  partialSumsConvergence : Prop

structure FourierAdmittedObject where
  functionSpace : Type
  innerProduct : Type
  orthonormalBasis : Type
  coefficientUniqueness : Prop
  conclusion : coefficientUniqueness

def FourierWitnessClosed (O : FourierAdmittedObject) : Prop := O.conclusion

end FourierCoefficientsFourierSeriesFunctionsCanonicalLaneLean
end HautevilleHouse