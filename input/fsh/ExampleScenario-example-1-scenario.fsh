Instance: example-1-scenario 
InstanceOf: ExampleScenario
Usage: #example
Description: "This example shows a prescription that is made by brand name and the pharmacist changes the brand name for another brand name in the same VOS - Cluster."
Title: "Dispense Example - Prescribed branded medication is changed by another branded medication from the same VOS-cluster"

* status = #draft
* experimental = false
* date = "2019-09-11T00:00:00.000+01:00"
* name = "ChangedmedicationSameVOSScenario"
//* publisher = "DZOP"

* useContext
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

* actor[+].actorId = "GP2"
* actor[=].type = #person
* actor[=].name = "Dr. Omar"


* instance[+].resourceId = "1-prescription"
* instance[=].resourceType = #MedicationRequest
* instance[=].name = "Amlor Prescription"

* instance[+].resourceId = "EB"
* instance[=].resourceType = #Bundle
* instance[=].name = "Empty Bundle"

* instance[+].resourceId = "1-treatmentLine"
* instance[=].resourceType = #MedicationStatement
* instance[=].name = "New Treatment Line"

* instance[+].resourceId = "1-treatment"
* instance[=].resourceType = #CarePlan
* instance[=].name = "New Treatment"

* instance[+].resourceId = "1-dispense"
* instance[=].resourceType = #MedicationDispense
* instance[=].name = "Amlodipin Sandoz dispense"

* instance[+].resourceId = "1-1-provenance"
* instance[=].resourceType = #Provenance
* instance[=].name = "Link Prescription and treatmentLine"

* instance[+].resourceId = "1-2-provenance"
* instance[=].resourceType = #Provenance
* instance[=].name = "Link Dispense and treatmentLine"

* instance[+].resourceId = "1-summary-view"
* instance[=].resourceType = #Composition
* instance[=].name = "Summary view for a Physician"


* instance[+].resourceId = "1-scheduled-view"
* instance[=].resourceType = #Composition
* instance[=].name = "Scheduled Administrations view for a Patient"


* process[+]
  * title = "Change Branded Prescription"
  * description = "A different product than the one prescribed does not link a dispense to the same treatment line."
  * preConditions = "The patient visits their GP and is prescribed Amlor for hypertension. The GP prescribes Amlor, but at the pharmacy there is no Amlor and amlodipin Sandoz is dispensed."
  * postConditions = "When the prescription is made, a new treatment and treatment line are created. For linking the prescription to them, a provenance is created. It enables to see which prescriptions and dispenses are associated to each treatment."

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
        * operation.request.resourceId = "1-prescription"
  * step[+]
    * process[+]
      * title = "Treatment resources Creation"
      * step[+]
        * operation.name = "Create new treatment"
        * operation.number = "4"
        * operation.initiator = "VAULT"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "1-treatment"
      * step[+]
        * operation.name = "Create new treatment Line"
        * operation.number = "5"
        * operation.initiator = "VAULT"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "1-treatmentLine"
      * step[+]
        * operation.name = "Resource Linking"
        * operation.number = "6"
        * operation.initiator = "VAULT"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "1-1-provenance"
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
        * operation.request.resourceId = "1-dispense"
  * step[+]
    * process[+]
      * title = "Resource Linkage"
      * step[+]
        * operation.name = "Resource Linking"
        * operation.number = "8"
        * operation.initiator = "VAULT"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "1-2-provenance"
  * step[+]
    * process[+]
      * title = "Vizualization Data for physician"
      * step[+]
        * operation.name = "Requiring Visualization"
        * operation.number = "9"
        * operation.initiator = "GP2"
        * operation.receiver = "VAULT"
      * step[+]
        * operation.name = "Creating Visualization"
        * operation.number = "10"
        * operation.initiator = "VAULT"
        * operation.receiver = "VAULT"
      * step[+]
        * operation.name = "Displaying Visualization"
        * operation.number = "11"
        * operation.initiator = "VAULT"
        * operation.receiver = "GP2"
        * operation.request.resourceId = "1-summary-view"

  * step[+]
    * process[+]
      * title = "Vizualization Data for patient (scheduled Administrations)"
      * step[+]
        * operation.name = "Requiring Visualization"
        * operation.number = "12"
        * operation.initiator = "PATIENT"
        * operation.receiver = "VAULT"
      * step[+]
        * operation.name = "Creating Visualization"
        * operation.number = "13"
        * operation.initiator = "VAULT"
        * operation.receiver = "VAULT"
      * step[+]
        * operation.name = "Displaying Visualization"
        * operation.number = "14"
        * operation.initiator = "VAULT"
        * operation.receiver = "PATIENT"
        * operation.request.resourceId = "1-scheduled-view"
