Instance: example-5-scenario 
InstanceOf: ExampleScenario
Usage: #example
Description: "This example shows a prescription that is made by brand name and the pharmacist changes the brand name for another brand name in the same VOS - Cluster because there is no stock."
Title: "Dispense of new brand medication that is given because the old is unavailable, so giving to continue the treatment and not to replace it"

* status = #draft
* experimental = false
* date = "2019-09-11T00:00:00.000+01:00"
* name = "DispenseNewBrandOldUnavailable"
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


* instance[+].resourceId = "5-dispense"
* instance[=].resourceType = #MedicationDispense
* instance[=].name = "Paracetabs Dispense"


* instance[+].resourceId = "5-prescription"
* instance[=].resourceType = #MedicationRequest
* instance[=].name = "dafalgan prescription"

* instance[+].resourceId = "EB"
* instance[=].resourceType = #Bundle
* instance[=].name = "Empty Bundle"

* instance[+].resourceId = "5-treatmentLine"
* instance[=].resourceType = #MedicationStatement
* instance[=].name = "New Treatment Line based on prescription"

* instance[+].resourceId = "5-treatment"
* instance[=].resourceType = #CarePlan
* instance[=].name = "New Treatment based on prescription"


* instance[+].resourceId = "5-provenance"
* instance[=].resourceType = #Provenance
* instance[=].name = "Link Prescription and treatmentLine"

* instance[+].resourceId = "5-2-provenance"
* instance[=].resourceType = #Provenance
* instance[=].name = "Link Dispense and treatmentLine"


* process[+]
  * title = "Change brand from prescription on dispense because of out of stock"
  * description = "description"
  * preConditions = "The patient visits their GP and is prescribed dafalgan Forte 1000 mg cp (TID) for headaches. When reaching the pharmacy for dispense, the pharmacy does not have dafalgan Forte now but dispenses Paracetabs Forte 1000 mg instead."
  * postConditions = "It is possible to capture that the original prescription was dafalgan but the dispense was Paracetabs"
  * step[+]
    * process[+]
      * title = "Initial contact"
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
        * operation.request.resourceId = "5-prescription"
  * step[+]
    * process[+]
      * title = "Treatment resources Creation"
      * step[+]
        * operation.name = "Create new treatment"
        * operation.number = "4"
        * operation.initiator = "VAULT"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "5-treatment"
      * step[+]
        * operation.name = "Create new treatment Line"
        * operation.number = "5"
        * operation.initiator = "VAULT"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "5-treatmentLine"
              
      * step[+]
        * operation.name = "Resource Linking"
        * operation.number = "6"
        * operation.initiator = "VAULT"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "5-provenance"

  * step[+]
    * process[+]
      * title = "Dispense"
      * step[+]
        * operation.name = "Get patient's Prescriptions"
        * operation.number = "7"
        * operation.initiator = "VAULT"
        * operation.receiver = "PHARM"
        * operation.response.resourceId = "EB"
      * step[+]
        * operation.name = "Dispense new product"
        * operation.number = "8"
        * operation.initiator = "PHARM"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "5-dispense"

  * step[+]
    * process[+]
      * title = "Resource Linkage"
      * step[+]
        * operation.name = "Resource Linking"
        * operation.number = "8"
        * operation.initiator = "VAULT"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "5-2-provenance"

