import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EthicsEnvironmentalEthicsCanonicalLaneLean

structure AdmissibleClass where
  object : EnvironmentalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  EnvironmentalWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EthicsEnvironmentalEthicsCanonicalLaneLean
end HautevilleHouse