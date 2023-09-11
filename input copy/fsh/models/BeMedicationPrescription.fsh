Logical: BeModelDosage
Parent: Element
Title: "Dosage"
Id: be-model-dosage
Description: "Dosage logical model"
* ^extension[0].url = "http://hl7.org/fhir/tools/StructureDefinition/logical-target"
* ^extension[0].valueBoolean = true


Logical: BeModelMedication
Parent: Element
Title: "Medication Model"
Id: be-model-medication
Description: "Medication logical model"
* ^extension[0].url = "http://hl7.org/fhir/tools/StructureDefinition/logical-target"
* ^extension[0].valueBoolean = true



Logical: BeMedicationTreatmentLine
Title: "Medication Line"
Parent: Element
Id: be-model-medicationline
Description: "The logical model for the medication treatment line"
* ^extension[0].url = "http://hl7.org/fhir/tools/StructureDefinition/logical-target"
* ^extension[0].valueBoolean = true
* businessIdentifier 1..* II "Unique identifier for the line"
* businessVersion 1..1 string "Business Version"
* patient 1..1 Reference "Patient"
* status 1..1 CD "Status"
* statusReason 0..1 CD "Coded or text reason for status change"
* authoredBy 0..1 Reference "Author"
* authoredOn 0..1 DT "Date of first creation"
* medication 1..1 Reference(BeModelMedication) "Medication product or substance"
//* recorder 0..1 Reference "The author of the line"
//* recorded 0..1 DT "The date and time the medication line was recorded in the system"
* reason 0..* Class "Reason for treatment i.e. indication"
  * reference 0..1 Reference "Reason as an existing resource"
  * code 0..1 CD "Coded reason"
* effectivePeriod 0..1 Class "The period of the treatment"
  * start 0..1 DT "The start of the period"
  * end 0..1 DT "The end of the period"
* dosage 0..1 BeModelDosage "Dosage"
* adherence 0..1 Class "information about adherence"
  * code 0..1 CD "Coded adherence status"
  * reason 0..1 CD "Coded reason for adherence status"
* note 0..* string "Text annotations on the line"
* dispenseRequestNeeded 0..1 BL "Whether a dispense request is needed"
* visible 0..1 CD "Coded visibility flag, e.g. Whether the patient allows to share the data about this line"



Logical: BePrescription
Parent: Element
Title: "Prescription"
Id: be-model-prescription
Description: "The logical model for the prescription"
* ^extension[0].url = "http://hl7.org/fhir/tools/StructureDefinition/logical-target"
* ^extension[0].valueBoolean = true
* businessIdentifier 1..* II "Unique identifier for the prescription line"
* recordedDate 0..1 DT "The date and time the prescription line was recorded in the system"
* relatedToPlan 0..1 Reference(BeMedicationTreatmentLine) "The plan that is associated with the prescription"
* patient 1..1 Reference "Patient"
* status 1..1 CD "Status"
* statusReason 0..1 CD "Coded or text reason for status change"
* medication 1..1 Reference(BeModelMedication) "Medication product or substance"
* requester 0..1 Reference "The author of the line"
* reason 0..* Class "Reason for treatment i.e. indication"
  * reference 0..1 Reference "Reason as an existing resource"
  * code 0..1 CD "Coded reason"
* effectivePeriod 0..1 Class "The period of the treatment"
  * start 0..1 DT "The start of the period"
  * end 0..1 DT "The end of the period"
* dosage 0..1 BeModelDosage "Dosage"
* dispenseRequestNeeded 0..1 BL "Whether a dispense request is needed"
* visible 0..1 CD "Coded visibility flag, e.g. Whether the patient allows to share the data about this line"

