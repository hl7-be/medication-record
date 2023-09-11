/*
Logical: BeModelMedicationRecordDispense
Title: "Medication Record Dispense logical model"
* ^extension[0].url = "http://hl7.org/fhir/tools/StructureDefinition/logical-target"
* ^extension[0].valueBoolean = true
* identifier 0..1 Identifier "The business identifier(s) for the medication dispense session" "The business identifier(s) for the medication dispense session"
* patient 1..1 Reference(Patient) "The person for which the medication is dispensed." "The person for which the medication is dispensed."
* dispenser 0..* BackboneElement "The dispenser, if known and relevant" "The dispenser, if known and relevant"
  * actor 1..1 Reference(Practitioner) "The person that performed the dispense" "The person that made the dispense"
  * organization 1..1 Reference(Organization) "The organzation from which the dispenser belongs" "The organzation from which the dispenser belongs"
* date 1..1 dateTime "The date when the dispense ocurred (or not)" "The date when the dispense ocurred (or not)"
* prescription 0..1 BackboneElement "The information about a prescription related to the dispense" "The information about a prescription related to the dispense"
  * isprescribed 0..1 boolean "Whether this dispense was performed against a prescription" "Whether this dispense was performed against a prescription"
  * prescription 0..1 Reference(MedicationRequest) "The prescription identification" "The prescription identification"
* status 1..1 code "Status of the dispense" "Status of the dispense"
* statusReason 0..* CodeableConcept "Reason for a dispense status" "Reason for a dispense status"
* product[x] 1..1 Reference(Medication) or CodeableConcept "The product that was dispensed" "The product that was dispensed - coded or not (e.g. for magistral preparations)"
* quantitydispensed 0..1 SimpleQuantity "The amound of product that was dispensed" "The amound of product that was dispensed"
* dosageInstruction 0..1 Dosage "The instructions for using the product" "The instructions for using the product"
* note 0..* Annotation "Additional information about the dispensed product" "Additional information about the dispensed product"
* substitutionReason 0..1 CodeableConcept "Why was substitution made" "Why was substitution made"
* type 0..1 CodeableConcept "Type of dispense" "Type of dispense"
* location 0..1 Reference(location) "Location where the dispense was made" "Location where the dispense was made"
* treatmentPlan 0..1 Reference "Link to the 'parent' treatment - i.e the treatment that this order is derived from, or contriburing to" "Link to the 'parent' treatment - i.e the treatment that this order is derived from, or contriburing to"
* basedOn 0..1 Reference "link to the 'parent' treatmentLine - i.e the line that covers all of the same drug for a certain purpose"

Logical: BeModelMedicationRecordOrder
Title: "Medication Record Prescription logical model"
Description: "A model for representing a product order."

* ^extension[0].url = "http://hl7.org/fhir/tools/StructureDefinition/logical-target"
* ^extension[0].valueBoolean = true
* identifier 0..1 Identifier "The business identifier(s) for the medication prescription" "The business identifier(s) for the medication prescription"
* patient 1..1 Reference(Patient) "The person for which the medication is prescribed." "The person for which the medication is prescribed."
* status 1..1 code "Status of the prescription" "Status of the prescription"
* statusReason 0..* CodeableConcept "Reason for current prescription status" "Reason for current prescription status"
* intent 1..1 code "Intent of the prescription" "Intent of the prescription"
* product[x] 1..1 Reference(Medication) or CodeableConcept "Product prescribed" "Product prescribed"
* encounter 0..1 Reference(Encounter) "Encounter on which the medication was prescribed" "Encounter on which the medication was prescribed"
* requester 0..1 Reference(Practitioner) "Who made the prescription" "Who made the prescription"
* reason 0..* Reference(Condition or Observation) "Reason or indication for ordering or not ordering the product" "Reason or indication for ordering or not ordering the product"
* groupIdentifier 0..1 Identifier "Composite request this is part of" "Composite request this is part of"
* dosageInstruction 0..* Dosage "How the product should be taken/administered" "How the product should be taken/administered"
* note 0..* Annotation "Additional Information about the prescription" "Additional Information about the prescription"
* date 0..1 dateTime "When prescription was initially made" "When prescription was initially made"
* location 0..1 string "Where the prescription was initially made" "Where the prescription was initially made"
* treatmentPlan 0..1 Reference "Link to the 'parent' treatment - i.e the treatment that this order is derived from, or contriburing to" "Link to the 'parent' treatment - i.e the treatment that this order is derived from, or contriburing to"
* basedOn 0..1 Reference "link to the 'parent' treatmentLine - i.e the line that covers all of the same drug for a certain purpose"


Logical: BeModelMedicationRecordUsage
Title: "Medication Record MedicationUsage Logical Model"
Description: "A model for representing medication usage."

* identifier 0..* Identifier "The business identifier(s) for the medication Usage" "The business identifier(s) for the medication Usage"
* status 1..1 code "Status of the usage" "Status of the usage"
* category 0..* CodeableConcept "Type of medication usage" "Type of medication usage"
* product[x] 1..1 Reference(Medication) or CodeableConcept "What product this usage relates to" "What product this usage relates to"
* subject 1..1 Reference(Patient or Group) "Whom this usage relates to" "Whom this usage relates to"
* effective[x] 0..1 dateTime or Period "The date/time or interval when the product is/was/will be taken" "The date/time or interval when the product is/was/will be taken"
* dateAsserted 0..1 dateTime "When the usage was asserted?" "When the usage was asserted?"
* informationSource 0..1 Reference(Patient or Practitioner or PractitionerRole or RelatedPerson or Organization) "Source that provided the information about the usage of the product" "Source that provided the information about the usage of the product"
* reason[x] 0..* Reference(Condition or Observation or DiagnosticReport) or CodeableConcept "Reason for why the product is/was being taken" "Reason for why the product is/was being taken"
* note 0..* Annotation "Further information about the usage" "Further information about the usage"
* renderedDosageInstruction 0..1 string "Full representation of the dosage instructions" "Full representation of the dosage instructions"
* dosage 0..* Dosage "Details of how product is/was taken or should be taken" "Details of how product is/was taken or should be taken"
* adherence 0..1 BackboneElement "Indicates if the product is being consumed or administered as instructed" "Indicates if the product is being consumed or administered as instructed"
  * code 1..1 CodeableConcept "Type of adherence" "Type of adherence"
  * reason 0..1 CodeableConcept "Details of the reason for the current adherence to the intended usage of the product" "Details of the reason for the current adherence to the intended usage of the product"
* treatmentPlan 0..1 Reference "Link to the 'parent' treatment - i.e the treatment that this order is derived from, or contriburing to" "Link to the 'parent' treatment - i.e the treatment that this order is derived from, or contriburing to"
* basedOn 0..1 Reference "link to the 'parent' treatmentLine - i.e the line that covers all of the same drug for a certain purpose"


Logical: BeModelMedicationRecordAdministration
Title: "Medication Record Administration logical model"
Description: "A model for representing and reporting an administration of a product."

* identifier 0..* Identifier "The business identifier(s) for the medication Administration"  "The business identifier(s) for the medication Administration"
* status 1..1 code "Status of the medication administration" "Status of the medication administration"
* statusReason 0..* CodeableConcept "Reason supporting the status of the medication administration" "Reason supporting the status of the medication administration"
* category 0..* CodeableConcept "Type of medication administration" "Type of medication administration"
* product[x] 1..1 Reference(Medication) or CodeableConcept "What was administered" "What was administered"
* subject 1..1 Reference(Patient) "Who received medication" "Who received medication"
* encounter 0..1 Reference(Encounter) "Encounter administered as part of" "Encounter administered as part of"
* occurence[x] 1..1 dateTime or Period "Start and end time of administration" "Start and end time of administration"
* recorded 0..1 dateTime "When the Medication administration was first captured in the subject's record" "When the Medication administration was first captured in the subject's record"
* performer 0..* BackboneElement "Who performed the medication administration and what they did" "Who performed the medication administration and what they did"
  * function 0..1 CodeableConcept "Function of the actor regarding the medication administration" "Function of the actor regarding the medication administration"
  * actor 1..1 Reference(Practitioner or PractitionerRole or Patient or RelatedPerson or Device) "Who performed a function related to the medication administration" "Who performed a function related to the medication administration" 
* reason[x] 0..* Reference(Condition or Observation or DiagnosticReport) or CodeableConcept "Information that supports why the medication was administered" "Information that supports why the medication was administered"
* prescription 0..1 Reference(MedicationRequest) "Prescription for which the administration was performed against" "Prescription for which the administration was performed against"
* device 0..* Reference(Device) "Device used to administer" "Device used to administer"
* note 0..* Annotation "Further information about the administration" "Further information about the administration"
* dosage 0..1 BackboneElement "Details of how medication was administered" "Details of how medication was administered"
  * text 0..1 string "Free text dosage instructions" "Free text dosage instructions"
  * site 0..1 CodeableConcept "Body site administered to" "Body site administered to"
  * route 0..1 CodeableConcept "Route through which the product was administered" "Route through which the product was administered"
  * method 0..1 CodeableConcept "How the product was administered" "How the product was administered"
  * dose 0..1 SimpleQuantity "Amount of product per dose" "Amount of product per dose"
    * rate[x] 0..1 Ratio or SimpleQuantity "Dose quantity per unit of time" "Dose quantity per unit of time" 
* treatmentPlan 0..1 Reference "Link to the 'parent' treatment - i.e the treatment that this order is derived from, or contriburing to" "Link to the 'parent' treatment - i.e the treatment that this order is derived from, or contriburing to"
* location 0..1 string "Where the administration was performed" "Where the administration was performed"
* basedOn 0..1 Reference "link to the 'parent' treatmentLine - i.e the line that covers all of the same drug for a certain purpose"

Logical: BeModelMedicationScheduledAdministration
Title: "Medication Record Scheduled Administration logical model"
Description: "A model for a record of a single planned administration event."
* ^extension[0].url = "http://hl7.org/fhir/tools/StructureDefinition/logical-target"
* ^extension[0].valueBoolean = true
* identifier 0..1 Identifier "The business identifier(s) for the medication scheduled administration" "The business identifier(s) for the medication scheduled administration"
* patient 1..1 Reference(Patient) "The person for which the product is prescribed." "The person for which the product is prescribed."
* status 1..1 code "Status of the medication scheduled administration" "status of the medication scheduled administration"
* statusReason 0..* CodeableConcept "Reason for current status" "Reason for current status"
* product[x] 1..1 Reference(Medication) or CodeableConcept "Product to be consumed" "Product to be consumed"
* encounter 0..1 Reference(Encounter) "Encounter in which the schedule was created" "Encounter in which the schedule was created"
* reason 0..* Reference(Condition or Observation) "Reason or indication for ordering" "Reason or indication for ordering"
* groupIdentifier 0..1 Identifier "Composite request this is part of" "Composite request this is part of"
* dosageInstruction 0..* Dosage "How the product should be consumed" "How the product should be consumed"
* note 0..* Annotation "Additional Information about the scheduled administration" "Additional Information about the scheduled administration"
* treatmentPlan 0..1 Reference "Link to the 'parent' treatment - i.e the treatment that this order is derived from, or contributing to" "Link to the 'parent' treatment - i.e the treatment that this order is derived from, or contriburing to"



//treatmentLine as is
Logical: BeModelMedicationRecordTreatmentLine
Title: "Medication Record Treatment Line - logical model"
Description: "A model for representing a Treatment Line."
* ^extension[0].url = "http://hl7.org/fhir/tools/StructureDefinition/logical-target"
* ^extension[0].valueBoolean = true
* identifier 0..1 Identifier "The business identifier(s) for the medication treatment Line" "The business identifier(s) for the medication treatment Line"
* basedOn 0..1 Reference(BeModelMedicationRecordTreatment) "The identifier of the treatment from which this line stems" "The identifier of the treatment from which this line stems" 
* subject 1..1 Reference(Patient) "For whom this treatment line was created" "For whom this treatment line was created"
* recorder 1..1 Reference(Practitioner or Organization) "Who created this treatment line" "Who created this treatment line"
* recordDate 1..1 dateTime "Datetime that the treatment line was created or updated" "Datetime that the treatment line was created or updated"
* startMedicationDate 1..1 dateTime "Start date of the medication" "Start date of the medication"
* endMedicationDate 0..1 dateTime "End date, if exists, for stopping the medication" "End date, if exists, for stopping the medication"
* originType 1..1 CodeableConcept "From what context this treatment line stems" "From what context this treatment line stems, whether is ambulatory prescription, patient request, etc"
* reaction 0..* CodeableConcept "Reaction to this treatment line" "Reaction to this treatment line"
* product[x] 1..1 Reference(Medication) or CodeableConcept "Product for which the treatment line refers to" "Product for which the treatment line refers to"
* medicationType 0..* CodeableConcept "What type of medication the product is: hospital, community, preparation, etc"  "What type of medication the product is: hospital, community, preparation, etc"
* instructionForUse 0..* string "Full representation of the dosage instructions" "Full representation of the dosage instructions"
* dosageAmount 0..1 CodeableConcept "Quantity to be consumed" "Quantity to be consumed"
* periodicity 0..1 CodeableConcept "Scheduling for the consumption" "Scheduling for the consumption"
* route 1..1 CodeableConcept "Route through which the product should consumed" "Route through which the product should consumed"
* dayPeriod 0..* CodeableConcept "Period of the day for consuming the product" "Period of the day for consuming the product"
* lifecycleStatus 1..1 CodeableConcept "Status of the treatment line" "Status of the treatment line"
* statusReason 0..* CodeableConcept "Reason the status" "Reason the status"
* treatmentPlan 0..1 Reference "Link to the 'parent' treatment - i.e the treatment that this order is derived from, or contriburing to" "Link to the 'parent' treatment - i.e the treatment that this order is derived from, or contriburing to" //extra
* indication 0..* CodeableConcept "Why the treatment exists" "Why the treatment exists"  //extra


//treatment as is - rzv
Logical: BeModelMedicationRecordTreatment
Title: "Medication Record - Medication Treatment"
Description: "A model for the Medication Treatment."

* ^extension[0].url = "http://hl7.org/fhir/tools/StructureDefinition/logical-target"
* ^extension[0].valueBoolean = true

* identifier 0..1 BackboneElement "The business identifier(s) for the medication treatment" "The business identifier(s) for the medication treatment" 
  * treatmentGuid 0..1 Identifier "The Global Unique identifier(s) for the medication treatment" "The Global Unique identifier(s) for the medication treatment" 
* subject 1..1 Reference(Patient) "The subject of the medication treatment" "The subject of the medication treatment"
* status 1..1 code "Status of the medication treatment" "Status of the medication treatment"
//* intent 1..1 code "" ""
* category 0..* CodeableConcept "Category(ies) of the medication treatment" "Category(ies) of the medication treatment"
* title 0..1 string "Short title of the medication treatment" "Short title of the medication treatment"
* description 0..1 string "Textual description of the treatment" "Textual description of the medication treatment"
* encounter 0..1 Reference(Encounter) "The encounter in which the medication treatment was created or updated" "The encounter in which the medication treatment was created or updated"
* period 0..1 Period "The duration of the treatment" "The duration of the treatment" 
* created 0..1 dateTime "When the treatment record was created" "When the treatment record was created"
* author 0..1 Reference(Patient or Practitioner or PractitionerRole or Device or RelatedPerson or Organization or CareTeam) "The current author/responsible for the medication treatment plan" "The current author/responsible for the medication treatment plan"
* note  0..* Annotation "Comments about the plan" "Comments about the plan"


Logical: BeModelMedicationRecordSummaryView
Title: "Medication Record Summary View - logical model"
Description: "A model for representing a summary view of a patient's medication."

* identifier 0..1 Identifier "The business identifier(s) for the medication summary" "The business identifier(s) for the medication summary"
* subject 1..1 Reference(Patient) "From which patient the summary is from" "From which patient the summary is from"
* status 1..1 code "Status of the summary" "Status of the summary"
* intent 1..1 code "Intent for the summary" "Intent for the summary"
* category 0..* CodeableConcept "Category of the summary" "Category of the summary"
* title 0..1 string "Short title of the summary" "Short title of the summary"
* description 0..1 string "Textual description of the summary" "Textual description of the summary"
* encounter 0..1 Reference(Encounter) "Encounter regarding the summary creation"  "Encounter regarding the summary creation"
* period 0..1 Period "Period of time that the summary covers" "Period of time that the summary covers"
* created 0..1 dateTime "Date of the creation of the summary" "Date of the creation of the summary"
* author 0..1 Reference(Patient or Practitioner or PractitionerRole or Device or RelatedPerson or Organization or CareTeam) "Author of the summary" "Author of the summary"
* supportingInfo 0..* Reference(Resource) "Supporting Info for the summary, like context or aditional information considered relevant" "Supporting Info for the summary, like context or aditional information considered relevant"
* goal 0..* Reference(Goal) "Desired outcome of plan" "Desired outcome of plan"



Logical: BeModelMedicationRecord
Title: "Medication Record logical model"
Description: "A model for a structure collection of a patient's medication history."

* identifier 0..1 Identifier "The business identifier(s) for the Medication Record" "The business identifier(s) for the Medication Record" 
* patient 1..1 Reference "The subject of the medication record" "The subject of the medication record"
* treatments 0..* BeModelMedicationRecordTreatment "The treaments that are included in this record" "The treaments that are included in this record"
* treatmentLines 0..* BeModelMedicationRecordTreatmentLine "The treatment lines that are included in this record" "The treatment lines that are included in this record"
* summaryView 0..* BeModelMedicationRecordSummaryView "The summary views that are produced from this record or entered into it" "The summary views that are produced from this record or entered into it"
* detailedRecords 0..* BackboneElement  "Detailed records" "Detailed records - the most granular interactions" 
  * orders 0..* BeModelMedicationRecordOrder  "Explicit or implicit order for medication use or changes" "Explicit or implicit order for medication use or changes" 
  * schedule 0..* BeModelMedicationScheduledAdministration  "Scheduled administrations of the medication" "Scheduled administrations of the medication" 
  * dispenses 0..*  BeModelMedicationRecordDispense "Registered or reported dispenses" "Registered or reported dispenses"
  * administrations 0..*  BeModelMedicationRecordAdministration "Registered or reported single administrations" "Registered or reported single administrations"
  * usageReports 0..*  BeModelMedicationRecordUsage "Reported statements of medication usage" "Reported statements of medication usage"
* changeRecord 0..* Provenance  "Change records and provenance for the medication record components" "Change records and provenance for the medication record components" 



Logical: BeModelMedicationView
Title: "Medication View logical model"
Description: "A model for a visualization of the patient's medication"

* identifier 0..1 Identifier "The business identifier(s) for the Medication View" "The business identifier(s) for the Medication View" 
* patient 1..1 Reference "The subject of the medication record" "The subject of the medication record"
* treatments 0..* BackboneElement "The treaments that are included in this record" "The treaments that are included in this record"
  * indication 0..* CodeableConcept "Why the treatment exists" "Why the treatment exists"  
  * treatmentLines 0..* BackboneElement "The treatment lines that are included in this record" "The treatment lines that are included in this record"
    * product[x] 1..1 Reference(Medication) or CodeableConcept "Product for which the treatment line refers to" "Product for which the treatment line refers to"
    * detailedRecords 0..* BackboneElement  "Detailed records" "Detailed records - the most granular interactions" 
      * orders 0..* BeModelMedicationRecordOrder  "Explicit or implicit order for medication use or changes" "Explicit or implicit order for medication use or changes" 
      * schedule 0..* BeModelMedicationScheduledAdministration  "Scheduled administrations of the medication" "Scheduled administrations of the medication" 
      * dispenses 0..*  BeModelMedicationRecordDispense "Registered or reported dispenses" "Registered or reported dispenses"
      * administrations 0..*  BeModelMedicationRecordAdministration "Registered or reported single administrations" "Registered or reported single administrations"
      * usageReports 0..*  BeModelMedicationRecordUsage "Reported statements of medication usage" "Reported statements of medication usage"
* changeRecord 0..* Provenance  "Change records and provenance for the medication record components" "Change records and provenance for the medication record components" 
*/