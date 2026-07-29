import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EthicsEnvironmentalEthicsCanonicalLaneLean

structure AnimalEthicsPackage where
  sentientRights : Prop
  speciesismCritique : Prop
  animalLiberation : Prop
  welfareHolism : Prop
  biocentrism : Prop

structure AnimalEthicsEvidence (A : AnimalEthicsPackage) where
  sentientRightsClosed : A.sentientRights
  speciesismCritiqueClosed : A.speciesismCritique
  animalLiberationClosed : A.animalLiberation
  welfareHolismClosed : A.welfareHolism
  biocentrismClosed : A.biocentrism

def AnimalEthicsClosed (A : AnimalEthicsPackage) : Prop :=
  A.sentientRights ∧ A.speciesismCritique ∧ A.animalLiberation ∧ A.welfareHolism ∧ A.biocentrism

theorem animal_ethics_closed_from_evidence (A : AnimalEthicsPackage) (E : AnimalEthicsEvidence A) :
    AnimalEthicsClosed A := by
  exact And.intro E.sentientRightsClosed
    (And.intro E.speciesismCritiqueClosed
      (And.intro E.animalLiberationClosed
        (And.intro E.welfareHolismClosed E.biocentrismClosed)))

end EthicsEnvironmentalEthicsCanonicalLaneLean
end HautevilleHouse