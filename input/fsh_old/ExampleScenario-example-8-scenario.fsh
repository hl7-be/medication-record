Instance: example-8-scenario 
InstanceOf: ExampleScenario
Usage: #example
Description: "This example shows a prescription that is made by VOS and the pharmacist dispenses it. But at the time of administration, the treatment is stopped due to a reaction."
Title: "Dispense of medication that was prescribed, but not taken till the end"

* status = #draft
* experimental = false
* date = "2019-09-11T00:00:00.000+01:00"
* name = "MedicationStopped"
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


* instance[+].resourceId = "8-prescription"
* instance[=].resourceType = #MedicationRequest
* instance[=].name = "New prescription"

* instance[+].resourceId = "EB"
* instance[=].resourceType = #Bundle
* instance[=].name = "Empty Bundle"

* instance[+].resourceId = "8-treatmentLine"
* instance[=].resourceType = #MedicationStatement
* instance[=].name = "New Treatment Line based on prescription"

* instance[+].resourceId = "8-treatment"
* instance[=].resourceType = #CarePlan
* instance[=].name = "New Treatment based on prescription"

* instance[+].resourceId = "8-dispense"
* instance[=].resourceType = #MedicationDispense
* instance[=].name = "Dispense"

* instance[+].resourceId = "8-administration"
* instance[=].resourceType = #MedicationAdministration
* instance[=].name = "Drug administration"

* instance[+].resourceId = "8-usage"
* instance[=].resourceType = #MedicationStatement
* instance[=].name = "Report of non taking drug"

* instance[+].resourceId = "8-1-provenance"
* instance[=].resourceType = #MedicationStatement
* instance[=].name = "Link Prescription and treatmentLine"

* instance[+].resourceId = "8-2-provenance"
* instance[=].resourceType = #MedicationStatement
* instance[=].name = "Link Dispense and treatmentLine"

* instance[+].resourceId = "8-3-provenance"
* instance[=].resourceType = #MedicationStatement
* instance[=].name = "Link Adminsitration and treatmentLine"

* instance[+].resourceId = "8-4-provenance"
* instance[=].resourceType = #MedicationStatement
* instance[=].name = "Link Usage and treatmentLine"





* process[+]
  * title = "Dispense of medication that was prescribed, but not taken till the end"
  * description = "description"
  * preConditions = "After a GP visit, the patient Pia Peters is prescribed amoxicillin + clavulanic acid 875 mg + 125 mg for a pharyngitis for the conclusion of the package. The pharmacist, dispensed Amoxiclav Sandoz 875/125.  However, after 1 take, the patient stopped doing the medication because the patient had an alergic reaction.  "
  * postConditions = "A grouping of the prescription, dispense, and administration are coupled together within a treatment line, the new prescription should start a new treatment line under the same treatment."
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
        * operation.request.resourceId = "8-prescription"

  * step[+]
    * process[+]
      * title = "Treatment resources Creation"
      * step[+]
        * operation.name = "Create new treatment"
        * operation.number = "4"
        * operation.initiator = "VAULT"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "8-treatment"
      * step[+]

        * operation.name = "Create new treatment Line"
        * operation.number = "5"
        * operation.initiator = "VAULT"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "8-treatmentLine"
      * step[+]
        * operation.name = "Resource Linking"
        * operation.number = "6"
        * operation.initiator = "VAULT"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "8-1-provenance"

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
        * operation.request.resourceId = "8-dispense"

  * step[+]
    * process[+]
      * title = "Resource Linking"
      * step[+]
        * operation.name = "Resource Linking"
        * operation.number = "9"
        * operation.initiator = "VAULT"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "8-2-provenance"
  * step[+]
    * process[+]
      * title = "Stop Usage"     
      * step[+]
        * operation.name = "Stopping the taking of drug due to an adverse event"
        * operation.number = "10"
        * operation.initiator = "PATIENT"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "8-administration"
      * step[+]
        * operation.name = "Report the stopage of the taking"
        * operation.number = "11"
        * operation.initiator = "PATIENT"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "8-usage"

  * step[+]
    * process[+]
      * title = "Resource Linking"
      * step[+]
        * operation.name = "Resource Linking"
        * operation.number = "12"
        * operation.initiator = "VAULT"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "8-3-provenance"
      * step[+]
        * operation.name = "Resource Linking"
        * operation.number = "13"
        * operation.initiator = "VAULT"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "8-4-provenance"
