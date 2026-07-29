import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EthicsEnvironmentalEthicsCanonicalLaneLean

def ConstrainedEnvironmentalEthicsClosure (A : EnvironmentalAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_environmental_ethics_endgame (A : EnvironmentalAdmissibleClass) :
    ConstrainedEnvironmentalEthicsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EthicsEnvironmentalEthicsCanonicalLaneLean
end HautevilleHouse