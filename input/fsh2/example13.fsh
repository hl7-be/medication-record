Instance: 13-1-dispense 
InstanceOf: MedRecordDispense
Usage: #example
Description: ""
Title:    ""

* identifier[0].system = "http://dispense-identifiers.com"
* identifier[0].value = "f219aa4e-5d10-4f3d-840d-a15e0dff2957"

* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* subject.identifier.value = "64110219106"

* status = #completed

* medicationCodeableConcept = https://cnk.apb.be/codings/cnk_product_codes#1784206  "Spidifen compr. pellic. (séc.) 24x 400mg"

* whenHandedOver = "2020-05-01T13:00:00+02:00"

* quantity.value = 1
* quantity.unit = "Bottle"
* quantity.system =  "http://standardterms.edqm.eu/PAC"
* quantity.code = #30008000

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

Instance: 13-2-dispense 
InstanceOf: MedRecordDispense
Usage: #example
Description: ""
Title:    ""

* identifier[0].system = "http://dispense-identifiers.com"
* identifier[0].value = "f219aa4e-5d10-4f3d-840d-a15e0dff2957"

* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* subject.identifier.value = "64110219106"

* status = #completed

* medicationCodeableConcept = https://cnk.apb.be/codings/cnk_product_codes#39347  "Dafalgan compr. 30x 500mg"

* whenHandedOver = "2020-12-12T13:00:00+02:00"

* quantity.value = 1
* quantity.unit = "Box"
* quantity.system =  "http://standardterms.edqm.eu/PAC"
* quantity.code = #30009000
//change

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

Instance: 13-3-dispense 
InstanceOf: MedRecordDispense
Usage: #example
Description: ""
Title:    ""

* identifier[0].system = "http://dispense-identifiers.com"
* identifier[0].value = "f219aa4e-5d10-4f3d-840d-a15e0dff2957"

* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* subject.identifier.value = "64110219106"

* status = #completed

* medicationCodeableConcept = https://cnk.apb.be/codings/cnk_product_codes#3607462  "Brufen compr. pellic. 30x 400mg"

* whenHandedOver = "2021-05-19T13:00:00+02:00"

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


Instance: 13-1-treatmentLine
InstanceOf: MedRecordTreatmentLine
Usage: #example
Description: ""
Title:    ""

* identifier[0].system = "http://treatmentLines-identifiers.com"
* identifier[0].value = "581998d0-8630-4ec0-8233-1cf5807fca41"

* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* subject.identifier.value = "64110219106"

* medicationCodeableConcept = https://vos-identifier.be/vos_product_codes#16279  "ibuproféne oral 400 mg"

* status = #active

* extension[treatmentPlan].valueReference.identifier.value = "0d462dac-513a-4fb0-a2fe-fb7f53b27c5d"
* extension[treatmentPlan].valueReference.identifier.system = "http://treatment-identifiers.com"

Instance: 13-2-treatmentLine
InstanceOf: MedRecordTreatmentLine
Usage: #example
Description: ""
Title:    ""

* identifier[0].system = "http://treatmentLines-identifiers.com"
* identifier[0].value = "581998d0-8630-4ec0-8233-1cf5807fca41"

* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* subject.identifier.value = "64110219106"

* medicationCodeableConcept = https://vos-identifier.be/vos_product_codes#24901  "paracétamol oral 500 mg"

* status = #active

* extension[treatmentPlan].valueReference.identifier.value = "0d462dac-513a-4fb0-a2fe-fb7f53b27c5d"
* extension[treatmentPlan].valueReference.identifier.system = "http://treatment-identifiers.com"



Instance: 13-treatment
InstanceOf: MedRecordTreatment
Usage: #example
Description: ""
Title:    ""

* identifier[0].system = "http://treatments-identifiers.com"
* identifier[0].value = "0d462dac-513a-4fb0-a2fe-fb7f53b27c5d"

* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* subject.identifier.value = "64110219106"

* created = "2020-05-01T13:00:00+02:00"

* status = #active 
* intent = #plan
* title = "Headache"
* addresses = Reference(headache-condition)


Instance: 13-1-provenance 
InstanceOf: Provenance
Usage: #example
Description: "Provenance linking treatment line and dispense"
Title:    "Example 13 - Provenance 1"


* target = Reference(13-1-dispense)

* recorded = "2021-07-19T13:00:00+02:00"

* agent.who.identifier.value = "7c121778-5b2b-442d-9314-0a73995ab3dd"
* agent.who.identifier.system = "http://physician-identifiers.com"
* agent.role = #PRIMAUTH

* entity[0].what = Reference(13-1-treatmentLine)
* entity[0].role = #source


Instance: 13-2-provenance 
InstanceOf: Provenance
Usage: #example
Description: "Provenance linking treatment line and dispense"
Title:    "Example 13 - Provenance 2"


* target = Reference(13-2-dispense)

* recorded = "2021-07-19T13:00:00+02:00"

* agent.who.identifier.value = "7c121778-5b2b-442d-9314-0a73995ab3dd"
* agent.who.identifier.system = "http://physician-identifiers.com"
* agent.role = #PRIMAUTH

* entity[0].what = Reference(13-2-treatmentLine)
* entity[0].role = #source



Instance: 13-3-provenance 
InstanceOf: Provenance
Usage: #example
Description: "Provenance linking treatment line and dispense"
Title:    "Example 13 - Provenance 3"


* target = Reference(13-3-dispense)

* recorded = "2021-07-19T13:00:00+02:00"

* agent.who.identifier.value = "7c121778-5b2b-442d-9314-0a73995ab3dd"
* agent.who.identifier.system = "http://physician-identifiers.com"
* agent.role = #PRIMAUTH

* entity[0].what = Reference(13-1-treatmentLine)
* entity[0].role = #source
