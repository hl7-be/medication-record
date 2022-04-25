Instance: 3-prescription 
InstanceOf: MedRecordOrder
Usage: #example
Description: "This example shows a dispense of a medication that is made before an existing prescription"
Title: "Dispense medication before the prescription of the general practitioner"


* identifier[0].system = "http://prescription-identifiers.com"
* identifier[0].value = "69eb6358-6eb6-40e4-972f-33d22c3392c5"

* status = #active
* intent = #order

* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* subject.identifier.value = "64110219106"

* medicationCodeableConcept = https://vos-identifier.be/vos_product_codes#9050  "diclofenac oral 50 mg"


* authoredOn = "2021-07-19T09:00:00+02:00"

* requester.identifier.value = "7c121778-5b2b-442d-9314-0a73995ab3dd"
* requester.identifier.system = "http://physician-identifiers.com"
* requester.display = "GP"

* encounter.identifier.value = "0cf5dc52-28dc-43ce-96d2-3a757526c739"
* encounter.identifier.system = "http://encounter-identifiers.com"

* extension[treatmentPlan].valueReference.identifier.value = "0d462dac-513a-4fb0-a2fe-fb7f53b27c5d"
* extension[treatmentPlan].valueReference.identifier.system = "http://treatment-identifiers.com"

Instance: 3-dispense 
InstanceOf: MedRecordDispense
Usage: #example
Description: "This example shows a dispense of a medication that is made before an existing prescription"
Title: "Dispense medication before the prescription of the general practitioner"

* identifier[0].system = "http://dispense-identifiers.com"
* identifier[0].value = "f219aa4e-5d10-4f3d-840d-a15e0dff2957"

* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* subject.identifier.value = "64110219106"
* status = #completed

* medicationCodeableConcept = https://cnk.apb.be/codings/cnk_product_codes#0817940  "Voltaren compr. gastro-résist. 50x 50mg"

* whenHandedOver = "2021-07-19T13:00:00+02:00"

* quantity.value = 1
* quantity.unit = "Box"
* quantity.system =  "http://standardterms.edqm.eu/PAC"
* quantity.code = #30009000

* authorizingPrescription.identifier.system = "http://prescription-identifiers.com"
* authorizingPrescription.identifier.value = "69eb6358-6eb6-40e4-972f-33d22c3392c5"

* performer[+].actor.identifier.value = "7c3aa173-3185-4001-a661-df36a7492798"
* performer[=].actor.identifier.system = "http://dispenser-identifiers.com"
* performer[=].actor.display = "Pharmacist"
* performer[=].function.coding = #dispenser

* performer[+].actor.identifier.value = "5b2e9903-fba7-4ed3-aa76-52d386012ca0"
* performer[=].actor.identifier.system = "http://dispenser-identifiers.com"
* performer[=].actor.display = "Pharmacy X"
* performer[=].function.coding = #dispensingOrg

* extension[treatmentPlan].valueReference.identifier.value = "0d462dac-513a-4fb0-a2fe-fb7f53b27c5d"
* extension[treatmentPlan].valueReference.identifier.system = "http://treatment-identifiers.com"




Instance: 3-2-dispense 
InstanceOf: MedRecordDispense
Usage: #example
Description: "This example shows a dispense of a medication that is made before an existing prescription"
Title: "Dispense medication before the prescription of the general practitioner"

* identifier[0].system = "http://dispense-identifiers.com"
* identifier[0].value = "d9f6319f-5d90-44e6-bf6d-837a0065ada7"

* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* subject.identifier.value = "64110219106"
* status = #completed

* medicationCodeableConcept = https://cnk.apb.be/codings/cnk_product_codes#2807014  "Pantogastrix compr. gastro-résist. 14x 20mg"

* whenHandedOver = "2021-07-19T13:00:00+02:00"

* quantity.value = 1
* quantity.unit = "Box"
* quantity.system =  "http://standardterms.edqm.eu/PAC"
* quantity.code = #30009000


* performer[+].actor.identifier.value = "7c3aa173-3185-4001-a661-df36a7492798"
* performer[=].actor.identifier.system = "http://dispenser-identifiers.com"
* performer[=].actor.display = "Pharmacist"
* performer[=].function.coding = #dispenser

* performer[+].actor.identifier.value = "5b2e9903-fba7-4ed3-aa76-52d386012ca0"
* performer[=].actor.identifier.system = "http://dispenser-identifiers.com"
* performer[=].actor.display = "Pharmacy X"
* performer[=].function.coding = #dispensingOrg

* extension[treatmentPlan].valueReference.identifier.value = "0d462dac-513a-4fb0-a2fe-fb7f53b27c5d"
* extension[treatmentPlan].valueReference.identifier.system = "http://treatment-identifiers.com"
//new treatmentLine?



Instance: 3-2-prescription 
InstanceOf: MedRecordOrder
Usage: #example
Description: "This example shows a dispense of a medication that is made before an existing prescription"
Title: "Dispense medication before the prescription of the general practitioner"


* identifier[0].system = "http://prescription-identifiers.com"
* identifier[0].value = "69eb6358-6eb6-40e4-972f-33d22c3392c5"

* status = #active
* intent = #order

* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* subject.identifier.value = "64110219106"

* medicationCodeableConcept = https://vos-identifier.be/vos_product_codes#24646  "pantoprazole oral 20 mg"


* authoredOn = "2021-07-19T09:00:00+02:00"

* requester.identifier.value = "7c121778-5b2b-442d-9314-0a73995ab3dd"
* requester.identifier.system = "http://physician-identifiers.com"
* requester.display = "GP"

* encounter.identifier.value = "0cf5dc52-28dc-43ce-96d2-3a757526c739"
* encounter.identifier.system = "http://encounter-identifiers.com"

* extension[treatmentPlan].valueReference.identifier.value = "0d462dac-513a-4fb0-a2fe-fb7f53b27c5d"
* extension[treatmentPlan].valueReference.identifier.system = "http://treatment-identifiers.com"


Instance: 3-treatmentLine 
InstanceOf: MedRecordTreatmentLine
Usage: #example
Description: ""
Title:    ""

* identifier[0].system = "http://treatmentLines-identifiers.com"
* identifier[0].value = "581998d0-8630-4ec0-8233-1cf5807fca41"

* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* subject.identifier.value = "64110219106"

* medicationCodeableConcept = https://vos-identifier.be/vos_product_codes#9050  "diclofenac oral 50 mg"

* status = #active

* extension[treatmentPlan].valueReference.identifier.value = "0d462dac-513a-4fb0-a2fe-fb7f53b27c5d"
* extension[treatmentPlan].valueReference.identifier.system = "http://treatment-identifiers.com"


Instance: 3-treatment 
InstanceOf: MedRecordTreatment
Usage: #example
Description: ""
Title:    ""

* identifier[0].system = "http://treatments-identifiers.com"
* identifier[0].value = "0d462dac-513a-4fb0-a2fe-fb7f53b27c5d"

* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* subject.identifier.value = "64110219106"

* created = "2021-07-19T13:00:00+02:00"

* status = #active 
* intent = #plan
* title = "Treatment for Arthritis"
* addresses = Reference(arthritis-condition)


Instance: 3-1-provenance 
InstanceOf: Provenance
Usage: #example
Description: "Provenance linking treatment line and prescription"
Title:    "Example 3 - Provenance 1"


* target = Reference(3-prescription)

* recorded = "2021-07-19T13:00:00+02:00"

* agent.who.identifier.value = "7c121778-5b2b-442d-9314-0a73995ab3dd"
* agent.who.identifier.system = "http://physician-identifiers.com"
* agent.role = #PRIMAUTH

* entity[0].what = Reference(3-treatmentLine)
* entity[0].role = #source

Instance: 3-2-provenance 
InstanceOf: Provenance
Usage: #example
Description: "Provenance linking treatment line and first dispense"
Title:    "Example 3 - Provenance 2"


* target = Reference(3-dispense)

* recorded = "2021-07-19T13:00:00+02:00"

* agent.who.identifier.value = "7c121778-5b2b-442d-9314-0a73995ab3dd"
* agent.who.identifier.system = "http://physician-identifiers.com"
* agent.role = #PRIMAUTH

* entity[0].what = Reference(3-treatmentLine)
* entity[0].role = #source

Instance: 3-3-provenance 
InstanceOf: Provenance
Usage: #example
Description: "Provenance linking treatment line and second dispense"
Title:    "Example 3 - Provenance 3"


* target = Reference(3-2-dispense)

* recorded = "2021-07-19T13:00:00+02:00"

* agent.who.identifier.value = "7c121778-5b2b-442d-9314-0a73995ab3dd"
* agent.who.identifier.system = "http://physician-identifiers.com"
* agent.role = #PRIMAUTH

* entity[0].what = Reference(3-treatmentLine)
* entity[0].role = #source

Instance: 3-4-provenance 
InstanceOf: Provenance
Usage: #example
Description: "Provenance linking treatment line and second prescription"
Title:    "Example 3 - Provenance 4"


* target = Reference(3-2-prescription)

* recorded = "2021-07-19T13:00:00+02:00"

* agent.who.identifier.value = "7c121778-5b2b-442d-9314-0a73995ab3dd"
* agent.who.identifier.system = "http://physician-identifiers.com"
* agent.role = #PRIMAUTH

* entity[0].what = Reference(3-treatmentLine)
* entity[0].role = #source