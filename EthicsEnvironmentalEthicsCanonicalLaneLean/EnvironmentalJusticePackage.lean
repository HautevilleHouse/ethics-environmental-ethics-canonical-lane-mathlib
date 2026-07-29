import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EthicsEnvironmentalEthicsCanonicalLaneLean

structure EnvironmentalJusticePackage where
  distributiveJustice : Prop
  proceduralJustice : Prop
  recognitionJustice : Prop
  intercommunityEquity : Prop

structure EnvironmentalJusticeEvidence (J : EnvironmentalJusticePackage) where
  distributiveJusticeClosed : J.distributiveJustice
  proceduralJusticeClosed : J.proceduralJustice
  recognitionJusticeClosed : J.recognitionJustice
  intercommunityEquityClosed : J.intercommunityEquity

def EnvironmentalJusticeClosed (J : EnvironmentalJusticePackage) : Prop :=
  J.distributiveJustice ∧ J.proceduralJustice ∧
  J.recognitionJustice ∧ J.intercommunityEquity

theorem environmental_justice_closed_from_evidence (J : EnvironmentalJusticePackage)
    (E : EnvironmentalJusticeEvidence J) : EnvironmentalJusticeClosed J := by
  exact And.intro E.distributiveJusticeClosed
    (And.intro E.proceduralJusticeClosed
      (And.intro E.recognitionJusticeClosed E.intercommunityEquityClosed))

end EthicsEnvironmentalEthicsCanonicalLaneLean
end HautevilleHouse