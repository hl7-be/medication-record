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




Logical: BeMedicationScheme
Title: "Medication Scheme"
Parent: Element
Id: be-model-medicationscheme
Description: "The logical model for the medication scheme"
* ^extension[0].url = "http://hl7.org/fhir/tools/StructureDefinition/logical-target"
* ^extension[0].valueBoolean = true
* businessIdentifier 1..* II "Unique identifier for the line"
* businessVersion 1..1 string "Business Version"
* patient 1..1 Reference "Patient"
* status 1..1 CD "Status"
* label 1..1 ST "Label"
* type 0..1 CD "Subtype of schema"



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
* authoredOn 0..1 DT "Date of first creation"
* authoredBy 0..1 Reference "Author"
* medication 1..1 Class "Medication"
  * medication 1..1 Reference(BeModelMedication) "Medication product or substance"
  * medicationType 1..1 CD "Type - magistral, medicinal product, other"
* originType 0..1 CD "Type of medication request"

* reason 0..* Class "Reason for treatment i.e. indication"
  * reference 0..1 Reference "Reason as an existing resource"
  * code 0..1 CD "Coded reason"
* effectivePeriod 0..1 Class "The period of the treatment"
  * start 0..1 DT "The start of the period"
  * end 0..1 DT "The end of the period"
* dosage 0..1 Class "Dosage"
  * dosageDetails 0..1 BeModelDosage "Dosage"
  * dosageOverrideReason 0..1 CD "Dosage override reason"

* adherence 0..1 Class "information about adherence"
  * code 0..1 CD "Coded adherence status"
  * reason 0..1 CD "Coded reason for adherence status"

* orderStatus 1..1 CD "Status of the treatment"
* orderStatusReason 0..1 CD "Coded or text reason for status change"

* note 0..* string "Text annotations on the line"
* dispenseRequestNeeded 0..1 BL "Whether a dispense request is needed"
* pssRequest 0..1 Class "PSS Request"
  * pssRequestId 0..1 II "PSS Request"
  * pssOverrideReason 0..1 CD "PSS Override reason"

* visible 0..1 CD "Coded visibility flag, e.g. Whether the patient allows to share the data about this line"



/*

ValueSet MedicationType
Magistral Magistraal
Médicament enregistré
Nonmédicament Niet-drugs

ValueSet OriginType
Sur base d’une prescription ambulatoire
Sur base d’une prescription de l’hôpital
À la demande expresse du patient =
selfmedication
Médicament non vendu en Belgique avec
prescription
Médicament non vendu en Belgique sans
prescription
Suite au conseil du pharmacien
autre andere



Exposure
Profylactic La médication prescrite est à but préventif Prophylactique
Profylactisch
Therapeutic La médication prescrite est à but thérapeutique







StatusReason:
drughigh Niveau de médication trop élevé
Non-avail Patient non disponible
preg Patient enceinte
sintol Suspected intolerance

*/
