import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EthicsEnvironmentalEthicsCanonicalLaneLean

structure UtilitarianConsequentialismPackage where
  totalUtility : Prop
  averageUtility : Prop
  preferenceSatisfaction : Prop
  hedonicPleasure : Prop
  nonHumanWelfare : Prop

structure UtilitarianConsequentialismEvidence (U : UtilitarianConsequentialismPackage) where
  totalUtilityClosed : U.totalUtility
  averageUtilityClosed : U.averageUtility
  preferenceSatisfactionClosed : U.preferenceSatisfaction
  hedonicPleasureClosed : U.hedonicPleasure
  nonHumanWelfareClosed : U.nonHumanWelfare

def UtilitarianConsequentialismClosed (U : UtilitarianConsequentialismPackage) : Prop :=
  U.totalUtility ∧ U.averageUtility ∧ U.preferenceSatisfaction ∧ U.hedonicPleasure ∧ U.nonHumanWelfare

theorem utilitarian_consequentialism_closed_from_evidence (U : UtilitarianConsequentialismPackage) (E : UtilitarianConsequentialismEvidence U) :
    UtilitarianConsequentialismClosed U := by
  exact And.intro E.totalUtilityClosed
    (And.intro E.averageUtilityClosed
      (And.intro E.preferenceSatisfactionClosed
        (And.intro E.hedonicPleasureClosed E.nonHumanWelfareClosed)))

end EthicsEnvironmentalEthicsCanonicalLaneLean
end HautevilleHouse