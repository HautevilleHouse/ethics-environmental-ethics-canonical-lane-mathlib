import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EthicsEnvironmentalEthicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  EnvironmentalWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EthicsEnvironmentalEthicsCanonicalLaneLean
end HautevilleHouse