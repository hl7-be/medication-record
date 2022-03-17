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

* instance[+].resourceId = "13-treatmentLine"
* instance[=].resourceType = #MedicationStatement
* instance[=].name = "New Treatment Line based on prescription"

* instance[+].resourceId = "13-treatment"
* instance[=].resourceType = #CarePlan
* instance[=].name = "New Treatment based on prescription"

* instance[+].resourceId = "13-dispense"
* instance[=].resourceType = #MedicationDispense
* instance[=].name = "Dispense"

* instance[+].resourceId = "13-dispense-2"
* instance[=].resourceType = #MedicationDispense
* instance[=].name = " Dispense 2"

* instance[+].resourceId = "13-dispense-3"
* instance[=].resourceType = #MedicationDispense
* instance[=].name = " Dispense 3"


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
* process[=].step[=].process[=].step[=].operation.request.resourceId = "13-dispense"

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
* process[=].step[=].process[=].step[=].operation.request.resourceId = "13-treatmentLine"




* process[=].step[+].process[+].title = "Second Dispense"
* process[=].step[=].process[=].step[+].operation.name = "Dispense another product"
* process[=].step[=].process[=].step[=].operation.number = "6"
* process[=].step[=].process[=].step[=].operation.initiator = "PHARM"
* process[=].step[=].process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].process[=].step[=].operation.request.resourceId = "13-2-dispense"

* process[=].step[+].process[+].title = "New Treatment resources Creation"
* process[=].step[=].process[=].step[+].operation.name = "Create new treatment"
* process[=].step[=].process[=].step[=].operation.number = "7"
* process[=].step[=].process[=].step[=].operation.initiator = "VAULT"
* process[=].step[=].process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].process[=].step[=].operation.request.resourceId = "13-treatment"

* process[=].step[=].process[=].step[+].operation.name = "Create new treatment Line"
* process[=].step[=].process[=].step[=].operation.number = "8"
* process[=].step[=].process[=].step[=].operation.initiator = "VAULT"
* process[=].step[=].process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].process[=].step[=].operation.request.resourceId = "13-treatmentLine"


* process[=].step[+].process[+].title = "Third Dispense"
* process[=].step[=].process[=].step[+].operation.name = "Dispense another product"
* process[=].step[=].process[=].step[=].operation.number = "9"
* process[=].step[=].process[=].step[=].operation.initiator = "PHARM"
* process[=].step[=].process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].process[=].step[=].operation.request.resourceId = "13-3-dispense"

* process[=].step[+].process[+].title = "Treatment resources Creation"
* process[=].step[=].process[=].step[+].operation.name = "Create new treatment"
* process[=].step[=].process[=].step[=].operation.number = "10"
* process[=].step[=].process[=].step[=].operation.initiator = "VAULT"
* process[=].step[=].process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].process[=].step[=].operation.request.resourceId = "13-treatment"

* process[=].step[=].process[=].step[+].operation.name = "Create new treatment Line"
* process[=].step[=].process[=].step[=].operation.number = "11"
* process[=].step[=].process[=].step[=].operation.initiator = "VAULT"
* process[=].step[=].process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].process[=].step[=].operation.request.resourceId = "13-treatmentLine"