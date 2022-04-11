Instance: 1-prescription 
InstanceOf: MedRecordOrder
Usage: #example
Description: "This example shows a prescription that is made by brand name and the pharmacist changes the brand name for another brand name in the same VOS - Cluster."
Title: "Dispense Example - Prescribed branded medication is changed by another branded medication from the same VOS-cluster"

* identifier[0].system = "http://prescription-identifiers.com"
* identifier[0].value = "69eb6358-6eb6-40e4-972f-33d22c3392c5"

* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* subject.identifier.value = "64110219106"

* status = #active
* intent = #order

* medicationCodeableConcept = https://cnk.apb.be/codings/cnk_product_codes#2837409  "Amlor harde caps. 98x 5mg"

* authoredOn = "2021-07-19T09:00:00+02:00"

* requester.identifier.value = "7c121778-5b2b-442d-9314-0a73995ab3dd"
* requester.identifier.system = "http://physician-identifiers.com"
* requester.display = "GP"

* encounter.identifier.value = "0cf5dc52-28dc-43ce-96d2-3a757526c739"
* encounter.identifier.system = "http://encounter-identifiers.com"

* extension[treatmentPlan].valueReference.identifier.value = "0d462dac-513a-4fb0-a2fe-fb7f53b27c5d"
* extension[treatmentPlan].valueReference.identifier.system = "http://treatment-identifiers.com"

Instance: 1-dispense 
InstanceOf: MedRecordDispense
Usage: #example
Title: "Dispense Example - Prescribed branded medication is changed by another branded medication from the same VOS-cluster"
Description: "This example shows a prescription that is made by brand name and the pharmacist changes the brand name for another brand name in the same VOS - Cluster."

* identifier[0].system = "http://dispense-identifiers.com"
* identifier[0].value = "f219aa4e-5d10-4f3d-840d-a15e0dff2957"

* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* subject.identifier.value = "64110219106"

* status = #completed

* medicationCodeableConcept = https://cnk.apb.be/codings/cnk_product_codes#2399640  "Amlodipin Sandoz tabl. (deelb.) Besilaat 100x 5mg"

* whenHandedOver = "2021-07-19T13:00:00+02:00"

* quantity.value = 1
* quantity.unit = "Box"
* quantity.system =  "http://standardterms.edqm.eu/PAC"
* quantity.code = #30009000

* authorizingPrescription.identifier.system = "http://prescription-identifiers.com"
* authorizingPrescription.identifier.value = "69eb6358-6eb6-40e4-972f-33d22c3392c5"

* substitution.wasSubstituted = true
* substitution.reason.coding.display = "Out of Stock"
* substitution.reason.coding.code = #OS
* substitution.reason.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ActReason"

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

Instance: 1-treatmentLine 
InstanceOf: MedRecordTreatmentLine
Usage: #example
Description: "Original Treatment Line, created with a prescription"
Title:    ""

* identifier[0].system = "http://treatmentLines-identifiers.com"
* identifier[0].value = "581998d0-8630-4ec0-8233-1cf5807fca41"

* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* subject.identifier.value = "64110219106"

* medicationCodeableConcept = https://cnk.apb.be/codings/cnk_product_codes#2399640  "Amlodipin Sandoz tabl. (deelb.) Besilaat 100x 5mg"

* status = #active

* extension[treatmentPlan].valueReference.identifier.value = "0d462dac-513a-4fb0-a2fe-fb7f53b27c5d"
* extension[treatmentPlan].valueReference.identifier.system = "http://treatment-identifiers.com"

Instance: 1-treatment 
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
* title = "Treatment for Hypertension"
* addresses = Reference(hypertension-condition)


Instance: 1-1-provenance 
InstanceOf: Provenance
Usage: #example
Description: "Provenance linking treatment line and prescription"
Title:    "Example 1 - Provenance 1"


* target = Reference(1-prescription)

* recorded = "2021-07-19T13:00:00+02:00"

* agent.who.identifier.value = "7c121778-5b2b-442d-9314-0a73995ab3dd"
* agent.who.identifier.system = "http://physician-identifiers.com"
* agent.role = #PRIMAUTH

* entity[0].what = Reference(1-treatmentLine)
* entity[0].role = #source

Instance: 1-2-provenance 
InstanceOf: Provenance
Usage: #example
Description: "Provenance linking treatment line and dispense"
Title:    "Example 1 - Provenance 2"


* target = Reference(1-dispense)

* recorded = "2021-07-19T13:00:00+02:00"

* agent.who.identifier.value = "7c121778-5b2b-442d-9314-0a73995ab3dd"
* agent.who.identifier.system = "http://physician-identifiers.com"
* agent.role = #PRIMAUTH

* entity[0].what = Reference(1-treatmentLine)
* entity[0].role = #source


Instance: 1-summary-view
InstanceOf: MedicationView
Usage: #example
Description: "Summary view for a Physician"
Title: "Example 1 - Summary view"

* status = #active
* date = "2021-08-15T13:00:00+02:00"
* author = Reference(BeOrganization)
* title = "Summary View for Patient X"

* section[MedRecordTreatment].title = "Treatments"
* section[MedRecordTreatment].entry = Reference(1-treatment)

* section[MedRecordTreatmentLine].title = "Treatment Lines"
* section[MedRecordTreatmentLine].entry = Reference(1-treatmentLine)

* section[detailsRecord].entry[0] = Reference(1-prescription)
* section[detailsRecord].entry[1] = Reference(1-dispense)


Instance: 1-scheduled-view
InstanceOf: scheduledView
Usage: #example
Description: "Summary view for a Patient or Care Taker"
Title:    "Example 1 - Scheduled Takes view"

* status = #active
* date = "2021-08-15T13:00:00+02:00"
* author = Reference(BeOrganization)
* title = "Scheduled View for Patient X"
* section[MedRecordTreatment].title = "Treatments"
* section[MedRecordTreatment].entry = Reference(1-treatment)

* section[MedRecordTreatmentLine].title = "Treatment Lines"
* section[MedRecordTreatmentLine].entry = Reference(1-treatmentLine)

* section[detailsRecord].title = "Scheduled Takes"
* section[detailsRecord].entry[0] = Reference(1-scheduledadministration1)
* section[detailsRecord].entry[1] = Reference(1-scheduledadministration2)


Instance: 1-scheduledadministration1 
InstanceOf: MedRecordMedicationScheduledAdministration
Usage: #example
Title: "Scheduled Administration Example - Prescribed branded medication is changed by another branded medication from the same VOS-cluster"
Description: "This example shows a Scheduled Administration for a prescription that is made by brand name and the pharmacist changes the brand name for another brand name in the same VOS - Cluster."


* identifier[0].system = "http://prescription-identifiers.com"
* identifier[0].value = "f56b6358-6eb6-40e4-972f-33d22c3392768"

* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* subject.identifier.value = "64110219106"

* status = #active

* medicationCodeableConcept = https://cnk.apb.be/codings/cnk_product_codes#2399640  "Amlodipin Sandoz tabl. (deelb.) Besilaat 100x 5mg"

* authoredOn = "2021-07-19T09:00:00+02:00"


* dosageInstruction.timing.event = "2021-07-19T10:00:00+02:00"

Instance: 1-scheduledadministration2 
InstanceOf: MedRecordMedicationScheduledAdministration
Usage: #example
Title: "Scheduled Administration Example - Prescribed branded medication is changed by another branded medication from the same VOS-cluster"
Description: "This example shows a Scheduled Administration for a prescription that is made by brand name and the pharmacist changes the brand name for another brand name in the same VOS - Cluster."


* identifier[0].system = "http://prescription-identifiers.com"
* identifier[0].value = "f56b6358-6eb6-40e4-972f-33d22c3392768"

* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* subject.identifier.value = "64110219106"

* status = #active

* medicationCodeableConcept = https://cnk.apb.be/codings/cnk_product_codes#2399640  "Amlodipin Sandoz tabl. (deelb.) Besilaat 100x 5mg"

* authoredOn = "2021-07-19T09:00:00+02:00"


* dosageInstruction.timing.event = "2021-07-20T10:00:00+02:00"