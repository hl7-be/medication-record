Instance: example-13-scenario 
InstanceOf: ExampleScenario
Usage: #example
Description: "This example shows several dispense of several OTC drugs for the same problem"
Title: "Dispense of OTC medication on the community pharmacy"

* status = #draft
* experimental = false
* date = "2019-09-11T00:00:00.000+01:00"
* name = "MedicationOTC"
//* publisher = "DZOP"

* actor[+].actorId = "PATIENT"
* actor[=].type = #person
* actor[=].name = "Pia Peters"

* actor[+].actorId = "PHARM"
* actor[=].type = #person
* actor[=].name = "Pharmacist"

* actor[+].actorId = "VAULT"
* actor[=].type = #entity
* actor[=].name = "Vault"

* instance[+].resourceId = "EB"
* instance[=].resourceType = #Bundle
* instance[=].name = "Empty Bundle"



* instance[+].resourceId = "13-1-treatmentLine"
* instance[=].resourceType = #MedicationStatement
* instance[=].name = "New Treatment Line based on ibuprofen dispense"

* instance[+].resourceId = "13-treatment"
* instance[=].resourceType = #CarePlan
* instance[=].name = "New Treatment based on ibuprofen dispense"

* instance[+].resourceId = "13-1-provenance"
* instance[=].resourceType = #CarePlan
* instance[=].name = "Link first ibuprofen dispense and treatmentLine"

* instance[+].resourceId = "13-2-treatmentLine"
* instance[=].resourceType = #MedicationStatement
* instance[=].name = "New Treatment Line based on paracetamol dispense"

* instance[+].resourceId = "13-2-provenance"
* instance[=].resourceType = #CarePlan
* instance[=].name = "Link paracetamol dispense and treatmentLine"


* instance[+].resourceId = "13-3-provenance"
* instance[=].resourceType = #CarePlan
* instance[=].name = "Link second ibuprofen dispense and treatmentLine"


* instance[+].resourceId = "13-1-dispense"
* instance[=].resourceType = #MedicationDispense
* instance[=].name = "ibruprofen Dispense"

* instance[+].resourceId = "13-2-dispense"
* instance[=].resourceType = #MedicationDispense
* instance[=].name = "parecetamol Dispense"

* instance[+].resourceId = "13-3-dispense"
* instance[=].resourceType = #MedicationDispense
* instance[=].name = "ibruprofen Dispense"


* process[+].title = "Dispense of OTC medication on the community pharmacy"
* process[=].description = "description"
* process[=].preConditions = "The patient Pia Peters goes to the pharmacy with a complaint of headache. The pharmacist, dispenses ibruprofen 200 mg. After a few months, another minor headache appears and the patient repeats the procedure, receveing this time parecetamol 500 mg. The following year, the same situation repeats, receiving this time another ibuprofen."
* process[=].postConditions = "How the treatments and treatment line behave with OTC dispenses without prescription and for the same condition"



* process[=].step[+].process[+].title = "Initial Contact"

* process[=].step[=].process[=].step[+].operation.name = "Goes to Pharmacy"
* process[=].step[=].process[=].step[=].operation.number = "1"
* process[=].step[=].process[=].step[=].operation.initiator = "PATIENT"
* process[=].step[=].process[=].step[=].operation.receiver = "PHARM"

* process[=].step[=].process[=].step[+].operation.name = "Get Patient's Medication"
* process[=].step[=].process[=].step[=].operation.number = "2"
* process[=].step[=].process[=].step[=].operation.initiator = "VAULT"
* process[=].step[=].process[=].step[=].operation.receiver = "PHARM"
* process[=].step[=].process[=].step[=].operation.response.resourceId = "EB"


* process[=].step[+].process[+].title = "First Dispense"
* process[=].step[=].process[=].step[+].operation.name = "Dispense a product"
* process[=].step[=].process[=].step[=].operation.number = "3"
* process[=].step[=].process[=].step[=].operation.initiator = "PHARM"
* process[=].step[=].process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].process[=].step[=].operation.request.resourceId = "13-1-dispense"

* process[=].step[+].process[+].title = "Treatment resources Creation"
* process[=].step[=].process[=].step[+].operation.name = "Create new treatment"
* process[=].step[=].process[=].step[=].operation.number = "4"
* process[=].step[=].process[=].step[=].operation.initiator = "VAULT"
* process[=].step[=].process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].process[=].step[=].operation.request.resourceId = "13-treatment"

* process[=].step[=].process[=].step[+].operation.name = "Create new treatment Line"
* process[=].step[=].process[=].step[=].operation.number = "5"
* process[=].step[=].process[=].step[=].operation.initiator = "VAULT"
* process[=].step[=].process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].process[=].step[=].operation.request.resourceId = "13-1-treatmentLine"

* process[=].step[=].process[=].step[+].operation.name = "Resource Linking"
* process[=].step[=].process[=].step[=].operation.number = "6"
* process[=].step[=].process[=].step[=].operation.initiator = "VAULT"
* process[=].step[=].process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].process[=].step[=].operation.request.resourceId = "13-1-provenance"


* process[=].step[+].process[+].title = "Second Dispense"
* process[=].step[=].process[=].step[+].operation.name = "Dispense another product"
* process[=].step[=].process[=].step[=].operation.number = "7"
* process[=].step[=].process[=].step[=].operation.initiator = "PHARM"
* process[=].step[=].process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].process[=].step[=].operation.request.resourceId = "13-2-dispense"

* process[=].step[+].process[+].title = "New Resources Creation"
* process[=].step[=].process[=].step[+].operation.name = "Create new treatment Line"
* process[=].step[=].process[=].step[=].operation.number = "8"
* process[=].step[=].process[=].step[=].operation.initiator = "VAULT"
* process[=].step[=].process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].process[=].step[=].operation.request.resourceId = "13-2-treatmentLine"

* process[=].step[=].process[=].step[+].operation.name = "Resource Linking"
* process[=].step[=].process[=].step[=].operation.number = "9"
* process[=].step[=].process[=].step[=].operation.initiator = "VAULT"
* process[=].step[=].process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].process[=].step[=].operation.request.resourceId = "13-2-provenance"


* process[=].step[+].process[+].title = "Third Dispense"
* process[=].step[=].process[=].step[+].operation.name = "Dispense another product"
* process[=].step[=].process[=].step[=].operation.number = "10"
* process[=].step[=].process[=].step[=].operation.initiator = "PHARM"
* process[=].step[=].process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].process[=].step[=].operation.request.resourceId = "13-3-dispense"

* process[=].step[+].process[+].title = "Resource Linkage"
* process[=].step[=].process[=].step[+].operation.name = "Resource Linking"
* process[=].step[=].process[=].step[=].operation.number = "11"
* process[=].step[=].process[=].step[=].operation.initiator = "VAULT"
* process[=].step[=].process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].process[=].step[=].operation.request.resourceId = "13-3-provenance"