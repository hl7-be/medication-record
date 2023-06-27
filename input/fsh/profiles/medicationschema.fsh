Profile: BEMedicationLine
Parent: MedicationStatement
Title: "BeMedicationLine"
Description: "A single medication that the patient is taking (or has taken, or will take). This is the central element of the medication schema."

* identifier MS
* status MS
* statusReason MS
* medication[x] MS
* subject 1..1 MS
  * reference 1..1 MS
* effective[x] MS
* dateAsserted MS

* dosage MS
* basedOn MS

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Types of identifiers"
* identifier contains vidis-mline-id 1..1

* identifier[vidis-mline-id]
  * type = #vidis-mlid
  * system = "http://somesystem/identifiertypes/vidis-medicationschema"


* category MS

* informationSource MS
  * ^short = "The author of the medication line"

// * informationSource ^slicing.discriminator.type = #type
// * informationSource ^slicing.discriminator.path = "."
// * informationSource ^slicing.rules = #open
// * informationSource ^slicing.description = "Types of recorder"
// * informationSource contains author 1..1

* informationSource only Reference(BePractitioner)



* derivedFrom MS



* reasonCode MS 
* note MS
//* renderedDosageInstruction MS
* dosage
  * text MS
  * timing MS
    * event MS
    * repeat
      * dayOfWeek MS
      * timeOfDay MS
      * when 0..0 MS
        * extension contains ExtDosageTime named dosageTime 1..1 MS
      * offset MS
  * route MS
  * patientInstruction MS

//* adherence MS

Extension: ExtDosageTime
Description: "Extended dosage timing."
* value[x] only CodeableConcept
* value[x] from BEVSMMedicationLineDayPeriod (required)
