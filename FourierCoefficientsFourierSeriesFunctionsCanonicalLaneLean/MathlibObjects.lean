import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourierCoefficientsFourierSeriesFunctionsCanonicalLaneLean

structure FourierSpace where
  carrier : Type
  measureSpace : carrier

structure FourierAdmittedObject where
  space : FourierSpace
  integrableFunction : Prop
  functionProperties : Prop
  sequenceModel : Type
  sequenceTopology : ℕ
  convergesToFunction : Prop
  conclusion : convergesToFunction

structure FourierEndgameState where
  object : FourierAdmittedObject

def FourierWitnessClosed (O : FourierAdmittedObject) : Prop :=
  O.convergesToFunction

end FourierCoefficientsFourierSeriesFunctionsCanonicalLaneLean
end HautevilleHouse