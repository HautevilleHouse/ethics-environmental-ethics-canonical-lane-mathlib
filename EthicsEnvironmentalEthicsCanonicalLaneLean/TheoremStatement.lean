import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EthicsEnvironmentalEthicsCanonicalLaneLean

structure EnvironmentalEthicsAdmittedObject where
  space : Type u
  ethicalPrinciple : Prop
  environmentalValue : Prop
  normativeFramework : Prop
  conclusion : ethicalPrinciple ∧ environmentalValue ∧ normativeFramework

def EnvironmentalEthicsWitnessClosed (O : EnvironmentalEthicsAdmittedObject) : Prop :=
  O.ethicalPrinciple ∧ O.environmentalValue ∧ O.normativeFramework

theorem environmental_ethics_witness_closed (O : EnvironmentalEthicsAdmittedObject) :
    EnvironmentalEthicsWitnessClosed O := by
  exact O.conclusion

end EthicsEnvironmentalEthicsCanonicalLaneLean
end HautevilleHouse
