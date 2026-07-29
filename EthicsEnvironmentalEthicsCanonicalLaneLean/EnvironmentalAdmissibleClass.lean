import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EthicsEnvironmentalEthicsCanonicalLaneLean

structure EnvironmentalAdmittedObject where
  ecosystem : Type
  ecosystemState : Type
  anthropocentricValue : Prop
  intrinsicValue : Prop
  sustainabilityPrinciple : Prop
  conclusion : sustainabilityPrinciple

structure EnvironmentalAdmissibleClass where
  object : EnvironmentalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def environmentalAdmittedClosure (A : EnvironmentalAdmissibleClass) : Prop :=
  A.object.sustainabilityPrinciple ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EthicsEnvironmentalEthicsCanonicalLaneLean
end HautevilleHouse