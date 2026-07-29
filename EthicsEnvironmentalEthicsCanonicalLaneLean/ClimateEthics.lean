import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EthicsEnvironmentalEthicsCanonicalLaneLean

structure ClimateEthicsPackage where
  historicalResponsibility : Prop
  polluterPays : Prop
  commonButDifferentiatedResponsibility : Prop
  climateJustice : Prop
  carbonBudget : Prop

structure ClimateEthicsEvidence (C : ClimateEthicsPackage) where
  historicalResponsibilityClosed : C.historicalResponsibility
  polluterPaysClosed : C.polluterPays
  commonButDifferentiatedResponsibilityClosed : C.commonButDifferentiatedResponsibility
  climateJusticeClosed : C.climateJustice
  carbonBudgetClosed : C.carbonBudget

def ClimateEthicsClosed (C : ClimateEthicsPackage) : Prop :=
  C.historicalResponsibility ∧ C.polluterPays ∧ C.commonButDifferentiatedResponsibility ∧ C.climateJustice ∧ C.carbonBudget

theorem climate_ethics_closed_from_evidence (C : ClimateEthicsPackage) (E : ClimateEthicsEvidence C) :
    ClimateEthicsClosed C := by
  exact And.intro E.historicalResponsibilityClosed
    (And.intro E.polluterPaysClosed
      (And.intro E.commonButDifferentiatedResponsibilityClosed
        (And.intro E.climateJusticeClosed E.carbonBudgetClosed)))

end EthicsEnvironmentalEthicsCanonicalLaneLean
end HautevilleHouse