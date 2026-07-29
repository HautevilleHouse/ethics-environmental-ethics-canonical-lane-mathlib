import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EthicsEnvironmentalEthicsCanonicalLaneLean

structure DeontologicalConstraintsPackage where
  rightsBasedConstraints : Prop
  dutiesToNature : Prop
  categoricalImperative : Prop
  intrinsicValueRespect : Prop
  ruleConsequentialism : Prop

structure DeontologicalConstraintsEvidence (D : DeontologicalConstraintsPackage) where
  rightsBasedConstraintsClosed : D.rightsBasedConstraints
  dutiesToNatureClosed : D.dutiesToNature
  categoricalImperativeClosed : D.categoricalImperative
  intrinsicValueRespectClosed : D.intrinsicValueRespect
  ruleConsequentialismClosed : D.ruleConsequentialism

def DeontologicalConstraintsClosed (D : DeontologicalConstraintsPackage) : Prop :=
  D.rightsBasedConstraints ∧ D.dutiesToNature ∧ D.categoricalImperative ∧ D.intrinsicValueRespect ∧ D.ruleConsequentialism

theorem deontological_constraints_closed_from_evidence (D : DeontologicalConstraintsPackage) (E : DeontologicalConstraintsEvidence D) :
    DeontologicalConstraintsClosed D := by
  exact And.intro E.rightsBasedConstraintsClosed
    (And.intro E.dutiesToNatureClosed
      (And.intro E.categoricalImperativeClosed
        (And.intro E.intrinsicValueRespectClosed E.ruleConsequentialismClosed)))

end EthicsEnvironmentalEthicsCanonicalLaneLean
end HautevilleHouse