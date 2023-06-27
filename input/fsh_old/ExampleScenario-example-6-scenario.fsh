Instance: example-6-scenario 
InstanceOf: ExampleScenario
Usage: #example
Description: "This example shows a prescription that is made by VOS and the pharmacist refuses to dispense the medication due to interaction with previous medication."
Title: "Refuse the dispense prescribed medication"

* status = #draft
* experimental = false
* date = "2019-09-11T00:00:00.000+01:00"
* name = "RefusalOfDispense"
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


* instance[+].resourceId = "6-prescription"
* instance[=].resourceType = #MedicationRequest
* instance[=].name = "ibuprofen prescription"

* instance[+].resourceId = "EB"
* instance[=].resourceType = #Bundle
* instance[=].name = "Empty Bundle"

* instance[+].resourceId = "6-treatmentLine"
* instance[=].resourceType = #MedicationStatement
* instance[=].name = "New Treatment Line based on prescription"

* instance[+].resourceId = "6-treatment"
* instance[=].resourceType = #CarePlan
* instance[=].name = "New Treatment based on prescription"

* instance[+].resourceId = "6-dispense"
* instance[=].resourceType = #MedicationDispense
* instance[=].name = "Refused Dispense"


* instance[+].resourceId = "6-provenance"
* instance[=].resourceType = #Provenance
* instance[=].name = "Link Prescription and treatmentLine"

* instance[+].resourceId = "6-2-provenance"
* instance[=].resourceType = #Provenance
* instance[=].name = "Link refused dispense and treatmentLine"



* process[+]
  * title = "Refuse the dispense prescribed medication"
  * description = "description"
  * preConditions = "The patient visits their GP and is prescribed ibuprofen 400 mg cp (TID) for headaches. The pharmacist, after a conversation with the patient, got to know that he was doing Tritace (ramipril) 10 mg for hypertension.Since the ibuprofen interacts with ramipril, the pharmacist chose to refuse the dispense of the medication."
  * postConditions = "It is possible to capture that the original prescription was and that the dispense was refused"
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
        * operation.request.resourceId = "6-prescription"
  * step[+]
    * process[+]
      * title = "Treatment resources Creation"
      * step[+]
        * operation.name = "Create new treatment"
        * operation.number = "4"
        * operation.initiator = "VAULT"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "6-treatment"
      * step[+]
        * operation.name = "Create new treatment Line"
        * operation.number = "5"
        * operation.initiator = "VAULT"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "6-treatmentLine"
      * step[+]
        * operation.name = "Resource Linking"
        * operation.number = "6"
        * operation.initiator = "VAULT"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "6-provenance"
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
        * operation.name = "Refuse Dispense"
        * operation.number = "7"
        * operation.initiator = "PHARM"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "6-dispense"
  * step[+]
    * process[+]
      * title = "Resource Linking"
      * step[+]
        * operation.name = "Resource Linking"
        * operation.number = "8"
        * operation.initiator = "VAULT"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "6-2-provenance"