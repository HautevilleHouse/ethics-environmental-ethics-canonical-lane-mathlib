import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EthicsEnvironmentalEthicsCanonicalLaneLean

structure IntrinsicValuePackage where
  nonAnthropocentricValue : Prop
  inherentWorth : Prop
  speciesEgalitarianism : Prop
  deepEcologyPrinciple : Prop

structure IntrinsicValueEvidence (I : IntrinsicValuePackage) where
  nonAnthropocentricValueClosed : I.nonAnthropocentricValue
  inherentWorthClosed : I.inherentWorth
  speciesEgalitarianismClosed : I.speciesEgalitarianism
  deepEcologyPrincipleClosed : I.deepEcologyPrinciple

def IntrinsicValueClosed (I : IntrinsicValuePackage) : Prop :=
  I.nonAnthropocentricValue ∧ I.inherentWorth ∧
  I.speciesEgalitarianism ∧ I.deepEcologyPrinciple

theorem intrinsic_value_closed_from_evidence (I : IntrinsicValuePackage)
    (E : IntrinsicValueEvidence I) : IntrinsicValueClosed I := by
  exact And.intro E.nonAnthropocentricValueClosed
    (And.intro E.inherentWorthClosed
      (And.intro E.speciesEgalitarianismClosed E.deepEcologyPrincipleClosed))

end EthicsEnvironmentalEthicsCanonicalLaneLean
end HautevilleHouse