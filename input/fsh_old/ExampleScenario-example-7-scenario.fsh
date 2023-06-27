Instance: example-7-scenario 
InstanceOf: ExampleScenario
Usage: #example
Description: "This example shows a prescription that is made by VOS and to take only if needed and the pharmacist dispenses it. 
Then it is reported that the medication was not taken at all."
Title: "Dispense of medication that was prescribed to take if needed, but was not taken"

* status = #draft
* experimental = false
* date = "2019-09-11T00:00:00.000+01:00"
* name = "MedicationNotTaken"
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


* instance[+].resourceId = "7-prescription"
* instance[=].resourceType = #MedicationRequest
* instance[=].name = "Ciprofloxacine prescription"

* instance[+].resourceId = "EB"
* instance[=].resourceType = #Bundle
* instance[=].name = "Empty Bundle"

* instance[+].resourceId = "7-treatmentLine"
* instance[=].resourceType = #MedicationStatement
* instance[=].name = "New Treatment Line based on prescription"

* instance[+].resourceId = "7-treatment"
* instance[=].resourceType = #CarePlan
* instance[=].name = "New Treatment based on prescription"

* instance[+].resourceId = "7-dispense"
* instance[=].resourceType = #MedicationDispense
* instance[=].name = "Ciprofloxacine Dispense"

* instance[+].resourceId = "7-usage"
* instance[=].resourceType = #MedicationStatement
* instance[=].name = "Ciprofloxacine Usage report"

* instance[+].resourceId = "7-1-provenance"
* instance[=].resourceType = #MedicationStatement
* instance[=].name = "Link Prescription and treatmentLine"

* instance[+].resourceId = "7-2-provenance"
* instance[=].resourceType = #MedicationStatement
* instance[=].name = "Link Dispense and treatmentLine"


* instance[+].resourceId = "7-3-provenance"
* instance[=].resourceType = #MedicationStatement
* instance[=].name = "Link Usage and treatmentLine"


* process[+]
  * title = "Dispense of medication that was prescribed to take if needed, but was not taken"
  * description = "description"
  * preConditions = "After a GP visit, the patient Pia Peters is prescribed Ciprofloxacine 500 mg cp since the patient will travel to southeast Asia. The prescription is marked as \"taken if discomfort or diarrhea\". After reaching the pharmacy, Ciproxine is dispensed facing that prescription. After the patient arrives from the travel, she tells the GP that she ended up not taking the medication because she had no problems. "
  * postConditions = "It is possible to capture that the original prescription was and the report of non usage by the patient."
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
        * operation.request.resourceId = "7-prescription"


  * step[+]
    * process[+]
      * title = "Treatment resources Creation"
      * step[+]
        * operation.name = "Create new treatment"
        * operation.number = "4"
        * operation.initiator = "VAULT"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "7-treatment"
      * step[+]

        * operation.name = "Create new treatment Line"
        * operation.number = "5"
        * operation.initiator = "VAULT"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "7-treatmentLine"
      * step[+]
        * operation.name = "Resource Linking"
        * operation.number = "6"
        * operation.initiator = "VAULT"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "7-1-provenance"

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

        * operation.name = "Dispense"
        * operation.number = "8"
        * operation.initiator = "PHARM"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "7-dispense"

  * step[+]
    * process[+]
      * title = "Resource Linking"
      * step[+]
        * operation.name = "Resource Linking"
        * operation.number = "9"
        * operation.initiator = "VAULT"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "7-2-provenance"

  * step[+]
    * process[+]
      * title = "Report"
      * step[+]
        * operation.name = "Usage Report of non-usage"
        * operation.number = "10"
        * operation.initiator = "PATIENT"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "7-usage"

  * step[+]
    * process[+]
      * title = "Resource Linking"
      * step[+]
        * operation.name = "Resource Linking"
        * operation.number = "11"
        * operation.initiator = "VAULT"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "7-3-provenance"