Instance: example-3-scenario 
InstanceOf: ExampleScenario
Usage: #example
Description: "This example shows a dispense of a medication that is made before an existing prescription."
Title: "Dispense medication before the prescription is available"

* status = #draft
* experimental = false
* date = "2019-09-11T00:00:00.000+01:00"
* name = "DispenseBeforePrescription"
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


* instance[+].resourceId = "3-dispense"
* instance[=].resourceType = #MedicationDispense
* instance[=].name = "Diclofenac Dispense "

* instance[+].resourceId = "EB"
* instance[=].resourceType = #Bundle
* instance[=].name = "Empty Bundle"

* instance[+].resourceId = "3-treatmentLine"
* instance[=].resourceType = #MedicationStatement
* instance[=].name = "New Treatment Line"

* instance[+].resourceId = "3-treatment"
* instance[=].resourceType = #CarePlan
* instance[=].name = "New Treatment"

* instance[+].resourceId = "3-prescription"
* instance[=].resourceType = #MedicationRequest
* instance[=].name = "Diclofenac Prescription"

* instance[+].resourceId = "3-2-dispense"
* instance[=].resourceType = #MedicationDispense
* instance[=].name = "Pantoprazole Dispense [ancilliary product]"

* instance[+].resourceId = "3-2-prescription"
* instance[=].resourceType = #MedicationRequest
* instance[=].name = "Pantoprazole Prescription"

* instance[+].resourceId = "3-1-provenance"
* instance[=].resourceType = #Provenance
* instance[=].name = "Link first Prescription and treatmentLine"

* instance[+].resourceId = "3-2-provenance"
* instance[=].resourceType = #Provenance
* instance[=].name = "Link first dispense and treatmentLine"

* instance[+].resourceId = "3-3-provenance"
* instance[=].resourceType = #Provenance
* instance[=].name = "Link second dispense and treatmentLine"


* instance[+].resourceId = "3-4-provenance"
* instance[=].resourceType = #Provenance
* instance[=].name = "Link second Prescription and treatmentLine"


* process[+]
  * title = "Dispense of medication before a existing prescription"
  * description = "description"
  * preConditions = "After a GP visit, the patient Pia Peters (75 years) is prescribed diclofenac for arthritis. While making the dispense, the pharmacist understands that the patient has a history of stomachal ulcers. Since diclofenac creates stomachal irritations, the pharmacy also dispenses a stomach protector to prevent any case of stomach irritation or bleeding and advises to tell the information to the GP."
  * postConditions = "A new treatment and treatmentLine are created, inside the new treatment line, a prescription and dispense are contained and is possible to see which medication is associated with each."

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
        * operation.request.resourceId = "3-prescription"

  * step[+]
    * process[+]
      * title = "Treatment resources Creation"
      * step[+]
        * operation.name = "Create new treatment"
        * operation.number = "4"
        * operation.initiator = "VAULT"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "3-treatment"
      * step[+]
        * operation.name = "Create new treatment Line"
        * operation.number = "5"
        * operation.initiator = "VAULT"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "3-treatmentLine"
      * step[+]
        * operation.name = "Resource Linking"
        * operation.number = "6"
        * operation.initiator = "VAULT"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "3-1-provenance"

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
        * operation.name = "Dispense original dispense"
        * operation.number = "8"
        * operation.initiator = "PHARM"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "3-dispense"
      * step[+]
        * operation.name = "Dispense ancilliary product"
        * operation.number = "9"
        * operation.initiator = "PHARM"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "3-2-dispense"

  * step[+]
    * process[+]
      * title = "Treatment Line Creation and resource Linking"
      * step[+]
        * operation.name = "New Treatment Line for anciiliary product"
        * operation.number = "10"
        * operation.initiator = "VAULT"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "3-treatmentLine"
      * step[+]
        * operation.name = "Resource Linking"
        * operation.number = "11"
        * operation.initiator = "VAULT"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "3-2-provenance"
      * step[+]
        * operation.name = "Resource Linking"
        * operation.number = "12"
        * operation.initiator = "VAULT"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "3-3-provenance"
  * step[+]
    * process[+]
      * title = "Reporting and new dispense"
      * step[+]
        * operation.name = "Notification of a dispense"
        * operation.number = "13"
        * operation.initiator = "PHARM"
        * operation.receiver = "GP"
      * step[+]
        * operation.name = "Goes to new appointment"
        * operation.number = "14"
        * operation.initiator = "PATIENT"
        * operation.receiver = "GP"

        * operation.name = "Get Patient's Medication"
        * operation.number = "15"
        * operation.initiator = "GP"
        * operation.receiver = "VAULT"
        * operation.response.resourceId = "EB"

        * operation.name = "Create new prescription"
        * operation.number = "16"
        * operation.initiator = "GP"
        * operation.receiver = "VAULT"
        * operation.response.resourceId = "3-2-prescription"

  * step[+]
    * process[+]
      * title = "Linking"
      * step[+]
        * operation.name = "Resource Linking"
        * operation.number = "17"
        * operation.initiator = "VAULT"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "3-4-provenance"

