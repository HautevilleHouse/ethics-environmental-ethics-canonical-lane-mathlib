import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EthicsEnvironmentalEthicsCanonicalLaneLean

structure DutiesToNaturePackage (A : AdmissibleClass) where
  intrinsicValueRecognition : Prop
  dutiesToNonHumansDerived : Prop
  dutiesToNatureClosed : Prop

structure DutiesToNatureEvidence (A : AdmissibleClass) (D : DutiesToNaturePackage A) where
  intrinsicValueRecognitionClosed : D.intrinsicValueRecognition
  dutiesToNonHumansDerivedClosed : D.dutiesToNonHumansDerived
  dutiesToNatureClosed : D.dutiesToNatureClosed

def DutiesToNatureClosed (A : AdmissibleClass) (D : DutiesToNaturePackage A) : Prop :=
  D.dutiesToNatureClosed

theorem duties_to_nature_closed_from_evidence (A : AdmissibleClass) (D : DutiesToNaturePackage A)
    (E : DutiesToNatureEvidence A D) : DutiesToNatureClosed A D := by
  exact E.dutiesToNatureClosed

theorem duties_to_nature_yields_bridge (A : AdmissibleClass) (D : DutiesToNaturePackage A)
    (E : DutiesToNatureEvidence A D) : bridgeClosed A := by
  exact A.object.conclusion

theorem duties_to_nature_yields_gate (A : AdmissibleClass) (D : DutiesToNaturePackage A)
    (E : DutiesToNatureEvidence A D) : gateClosed A := by
  exact A.gateWitness

end EthicsEnvironmentalEthicsCanonicalLaneLean
end HautevilleHouse