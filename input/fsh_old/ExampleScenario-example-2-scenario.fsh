Instance: example-2-scenario 
InstanceOf: ExampleScenario
Usage: #example
Description: "This example shows a prescription that is made by VOS and the pharmacist changes the medication for one belonging to another VOS - Cluster but same medication (diffence in the strength)."
Title: "Prescribed medication is changed by another medication from a different VOS-cluster - Different strength"

* status = #draft
* experimental = false
* date = "2019-09-11T00:00:00.000+01:00"
* name = "ChangedmedicationDifferentVOSScenario"
//* publisher = "DZOP"

* actor[+].actorId = "PATIENT"
* actor[=].type = #person
* actor[=].name = "Pia Peters"

* actor[+].actorId = "GP"
* actor[=].type = #person
* actor[=].name = "Dr. Durant"

* actor[+].actorId = "VAULT"
* actor[=].type = #entity
* actor[=].name = "Vault"

* actor[+].actorId = "PHARM"
* actor[=].type = #person
* actor[=].name = "Pharmacist"


* instance[+].resourceId = "2a-prescription"
* instance[=].resourceType = #MedicationRequest
* instance[=].name = "Paracetamol 1000 mg Prescription"

* instance[+].resourceId = "EB"
* instance[=].resourceType = #Bundle
* instance[=].name = "Empty Bundle"

* instance[+].resourceId = "2a-treatmentLine"
* instance[=].resourceType = #MedicationStatement
* instance[=].name = "New Treatment Line"

* instance[+].resourceId = "2a-treatment"
* instance[=].resourceType = #CarePlan
* instance[=].name = "New Treatment"

* instance[+].resourceId = "2a-dispense"
* instance[=].resourceType = #MedicationDispense
* instance[=].name = "paracetamol 500 mg dispense"

* instance[+].resourceId = "2-1-provenance"
* instance[=].resourceType = #Provenance
* instance[=].name = "Link Prescription and treatmentLine"


* instance[+].resourceId = "2-2-provenance"
* instance[=].resourceType = #Provenance
* instance[=].name = "Link Dispense and treatmentLine"

* process[+]
  * title = "Change VOS from prescription on dispense"
  * description = "description"
  * preConditions = "The patient visits their GP and is prescribed paracetamol 1000 mg cp (TID) for headaches. In the pharmacy, the pharmacist understands the the patient has problems swallowing the pill itself, so it trades the 1000 mg strength, for 500 mg and indicates that the patient should take 2x500 mg every 8h and not 1x1000mg every 8 hours."
  * postConditions = "A new treatment and treatmentLine are created, inside the new treatment line, a prescription and dispense are contained and is possible to see which medication is associated with each"

  * step[+]
    * process[+]
      * title = "Initial Contact"
      * step[+]
        * operation.name = "Goes to appointment"
        * operation.number = "1"
        * operation.initiator = "PATIENT"
        * operation.receiver = "GP"
      * step[+]
        * operation.name = "Get Patient's Medication"
        * operation.number = "2"
        * operation.initiator = "VAULT"
        * operation.receiver = "GP"
        * operation.response.resourceId = "EB"
      * step[+]
        * operation.name = "Create new prescription"
        * operation.number = "3"
        * operation.initiator = "GP"
        * operation.receiver = "VAULT"
        * operation.response.resourceId = "2a-prescription"
        

  * step[+]
    * process[+]
      * title = "Treatment resources Creation"
      * step[+]
        * operation.name = "Create new treatment"
        * operation.number = "4"
        * operation.initiator = "VAULT"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "2a-treatment"
      * step[+]
        * operation.name = "Create new treatment Line"
        * operation.number = "5"
        * operation.initiator = "VAULT"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "2a-treatmentLine"
      * step[+]
        * operation.name = "Resource Linking"
        * operation.number = "6"
        * operation.initiator = "VAULT"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "2-1-provenance"

  * step[+]
    * process[+]
      * title = "Dispense"
      * step[+]
        * operation.name = "Get patient's Prescriptions"
        * operation.number = "7"
        * operation.initiator = "VAULT"
        * operation.receiver = "PHARM"
        * operation.request.resourceId = "EB"
      * step[+]
        * operation.name = "Create new dispense"
        * operation.number = "8"
        * operation.initiator = "PHARM"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "2a-dispense"
  * step[+]
    * process[+]
      * title = "Resource Linkage"
      * step[+]
        * operation.name = "Resource Linking"
        * operation.number = "8"
        * operation.initiator = "VAULT"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "2-2-provenance"

