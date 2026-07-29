import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EthicsEnvironmentalEthicsCanonicalLaneLean

structure ValueFramework where
  intrinsicValue : Prop
  instrumentalValue : Prop
  ecosystemServices : Prop
  biodiversityValue : Prop
  futureGenerationsValue : Prop

structure ValueFrameworkEvidence (V : ValueFramework) where
  intrinsicValueClosed : V.intrinsicValue
  instrumentalValueClosed : V.instrumentalValue
  ecosystemServicesClosed : V.ecosystemServices
  biodiversityValueClosed : V.biodiversityValue
  futureGenerationsValueClosed : V.futureGenerationsValue

def ValueFrameworkClosed (V : ValueFramework) : Prop :=
  V.intrinsicValue ∧ V.instrumentalValue ∧ V.ecosystemServices ∧ V.biodiversityValue ∧ V.futureGenerationsValue

theorem value_framework_closed_from_evidence (V : ValueFramework) (E : ValueFrameworkEvidence V) :
    ValueFrameworkClosed V := by
  exact And.intro E.intrinsicValueClosed
    (And.intro E.instrumentalValueClosed
      (And.intro E.ecosystemServicesClosed
        (And.intro E.biodiversityValueClosed E.futureGenerationsValueClosed)))

end EthicsEnvironmentalEthicsCanonicalLaneLean
end HautevilleHouse