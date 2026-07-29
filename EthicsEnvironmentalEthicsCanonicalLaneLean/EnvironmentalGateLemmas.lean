import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EthicsEnvironmentalEthicsCanonicalLaneLean

def gateClosed (A : EnvironmentalAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : EnvironmentalAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end EthicsEnvironmentalEthicsCanonicalLaneLean
end HautevilleHouse