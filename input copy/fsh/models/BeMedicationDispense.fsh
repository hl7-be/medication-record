Logical: BeModelMedicationDispense
Parent: Element
Id: be-model-medication-dispense
Description: "This is the logical model for the Dispense Record entry - the information that can be captured upon the act of dispensing - in a hospital pharmacy, or a community pharmacy. This is not for a future dispense, rather a record of an actual dispense."
//* ^_id.fhir_comments = "trial"
* ^version = "0.1.0"
* ^status = #draft
* ^type = "BeMedicationDispense"
* . ^short = "An individual record of a medication dispense"
* identifier 0..1 Identifier "The business identifier(s) for the medication dispense session" "The business identifier(s) for the medication dispense session, also known as Session GUID (SGUID)."
* patient 1..1 Reference(https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient) "The person for which the medication is dispensed." "The person for which the medication is dispensed."
* dispenser 0..1  BackboneElement "The dispenser, if known and relevant" "."
* dispenser.person 1..1 Reference(https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner) "Reference to person that performed the recording or reporting" "Who was responsible for asserting the observed value as \"true\". (Reference)"
* dispenser.organization 1..1 Reference(https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-organization) "Reference to person that performed the recording or reporting" "Who was responsible for asserting the observed value as \"true\". (Reference)"
* dispenseDate 1..1 dateTime "The date when the dispense ocurred" "The date (or date-time) when the dispense ocurred"
* prescription 0..1 BackboneElement "The information about a prescription related to the dispense" "."
* prescription.isPrescribed 0..1 boolean "Whether this dispense was performed against a prescription" "."
* prescription.prescription 0..1 CodeableConcept "The prescription identification" "."
* identifier 0..1 Identifier "The business identifier(s) for the medication dispense" "The business identifier(s) for the medication dispense. The DGUID is the current identifier."
* dispensedItem 0..* CodeableConcept "Each product that was dispensed" "."
* dispensedItem.product 0..1 CodeableConcept "The product that was dispensed - coded or not (e.g. for magistral preparations)" "."
* dispensedItem.quantityDispensed 0..1 Quantity "The amound of product that was dispensed" "."
* dispensedItem.dosageInstructions 0..1 Dosage "The instructions for use" "."
* dispensedItem.note 0..* Annotation "Additional information about the dispensed item" "Additional information about the dispense - this can be relevant history, any remarks by the patient or professional, etc."
* note 0..* Annotation "Additional information about the dispense" "Additional information about the dispense - this can be relevant history, any remarks by the patient or professional, etc."


// VIDIS: 
* recorded 0..1 DT "The date and time the medication dispense was recorded in the system"
* category 0..* CD "Category of dispense"
