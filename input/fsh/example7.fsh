Instance: 7-prescription 
InstanceOf: MedRecordOrder
Usage: #example
Description: "This example shows a prescription that is made by VOS and to take only if needed and the pharmacist dispenses it. 
Then it is reported that the medication was not taken at all."
Title: "Dispense of medication that was prescribed to take if needed, but was not taken"

* identifier[0].system = "http://prescription-identifiers.com"
* identifier[0].value = "69eb6358-6eb6-40e4-972f-33d22c3392c5"

* status = #active
* intent = #order

* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* subject.identifier.value = "64110219106"

* medicationCodeableConcept = https://vos-identifier.be/vos_product_codes#6734  "ciprofloxacine oral 500 mg"

* authoredOn = "2021-07-19T09:00:00+02:00"

* requester.identifier.value = "7c121778-5b2b-442d-9314-0a73995ab3dd"
* requester.identifier.system = "http://physician-identifiers.com"
* requester.display = "GP"

* encounter.identifier.value = "0cf5dc52-28dc-43ce-96d2-3a757526c739"
* encounter.identifier.system = "http://encounter-identifiers.com"

* extension[treatmentPlan].valueReference.identifier.value = "0d462dac-513a-4fb0-a2fe-fb7f53b27c5d"
* extension[treatmentPlan].valueReference.identifier.system = "http://treatment-identifiers.com"

Instance: 7-dispense
InstanceOf: MedRecordDispense
Usage: #example
Description: "This example shows a prescription that is made by VOS and to take only if needed and the pharmacist dispenses it. 
Then it is reported that the medication was not taken at all."
Title: "Dispense of medication that was prescribed to take if needed, but was not taken"

* identifier[0].system = "http://dispense-identifiers.com"
* identifier[0].value = "f219aa4e-5d10-4f3d-840d-a15e0dff2957"

* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* subject.identifier.value = "64110219106"

* status = #completed

* medicationCodeableConcept = https://cnk.apb.be/codings/cnk_product_codes#1359611  "Ciproxine compr. pellic. (séc.) 20x 500mg"

* whenHandedOver = "2021-05-19T13:00:00+02:00"

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


Instance: 7-usage
InstanceOf: MedRecordUsage
Usage: #example
Description: "This example shows a prescription that is made by VOS and to take only if needed and the pharmacist dispenses it. 
Then it is reported that the medication was not taken at all."
Title: "Dispense of medication that was prescribed to take if needed, but was not taken"

* identifier[0].system = "http://medicationusage-identifiers.com"
* identifier[0].value = "cc4f91f6-d0f6-479c-b6c0-109177448ed7"

* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* subject.identifier.value = "64110219106"

* status = #not-taken

* medicationCodeableConcept = https://cnk.apb.be/codings/cnk_product_codes#1359611  "Ciproxine compr. pellic. (séc.) 20x 500mg"

* dateAsserted = "2021-07-19T13:00:00+02:00"

* informationSource.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* informationSource.identifier.value = "64110219106"

* extension[treatmentPlan].valueReference.identifier.value = "0d462dac-513a-4fb0-a2fe-fb7f53b27c5d"
* extension[treatmentPlan].valueReference.identifier.system = "http://treatment-identifiers.com"


Instance: 7-treatmentLine
InstanceOf: MedRecordTreatmentLine
Usage: #example
Description: ""
Title:    ""

* identifier[0].system = "http://treatmentLines-identifiers.com"
* identifier[0].value = "581998d0-8630-4ec0-8233-1cf5807fca41"

* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* subject.identifier.value = "64110219106"

* medicationCodeableConcept = https://vos-identifier.be/vos_product_codes#6734  "ciprofloxacine oral 500 mg"

* status = #active

* extension[treatmentPlan].valueReference.identifier.value = "0d462dac-513a-4fb0-a2fe-fb7f53b27c5d"
* extension[treatmentPlan].valueReference.identifier.system = "http://treatment-identifiers.com"


Instance: 7-treatment
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
* title = "Diarrhea Prevention"
* addresses = Reference(diarrhea-condition)

Instance: 7-1-provenance 
InstanceOf: Provenance
Usage: #example
Description: "Provenance linking treatment line and prescription"
Title:    "Example 7 - Provenance 1"


* target = Reference(7-prescription)

* recorded = "2021-07-19T13:00:00+02:00"

* agent.who.identifier.value = "7c121778-5b2b-442d-9314-0a73995ab3dd"
* agent.who.identifier.system = "http://physician-identifiers.com"
* agent.role = #PRIMAUTH

* entity[0].what = Reference(7-treatmentLine)
* entity[0].role = #source

Instance: 7-2-provenance 
InstanceOf: Provenance
Usage: #example
Description: "Provenance linking treatment line and dispense"
Title:    "Example 7 - Provenance 1"


* target = Reference(7-dispense)

* recorded = "2021-07-19T13:00:00+02:00"

* agent.who.identifier.value = "7c121778-5b2b-442d-9314-0a73995ab3dd"
* agent.who.identifier.system = "http://physician-identifiers.com"
* agent.role = #PRIMAUTH

* entity[0].what = Reference(7-treatmentLine)
* entity[0].role = #source

Instance: 7-3-provenance 
InstanceOf: Provenance
Usage: #example
Description: "Provenance linking treatment line and usage"
Title:    "Example 7 - Provenance 3"


* target = Reference(7-usage)

* recorded = "2021-07-19T13:00:00+02:00"

* agent.who.identifier.value = "7c121778-5b2b-442d-9314-0a73995ab3dd"
* agent.who.identifier.system = "http://physician-identifiers.com"
* agent.role = #PRIMAUTH

* entity[0].what = Reference(7-treatmentLine)
* entity[0].role = #source