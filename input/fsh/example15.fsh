Instance: 15-prescription 
InstanceOf: MedRecordOrder
Usage: #example
Description: ""
Title:    ""

* identifier[0].system = "http://prescription-identifiers.com"
* identifier[0].value = "69eb6358-6eb6-40e4-972f-33d22c3392c5"

* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* subject.identifier.value = "64110219106"

* status = #active
* intent = #order

* medicationCodeableConcept = https://cnk.apb.be/codings/cnk_product_codes#00  "Acidine 75 mg (20 pieces)"

* authoredOn = "2021-08-10T09:00:00+02:00"

* requester.identifier.value = "7c121778-5b2b-442d-9314-0a73995ab3dd"
* requester.identifier.system = "http://physician-identifiers.com"
* requester.display = "GP"

* encounter.identifier.value = "0cf5dc52-28dc-43ce-96d2-3a757526c739"
* encounter.identifier.system = "http://encounter-identifiers.com"

* dosageInstruction.route = http://snomed.info/sct#26643006  "Oral Route" 

* dosageInstruction.doseAndRate.doseQuantity.value = 1
* dosageInstruction.doseAndRate.doseQuantity.unit = "TAB" 
* dosageInstruction.doseAndRate.doseQuantity.system = "http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm"
* dosageInstruction.doseAndRate.doseQuantity.code = #TAB 

* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d 
* dosageInstruction.timing.repeat.dayOfWeek[+] = #wed 
* dosageInstruction.timing.repeat.dayOfWeek[+] = #thu 

* dosageInstruction.timing.repeat.when = #MORN 

* extension[treatmentPlan].valueReference.identifier.value = "743a5985-dfe3-4806-ae72-36fff1dd5b05"
* extension[treatmentPlan].valueReference.identifier.system = "http://treatment-identifiers.com"

* extension[basedOn].valueReference = Reference(example-15-of-medication-treatmentLine)



Instance: 15-treatmentLine 
InstanceOf: MedRecordTreatmentLine
Usage: #example
Description: ""
Title:    ""

* identifier[0].system = "http://treatmentLines-identifiers.com"
* identifier[0].value = "581998d0-8630-4ec0-8233-1cf5807fca41"

* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* subject.identifier.value = "64110219106"

* medicationCodeableConcept = https://cnk.apb.be/codings/cnk_product_codes#00  "Acidine 75 mg (20 pieces)"

* status = #active

* extension[treatmentPlan].valueReference.identifier.value = "743a5985-dfe3-4806-ae72-36fff1dd5b05"
* extension[treatmentPlan].valueReference.identifier.system = "http://treatment-identifiers.com"


Instance: 15-treatment 
InstanceOf: MedRecordTreatment
Usage: #example
Description: ""
Title:    ""

* identifier[0].system = "http://treatments-identifiers.com"
* identifier[0].value = "743a5985-dfe3-4806-ae72-36fff1dd5b05"

* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* subject.identifier.value = "64110219106"

* created = "2021-08-10T09:00:00+02:00"

* status = #active 
* intent = #plan
* title = "Treatment for acid reflux"
* addresses = Reference(reflux-condition)

* activity[+].detail.kind = #MedicationRequest
* activity[=].detail.status = #completed
* activity[=].detail.productCodeableConcept	= https://cnk.apb.be/codings/cnk_product_codes#00  "Aspirine 500 mg (36 effervescent tablets)"


Instance: 15-scheduleAdministration
InstanceOf: MedRecordMedicationScheduledAdministration


* identifier[0].system = "http://takes-identifiers.com"
* identifier[0].value = "797148f2-2100-4a1a-ac25-0b1ae040f0e6"

* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* subject.identifier.value = "64110219106"

* medicationCodeableConcept = https://cnk.apb.be/codings/cnk_product_codes#00  "Acidine 75 mg (20 pieces)"

* status = #active 


* dosageInstruction.route = http://snomed.info/sct#26643006  "Oral Route" 

* dosageInstruction.doseAndRate.doseQuantity.value = 1
* dosageInstruction.doseAndRate.doseQuantity.unit = "TAB" 
* dosageInstruction.doseAndRate.doseQuantity.system = "http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm"
* dosageInstruction.doseAndRate.doseQuantity.code = #TAB 

* dosageInstruction.timing.event = "2021-08-11T10:00:00+02:00"

* extension[treatmentPlan].valueReference.identifier.value = "743a5985-dfe3-4806-ae72-36fff1dd5b05"
* extension[treatmentPlan].valueReference.identifier.system = "http://treatment-identifiers.com"


Instance: 15-scheduleAdministration-2
InstanceOf: MedRecordMedicationScheduledAdministration


* identifier[0].system = "http://takes-identifiers.com"
* identifier[0].value = "d6cbba56-f05d-42fc-9674-fccc8aa2c048"

* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* subject.identifier.value = "64110219106"

* medicationCodeableConcept = https://cnk.apb.be/codings/cnk_product_codes#00  "Acidine 75 mg (20 pieces)"

* status = #active 


* dosageInstruction.route = http://snomed.info/sct#26643006  "Oral Route" 

* dosageInstruction.doseAndRate.doseQuantity.value = 1
* dosageInstruction.doseAndRate.doseQuantity.unit = "TAB" 
* dosageInstruction.doseAndRate.doseQuantity.system = "http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm"
* dosageInstruction.doseAndRate.doseQuantity.code = #TAB 

* dosageInstruction.timing.event = "2021-08-12T10:00:00+02:00"

* extension[treatmentPlan].valueReference.identifier.value = "743a5985-dfe3-4806-ae72-36fff1dd5b05"
* extension[treatmentPlan].valueReference.identifier.system = "http://treatment-identifiers.com"



//////////////////<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>\\\\\\\\\\\\\\\\\\


Instance: 15-prescription-2 
InstanceOf: MedRecordOrder
Usage: #example
Description: ""
Title:    ""

* identifier[0].system = "http://prescription-identifiers.com"
* identifier[0].value = "f1ef61db-472f-4f84-a6fa-9914f43525b1"

* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* subject.identifier.value = "64110219106"

* status = #active
* intent = #order

* medicationCodeableConcept = https://cnk.apb.be/codings/cnk_product_codes#00  "Aspirine 500 mg (36 effervescent tablets)"

* authoredOn = "2021-08-01T09:00:00+02:00"

* requester.identifier.value = "db0f310a-e2fe-4aca-93cc-c3fd41dc272a"
* requester.identifier.system = "http://physician-identifiers.com"
* requester.display = "GP2"

* encounter.identifier.value = "7b0febb8-4117-4019-9f7f-bb920912548e"
* encounter.identifier.system = "http://encounter-identifiers.com"

* dosageInstruction.route = http://snomed.info/sct#26643006  "Oral Route" 

* dosageInstruction.doseAndRate.doseQuantity.value = 1
* dosageInstruction.doseAndRate.doseQuantity.unit = "TAB" 
* dosageInstruction.doseAndRate.doseQuantity.system = "http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm"
* dosageInstruction.doseAndRate.doseQuantity.code = #TAB 

* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d 
* dosageInstruction.timing.repeat.when = #MORN 

* extension[treatmentPlan].valueReference.identifier.value = "0d462dac-513a-4fb0-a2fe-fb7f53b27c5d"
* extension[treatmentPlan].valueReference.identifier.system = "http://treatment-identifiers.com"

* extension[basedOn].valueReference = Reference(example-15-of-medication-treatmentLine2)


Instance: 15-treatmentLine-2 
InstanceOf: MedRecordTreatmentLine
Usage: #example
Description: ""
Title:    ""

* identifier[0].system = "http://treatmentLines-identifiers.com"
* identifier[0].value = "581998d0-8630-4ec0-8233-1cf5807fca41"

* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* subject.identifier.value = "64110219106"

* medicationCodeableConcept = https://cnk.apb.be/codings/cnk_product_codes#00  "Aspirine 500 mg (36 effervescent tablets)"

* status = #active

* extension[treatmentPlan].valueReference.identifier.value = "0d462dac-513a-4fb0-a2fe-fb7f53b27c5d"
* extension[treatmentPlan].valueReference.identifier.system = "http://treatment-identifiers.com"


Instance: 15-treatment-2
InstanceOf: MedRecordTreatment
Usage: #example
Description: ""
Title:    ""

* identifier[0].system = "http://treatments-identifiers.com"
* identifier[0].value = "0d462dac-513a-4fb0-a2fe-fb7f53b27c5d"

* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* subject.identifier.value = "64110219106"

* created = "2021-08-01T09:00:00+02:00"

* status = #active 
* intent = #plan
* title = "Treatment for preventing stroke"

* activity[+].detail.kind = #MedicationRequest
* activity[=].detail.status = #completed
* activity[=].detail.productCodeableConcept	= https://cnk.apb.be/codings/cnk_product_codes#00  "Aspirine 500 mg (36 effervescent tablets)"


Instance: 15-scheduleAdministration-3
InstanceOf: MedRecordMedicationScheduledAdministration


* identifier[0].system = "http://takes-identifiers.com"
* identifier[0].value = "e0584b22-74c3-40f3-a5ef-0545fcc50934"

* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* subject.identifier.value = "64110219106"

* medicationCodeableConcept = https://cnk.apb.be/codings/cnk_product_codes#00  "Aspirine 500 mg (36 effervescent tablets)"

* status = #active 


* dosageInstruction.route = http://snomed.info/sct#26643006  "Oral Route" 

* dosageInstruction.doseAndRate.doseQuantity.value = 1
* dosageInstruction.doseAndRate.doseQuantity.unit = "TAB" 
* dosageInstruction.doseAndRate.doseQuantity.system = "http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm"
* dosageInstruction.doseAndRate.doseQuantity.code = #TAB 

* dosageInstruction.timing.event = "2021-08-02T10:00:00+02:00"

* extension[treatmentPlan].valueReference.identifier.value = "0d462dac-513a-4fb0-a2fe-fb7f53b27c5d"
* extension[treatmentPlan].valueReference.identifier.system = "http://treatment-identifiers.com"


Instance: 15-scheduleAdministration-4
InstanceOf: MedRecordMedicationScheduledAdministration


* identifier[0].system = "http://takes-identifiers.com"
* identifier[0].value = "c2074776-06d5-4705-9715-20d986b82ea3"

* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* subject.identifier.value = "64110219106"

* medicationCodeableConcept = https://cnk.apb.be/codings/cnk_product_codes#00  "Aspirine 500 mg (36 effervescent tablets)"

* status = #active 

* dosageInstruction.route = http://snomed.info/sct#26643006  "Oral Route" 

* dosageInstruction.doseAndRate.doseQuantity.value = 1
* dosageInstruction.doseAndRate.doseQuantity.unit = "TAB" 
* dosageInstruction.doseAndRate.doseQuantity.system = "http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm"
* dosageInstruction.doseAndRate.doseQuantity.code = #TAB 

* dosageInstruction.timing.event = "2021-08-03T10:00:00+02:00"

* extension[treatmentPlan].valueReference.identifier.value = "0d462dac-513a-4fb0-a2fe-fb7f53b27c5d"
* extension[treatmentPlan].valueReference.identifier.system = "http://treatment-identifiers.com"


////////////////////////////////////////////////summaries\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

Instance: total-view
InstanceOf: MedRecordMedicationSummaryView
Title: "View of all medication the patient is taking"


* identifier[0].system = "http://summaries-identifiers.com"
* identifier[0].value = "ba9efa2a-8b0e-4c64-8a35-3e2c059b1899"

* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* subject.identifier.value = "64110219106"

* intent = #plan
* status = #active 

* created = "2021-08-10T10:00:00+02:00"

* title = "Patient Total Medication"
* description = "Overview of the patient's medication"

* activity[+].detail.kind = #MedicationRequest //new value set?
* activity[=].detail.status = #completed
* activity[=].detail.productCodeableConcept =  https://cnk.apb.be/codings/cnk_product_codes#00  "Aspirine 500 mg (36 effervescent tablets)"
//* activity[=].detail.scheduledString = "every day" transform the prescription into string or mantain Timing?

* activity[=].detail.scheduledTiming.repeat.frequency = 1
* activity[=].detail.scheduledTiming.repeat.period = 1
* activity[=].detail.scheduledTiming.repeat.periodUnit = #d 
* activity[=].detail.scheduledTiming.repeat.when = #MORN 

* activity[=].detail.dailyAmount.value = 1
* activity[=].detail.dailyAmount.unit = "TAB" 

* activity[+].detail.kind = #MedicationRequest //new value set?
//* activity[=].reference = Reference(example-15-of-medication-treatment2) referencing treatment here? careplan not supported

* activity[=].detail.status = #active
* activity[=].detail.productCodeableConcept =   https://cnk.apb.be/codings/cnk_product_codes#00  "Acidine 75 mg (20 pieces)"
//* activity[=].detail.scheduledString = "every day" transform the prescription into string or mantain Timing?

* activity[=].detail.scheduledTiming.repeat.frequency = 1
* activity[=].detail.scheduledTiming.repeat.period = 1
* activity[=].detail.scheduledTiming.repeat.periodUnit = #d 
* activity[=].detail.scheduledTiming.repeat.dayOfWeek[+] = #wed 
* activity[=].detail.scheduledTiming.repeat.dayOfWeek[+] = #thu 
* activity[=].detail.scheduledTiming.repeat.when = #MORN 

* activity[=].detail.dailyAmount.value = 1
* activity[=].detail.dailyAmount.unit = "TAB" 



Instance: week-view
InstanceOf: MedRecordMedicationSummaryView
Title: "Scheduled medication for the patient for a certain week"


* identifier[0].system = "http://summaries-identifiers.com"
* identifier[0].value = "ba9efa2a-8b0e-4c64-8a35-3e2c059b1899"

* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* subject.identifier.value = "64110219106"

* intent = #plan
* status = #active 

* title = "Patient scheduled medication for week x"
* period.start = "2021-08-09T00:00:00+02:00"
* period.end = "2021-08-15T23:59:59+02:00"

* created = "2021-08-10T10:00:00+02:00"


* activity[+].detail.kind = #MedicationRequest //new value set?
* activity[=].detail.status = #completed
* activity[=].detail.productCodeableConcept =  https://cnk.apb.be/codings/cnk_product_codes#00  "Aspirine 500 mg (36 effervescent tablets)"
//* activity[=].detail.scheduledString = "every day" transform the prescription into string or mantain Timing?


* activity[+].detail.kind = #MedicationRequest //new value set?
//* activity[=].reference = Reference(example-15-of-medication-treatment2) referencing treatment here? careplan not supported

* activity[=].detail.status = #active
* activity[=].detail.productCodeableConcept =   https://cnk.apb.be/codings/cnk_product_codes#00  "Acidine 75 mg (20 pieces)"
//* activity[=].detail.scheduledString = "every day" transform the prescription into string or mantain Timing?
