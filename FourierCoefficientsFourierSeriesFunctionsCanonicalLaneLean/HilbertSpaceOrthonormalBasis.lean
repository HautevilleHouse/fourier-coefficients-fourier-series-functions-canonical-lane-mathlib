import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourierCoefficientsFourierSeriesFunctionsCanonicalLaneLean

structure HilbertSpaceOrthonormalBasisPackage where
  hilbertSpace : Type u
  innerProduct : Type v
  orthonormalSet : Set (Type w)
  completeness : Prop
  orthonormality : Prop
  parsevalHolds : Prop
  rieszFischer : Prop

structure HilbertSpaceOrthonormalBasisEvidence (H : HilbertSpaceOrthonormalBasisPackage) where
  completenessClosed : H.completeness
  orthonormalityClosed : H.orthonormality
  parsevalHoldsClosed : H.parsevalHolds
  rieszFischerClosed : H.rieszFischer

def HilbertSpaceOrthonormalBasisClosed (H : HilbertSpaceOrthonormalBasisPackage) : Prop :=
  H.completeness ∧ H.orthonormality ∧ H.parsevalHolds ∧ H.rieszFischer

theorem hilbert_space_orthonormal_basis_closed_from_evidence (H : HilbertSpaceOrthonormalBasisPackage) (E : HilbertSpaceOrthonormalBasisEvidence H) :
    HilbertSpaceOrthonormalBasisClosed H :=
  And.intro E.completenessClosed
    (And.intro E.orthonormalityClosed
      (And.intro E.parsevalHoldsClosed E.rieszFischerClosed))

end FourierCoefficientsFourierSeriesFunctionsCanonicalLaneLean
end HautevilleHouse