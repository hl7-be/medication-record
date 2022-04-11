Instance: example-4-scenario 
InstanceOf: ExampleScenario
Usage: #example
Description: "This example shows a dispense of two products. One that has a prescription and other that does not (and does not need one)."
Title: "Dispense of prescribed medication, and dispense of a product that can be done without a prescription"

* status = #draft
* experimental = false
* date = "2019-09-11T00:00:00.000+01:00"
* name = "DispensePrescriptionAndIsolatedDispense"
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


* instance[+].resourceId = "4-1-dispense"
* instance[=].resourceType = #MedicationDispense
* instance[=].name = "Rosuvastatin Dispense"

* instance[+].resourceId = "4-1-prescription"
* instance[=].resourceType = #MedicationRequest
* instance[=].name = "Rosuvastatin prescription"

* instance[+].resourceId = "4-2-dispense"
* instance[=].resourceType = #MedicationDispense
* instance[=].name = "Dafalgan dispense (non-prescription)"

* instance[+].resourceId = "EB"
* instance[=].resourceType = #Bundle
* instance[=].name = "Empty Bundle"

* instance[+].resourceId = "4-1-treatmentLine"
* instance[=].resourceType = #MedicationStatement
* instance[=].name = "New Treatment Line based on prescription"

* instance[+].resourceId = "4-1-treatment"
* instance[=].resourceType = #CarePlan
* instance[=].name = "New Treatment based on prescription"

* instance[+].resourceId = "4-2-treatmentLine"
* instance[=].resourceType = #MedicationStatement
* instance[=].name = "New Treatment Line based on dispense"

* instance[+].resourceId = "4-2-treatment"
* instance[=].resourceType = #CarePlan
* instance[=].name = "New Treatment based on dispense"

* instance[+].resourceId = "4-1-provenance"
* instance[=].resourceType = #Provenance
* instance[=].name = "Link Prescription and treatmentLine"

* instance[+].resourceId = "4-2-provenance"
* instance[=].resourceType = #Provenance
* instance[=].name = "Link Dispense and treatmentLine"

* instance[+].resourceId = "4-3-provenance"
* instance[=].resourceType = #Provenance
* instance[=].name = "Link second Dispense and treatmentLine"




* process[+].
  * title = "Dispense of prescribed medication, and dispense of a product that can be done without a prescription"
  * description = "description"
  * preConditions = "The patient visits their GP and is prescribed Rosuvastatin 10 mg cp for cholesterol. After reaching the pharmacy, Crestor 10 is dispensed facing that prescription. Additionally, Dafalgan compr. 20x 500mg (OTC) is also dispensed due to a complaint of a minor toothache."
  * postConditions = "This should result in two treatment lines. One with prescription and dispense and one with only dispense."

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
        * operation.request.resourceId = "4-1-prescription"
  * step[+]
    * process[+]
      * title = "Treatment resources Creation"
      * step[+]
        * operation.name = "Create new treatment"
        * operation.number = "4"
        * operation.initiator = "VAULT"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "4-1-treatment"
      
      * step[+]
        * operation.name = "Create new treatment Line"
        * operation.number = "5"
        * operation.initiator = "VAULT"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "4-1-treatmentLine"

      * step[+]
        * operation.name = "Resource Linking"
        * operation.number = "6"
        * operation.initiator = "VAULT"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "4-1-provenance"
  * step[+]
    * process[+]
      * title = "Dispense"
      * step[+]
        * operation.name = "Get patient's Prescriptions"
        * operation.number = "6"
        * operation.initiator = "VAULT"
        * operation.receiver = "PHARM"
        * operation.response.resourceId = "EB"
      * step[+]
        * operation.name = "Dispense new product"
        * operation.number = "7"
        * operation.initiator = "PHARM"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "4-1-dispense"
  * step[+]
    * process[+]
      * title = "Resource Linking"
      * step[+]
        * operation.name = "Resource Linking"
        * operation.number = "8"
        * operation.initiator = "VAULT"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "4-2-provenance"

  * step[+]
    * process[+]
      * title = "Second dispense"
      * step[+]
        * operation.name = "Additional dispense"
        * operation.number = "9"
        * operation.initiator = "PHARM"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "4-2-dispense"

  * step[+]
    * process[+]
      * title = "New Treatment resources Creation"
      * step[+]
        * operation.name = "Additional treatment Creation"
        * operation.number = "10"
        * operation.initiator = "VAULT"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "4-2-treatment"
      * step[+]
        * operation.name = "Additional Treatment Line Creation"
        * operation.number = "11"
        * operation.initiator = "VAULT"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "4-2-treatmentLine"
      * step[+]
        * operation.name = "Resource Linking"
        * operation.number = "12"
        * operation.initiator = "VAULT"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "4-3-provenance"