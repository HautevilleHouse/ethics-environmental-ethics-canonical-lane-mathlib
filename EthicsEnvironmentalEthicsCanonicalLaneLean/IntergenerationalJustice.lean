import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EthicsEnvironmentalEthicsCanonicalLaneLean

structure IntergenerationalJusticePackage (A : AdmissibleClass) where
  futureGenerationsConsidered : Prop
  sustainabilityPrinciple : Prop
  intergenerationalClosed : Prop

structure IntergenerationalJusticeEvidence (A : AdmissibleClass) (J : IntergenerationalJusticePackage A) where
  futureGenerationsConsideredClosed : J.futureGenerationsConsidered
  sustainabilityPrincipleClosed : J.sustainabilityPrinciple
  intergenerationalClosed : J.intergenerationalClosed

def IntergenerationalJusticeClosed (A : AdmissibleClass) (J : IntergenerationalJusticePackage A) : Prop :=
  J.intergenerationalClosed

theorem intergenerational_justice_closed_from_evidence (A : AdmissibleClass) (J : IntergenerationalJusticePackage A)
    (E : IntergenerationalJusticeEvidence A J) : IntergenerationalJusticeClosed A J := by
  exact E.intergenerationalClosed

theorem intergenerational_justice_yields_bridge (A : AdmissibleClass) (J : IntergenerationalJusticePackage A)
    (E : IntergenerationalJusticeEvidence A J) : bridgeClosed A := by
  exact A.object.conclusion

theorem intergenerational_justice_yields_gate (A : AdmissibleClass) (J : IntergenerationalJusticePackage A)
    (E : IntergenerationalJusticeEvidence A J) : gateClosed A := by
  exact A.gateWitness

end EthicsEnvironmentalEthicsCanonicalLaneLean
end HautevilleHouse