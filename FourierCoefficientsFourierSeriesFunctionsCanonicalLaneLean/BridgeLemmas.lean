import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourierCoefficientsFourierSeriesFunctionsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FourierWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FourierCoefficientsFourierSeriesFunctionsCanonicalLaneLean
end HautevilleHouse