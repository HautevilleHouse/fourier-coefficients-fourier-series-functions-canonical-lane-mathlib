import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourierCoefficientsFourierSeriesFunctionsCanonicalLaneLean

structure ConvolutionKernelPackage where
  kernelFunction : Type u
  convolutionProduct : Type v
  approximateIdentity : Prop
  goodKernel : Prop
  fourierMultiplier : Type w

structure ConvolutionKernelEvidence (K : ConvolutionKernelPackage) where
  approximateIdentityClosed : K.approximateIdentity
  goodKernelClosed : K.goodKernel

def ConvolutionKernelClosed (K : ConvolutionKernelPackage) : Prop :=
  K.approximateIdentity ∧ K.goodKernel

theorem convolution_kernel_closed_from_evidence (K : ConvolutionKernelPackage) (E : ConvolutionKernelEvidence K) :
    ConvolutionKernelClosed K :=
  And.intro E.approximateIdentityClosed E.goodKernelClosed

end FourierCoefficientsFourierSeriesFunctionsCanonicalLaneLean
end HautevilleHouse