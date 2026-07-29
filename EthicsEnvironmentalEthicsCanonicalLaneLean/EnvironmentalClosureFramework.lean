import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EthicsEnvironmentalEthicsCanonicalLaneLean

structure EnvironmentalClosureFramework (S : SustainabilityPackage)
    (I : IntrinsicValuePackage) (J : EnvironmentalJusticePackage) where
  sustainabilityClosed : SustainabilityClosed S
  intrinsicValueClosed : IntrinsicValueClosed I
  environmentalJusticeClosed : EnvironmentalJusticeClosed J
  coherencePrinciple : Prop
  coherencePrincipleTerm : coherencePrinciple

def EnvironmentalClosureFrameworkClosed {S : SustainabilityPackage}
    {I : IntrinsicValuePackage} {J : EnvironmentalJusticePackage}
    (F : EnvironmentalClosureFramework S I J) : Prop :=
  F.sustainabilityClosed ∧ F.intrinsicValueClosed ∧
  F.environmentalJusticeClosed ∧ F.coherencePrinciple

theorem environmental_closure_framework_closed {S : SustainabilityPackage}
    {I : IntrinsicValuePackage} {J : EnvironmentalJusticePackage}
    (F : EnvironmentalClosureFramework S I J) :
    EnvironmentalClosureFrameworkClosed F := by
  exact And.intro F.sustainabilityClosed
    (And.intro F.intrinsicValueClosed
      (And.intro F.environmentalJusticeClosed F.coherencePrincipleTerm))

end EthicsEnvironmentalEthicsCanonicalLaneLean
end HautevilleHouse