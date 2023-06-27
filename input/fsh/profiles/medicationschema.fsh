Profile: BEMedicationLine
Parent: MedicationStatement
Title: "BeMedicationLine"
Description: "A single medication that the patient is taking (or has taken, or will take). This is the central element of the medication schema."

* identifier MS
* status MS
* medication[x] MS
* subject 1..1 MS
  * reference 1..1 MS
* effective[x] MS
* dateAsserted MS
* dosage MS


* category MS

* informationSource MS
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
