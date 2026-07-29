import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EthicsEnvironmentalEthicsCanonicalLaneLean

structure EnvironmentalJusticePackage where
  distributiveJustice : Prop
  participatoryJustice : Prop
  recognitionJustice : Prop
  capabilitiesApproach : Prop
  proceduralFairness : Prop

structure EnvironmentalJusticeEvidence (J : EnvironmentalJusticePackage) where
  distributiveJusticeClosed : J.distributiveJustice
  participatoryJusticeClosed : J.participatoryJustice
  recognitionJusticeClosed : J.recognitionJustice
  capabilitiesApproachClosed : J.capabilitiesApproach
  proceduralFairnessClosed : J.proceduralFairness

def EnvironmentalJusticeClosed (J : EnvironmentalJusticePackage) : Prop :=
  J.distributiveJustice ∧ J.participatoryJustice ∧ J.recognitionJustice ∧ J.capabilitiesApproach ∧ J.proceduralFairness

theorem environmental_justice_closed_from_evidence (J : EnvironmentalJusticePackage) (E : EnvironmentalJusticeEvidence J) :
    EnvironmentalJusticeClosed J := by
  exact And.intro E.distributiveJusticeClosed
    (And.intro E.participatoryJusticeClosed
      (And.intro E.recognitionJusticeClosed
        (And.intro E.capabilitiesApproachClosed E.proceduralFairnessClosed)))

end EthicsEnvironmentalEthicsCanonicalLaneLean
end HautevilleHouse