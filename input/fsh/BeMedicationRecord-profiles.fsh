//based on R4
Extension: RelatedTreatmentLine
Id:        related-tl
Title:    "Based On Extension"
Description: "Extension for connecting several resources to a single Treatment Line"
* value[x] only Reference(MedicationStatement)

Profile: MedRecordDispense
Title: "BeMedRecord Dispense profile"
Description: "The profile for Medication Dispense in a Medication Record - a record of a single administration event"
Parent: MedicationDispense
* identifier MS
* subject MS // dispense.patient
* performer MS
//* performer.actor only Reference($be-organization or $be-practitioner)
* whenHandedOver MS
* authorizingPrescription MS
* status MS
* statusReasonCodeableConcept MS
* medicationCodeableConcept MS
* medicationReference MS
* quantity MS
* dosageInstruction MS
* substitution.reason MS
* type MS
* extension contains http://hl7.org/fhir/StructureDefinition/event-basedOn named treatmentPlan 0..1 MS
* extension[treatmentPlan].valueReference only Reference(CarePlan)
* extension contains RelatedTreatmentLine named basedOn 0..1 MS

Profile: MedRecordOrder
Title: "BeMedRecord Order profile"
Description: "The profile for Medication Prescription in a Medication Record - a record of a order or request for a medication or a change of medication, implicit or explicit"
Parent: MedicationRequest
* identifier MS
* subject MS 
* status MS
* statusReason MS
* intent MS
* medicationCodeableConcept MS
* medicationReference MS
* encounter MS
* requester MS
* reasonCode MS
* basedOn MS
* groupIdentifier MS
* dosageInstruction MS
* note MS
* authoredOn MS
* extension contains http://hl7.org/fhir/StructureDefinition/event-basedOn named treatmentPlan 0..1 MS
* extension[treatmentPlan].valueReference only Reference(CarePlan) 
* basedOn 0..0
* extension contains RelatedTreatmentLine named basedOn 0..1 MS
* extension[basedOn].valueReference only Reference(MedicationStatement) 


Profile: MedRecordUsage
Title: "MedRecord Usage profile"
Description: "The profile for Medication Usage in a Medication Record - a record of a single administration event"
Parent: MedicationStatement
* identifier MS
* status MS
* category MS
* medicationCodeableConcept MS
* medicationReference MS
* subject MS 
* effectiveDateTime MS	
* effectivePeriod MS
* dateAsserted MS
* informationSource MS
* reasonCode MS
* reasonReference MS
* dosage MS
* extension contains http://hl7.org/fhir/StructureDefinition/event-basedOn named treatmentPlan 0..1 MS
* extension[treatmentPlan].valueReference only Reference(CarePlan) 
* basedOn 0..0
* extension contains RelatedTreatmentLine named basedOn 0..1 MS
* extension[basedOn].valueReference only Reference(MedicationStatement) 

Profile: MedRecordAdministration
Title: "MedRecord Administration profile"
Description: "The profile for Medication Administration in a Medication Record - a record of a single administration event"
Parent: MedicationAdministration
* identifier MS
* status MS
* statusReason MS
* category MS
* medicationCodeableConcept MS
* medicationReference MS
* subject MS 
* context MS
* effectiveDateTime MS	
* effectivePeriod MS
* performer MS
* reasonCode MS
* reasonReference MS
* request MS
* device MS
* note MS 
* dosage MS
* extension contains http://hl7.org/fhir/StructureDefinition/event-basedOn named treatmentPlan 0..1 MS
* extension[treatmentPlan].valueReference only Reference(CarePlan) 
* extension contains RelatedTreatmentLine named basedOn 0..1 MS
* extension[basedOn].valueReference only Reference(MedicationStatement) 


//based on R4
Profile: MedRecordTreatmentLine
Title: "MedRecord Treatment Line profile"
Description: "The profile for Medication Treatment Line - a single recorded item/line of a medication treatment"
Parent: MedicationStatement
* identifier MS
* basedOn MS
* subject MS 
* informationSource MS //recorder
* dateAsserted MS //recordDate
* effectiveDateTime MS //startMedicationDate + endMedicationDate
* effectivePeriod MS //startMedicationDate + endMedicationDate
* status MS //lifecycleStatus
* statusReason MS //statusReason
* medicationCodeableConcept MS
* medicationReference MS
* dosage MS //dosageAmmount + peridocity + dayperiod + route + instructionforUse
* category MS //medicationType
* note MS //everything else (origintype, lotnumber and reaction)
* extension contains http://hl7.org/fhir/StructureDefinition/event-basedOn named treatmentPlan 0..1 MS
* extension[treatmentPlan].valueReference only Reference(CarePlan) 


//based on R4
Profile: MedRecordTreatment
Title: "MedRecord Treatment profile"
Description: "The profile for Medication Treatment in a Medication Record - a set of treatment lines/items"
Parent: CarePlan
* identifier MS
* subject MS 
* author MS
* basedOn MS
* created MS 
* period MS 
* intent MS
* status MS
* note MS
* goal MS
* supportingInfo MS
* addresses MS
* contributor MS
* careTeam MS
* title MS
* category MS 
* partOf MS
* encounter MS
* description MS
* instantiatesUri MS
* replaces MS


//based on R4
Profile: MedRecordMedicationScheduledAdministration
Title: "MedRecord Scheduled Administration profile"
Description: "The profile for Medication Scheduled Administration in a Medication Record - a set of schedules takes for a certain drug, based on a previous prescription"
Parent: MedicationRequest
* identifier MS
* subject MS
* status MS 
* statusReason MS
* medicationCodeableConcept MS
* medicationReference MS
* encounter MS
* reasonCode MS
* groupIdentifier MS
* dosageInstruction MS
* note MS
* extension contains http://hl7.org/fhir/StructureDefinition/event-basedOn named treatmentPlan 0..1 MS
* extension[treatmentPlan].valueReference only Reference(CarePlan) 
* intent = #instance-order

//based on R4
Profile: MedRecordMedicationSummaryView
Title: "MedRecord Summary View profile"
Description: "The profile for Medication Summary view in a Medication Record"
Parent: CarePlan
* identifier MS
* subject MS
* status MS // =#completed?
* intent MS // =plan?
* category MS
* title MS
* description MS
* encounter MS
* period MS
* created MS
* author MS
* supportingInfo MS
* goal MS
* activity MS



Profile: MedRecordComposition
Title: "Medication Record Composition profile"
Description: "The profile for how to organize the information in a medication Record"
Parent: Composition
Id: MedRecord-comp
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "type.coding.code"
* section ^slicing.rules = #open
* section contains
    MedRecordTreatment 0..* MS and
    MedRecordTreatmentLine 0..* MS and
    MedRecordMedicationSummaryView 0..* MS and
    detailsRecord 0..1 MS 
* section[MedRecordTreatment].entry only Reference(MedRecordTreatment)
* section[MedRecordTreatmentLine].entry only Reference(MedRecordTreatmentLine)
* section[MedRecordMedicationSummaryView].entry only Reference(MedRecordMedicationSummaryView)
* section[detailsRecord].entry only Reference(MedRecordUsage or MedRecordOrder or MedRecordDispense or MedRecordAdministration or MedRecordMedicationScheduledAdministration)



Profile: MedRecord
Parent: Bundle
Id: MedRecord
Title: "Medication Record Bundle document profile"
Description: "The profile for Medication Record"
* identifier 0..1 MS
* type = #document (exactly)
* type ^short = "document"
* type ^definition = "Bundle is a document"
* total 0..0
* link 0..0 SU
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "Slicing based on the profile conformance of the sliced element"
* entry contains
    Composition 1..1 and
    Patient 1..1 and
    MedRecordTreatment 0..* and
    MedRecordTreatmentLine 0..* and 
    MedRecordMedicationSummaryView 0..* and
    MedRecordOrder 0..* and
    MedRecordDispense 0..* and
    MedRecordAdministration 0..* and
    MedRecordMedicationScheduledAdministration 0..* and
    MedRecordUsage 0..* 
* entry[Composition] ^short = "Composition"
* entry[Composition].resource 1.. MS
* entry[Composition].resource only MedRecordComposition

* entry[Patient] ^short = "Patient for whom the record is concerned"
* entry[Patient].resource 1.. MS
* entry[Patient].resource only Patient

* entry[MedRecordTreatment] ^short = "Treatments associated with the patient"
* entry[MedRecordTreatment].resource 1.. MS
* entry[MedRecordTreatment].resource only MedRecordTreatment

* entry[MedRecordTreatmentLine] ^short = "Treatment lines associated with the patient"
* entry[MedRecordTreatmentLine].resource 1.. MS
* entry[MedRecordTreatmentLine].resource only MedRecordTreatmentLine

* entry[MedRecordMedicationSummaryView] ^short = "Medication summaries associated with the patient"
* entry[MedRecordMedicationSummaryView].resource 1.. MS
* entry[MedRecordMedicationSummaryView].resource only MedRecordTreatmentLine

* entry[MedRecordOrder] ^short = "Medication summaries associated with the patient"
* entry[MedRecordOrder].resource 1.. MS
* entry[MedRecordOrder].resource only MedRecordOrder

* entry[MedRecordDispense] ^short = "Medication summaries associated with the patient"
* entry[MedRecordDispense].resource 1.. MS
* entry[MedRecordDispense].resource only MedRecordDispense

* entry[MedRecordAdministration] ^short = "Medication summaries associated with the patient"
* entry[MedRecordAdministration].resource 1.. MS
* entry[MedRecordAdministration].resource only MedRecordAdministration

* entry[MedRecordMedicationScheduledAdministration] ^short = "Medication summaries associated with the patient"
* entry[MedRecordMedicationScheduledAdministration].resource 1.. MS
* entry[MedRecordMedicationScheduledAdministration].resource only MedRecordMedicationScheduledAdministration

* entry[MedRecordUsage] ^short = "Medication summaries associated with the patient"
* entry[MedRecordUsage].resource 1.. MS
* entry[MedRecordUsage].resource only MedRecordUsage



Profile: MedicationView
Title: "Medication View profile"
Description: "The profile for how to organize the information in a medication View"
Parent: Composition
Id: med-view-comp

* type = be-cs-medication-summary-types#Summary
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "type.coding.code"
* section ^slicing.rules = #open
* section contains
    MedRecordTreatment 0..* MS and
    MedRecordTreatmentLine 0..* MS and
    detailsRecord 0..* MS 
* section[MedRecordTreatment].entry only Reference(MedRecordTreatment)
* section[MedRecordTreatmentLine].entry only Reference(MedRecordTreatmentLine)
* section[detailsRecord].entry only Reference(MedRecordUsage or MedRecordOrder or MedRecordDispense or MedRecordAdministration or MedRecordMedicationScheduledAdministration)

Profile: scheduledView
Title: "Medication View profile -second visualization"
Description: "The profile for how to organize the information in a medication View 2"
Parent: Composition
Id: sche-view-comp

* type = be-cs-medication-summary-types#Scheduled
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "type.coding.code"
* section ^slicing.rules = #open
* section contains
    MedRecordTreatment 0..* MS and
    MedRecordTreatmentLine 0..* MS and
    detailsRecord 0..* MS 
* section[MedRecordTreatment].entry only Reference(MedRecordTreatment)
* section[MedRecordTreatmentLine].entry only Reference(MedRecordTreatmentLine)
* section[detailsRecord].entry only Reference(MedRecordMedicationScheduledAdministration)


/*
Profile: MedicationView2
Title: "Medication View profile 2"
Description: "The profile for how to organize the information in a medication View 2"
Parent: Composition
Id: med-view-comp-two


* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "type.coding.code"
* section ^slicing.rules = #open
* section contains
    MedRecordTreatment 0..* MS 
* section[MedRecordTreatment].entry only Reference(MedRecordTreatment)

* section[MedRecordTreatment].section ^slicing.discriminator.type = #value
* section[MedRecordTreatment].section ^slicing.discriminator.path = "type.coding.code"
* section[MedRecordTreatment].section ^slicing.rules = #open
* section[MedRecordTreatment].section contains     
    MedRecordTreatmentLine 0..* MS
* section[MedRecordTreatment].section[MedRecordTreatmentLine].entry only Reference(MedRecordTreatmentLine)

* section[MedRecordTreatment].section[MedRecordTreatmentLine].section ^slicing.discriminator.type = #value
* section[MedRecordTreatment].section[MedRecordTreatmentLine].section ^slicing.discriminator.path = "type.coding.code"
* section[MedRecordTreatment].section[MedRecordTreatmentLine].section ^slicing.rules = #open
* section[MedRecordTreatment].section[MedRecordTreatmentLine].section contains     
    detailsRecord 0..* MS
* section[MedRecordTreatment].section[MedRecordTreatmentLine].section[detailsRecord].entry only Reference(MedRecordUsage or MedRecordOrder or MedRecordDispense or MedRecordAdministration or MedRecordMedicationScheduledAdministration)


Profile: scheduledView
Title: "Medication View profile 2"
Description: "The profile for how to organize the information in a medication View 2"
Parent: Composition
Id: sche-view-comp


* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "type.coding.code"
* section ^slicing.rules = #open
* section contains
    MedRecordTreatment 0..* MS 
* section[MedRecordTreatment].entry only Reference(MedRecordTreatment)

* section[MedRecordTreatment].section ^slicing.discriminator.type = #value
* section[MedRecordTreatment].section ^slicing.discriminator.path = "type.coding.code"
* section[MedRecordTreatment].section ^slicing.rules = #open
* section[MedRecordTreatment].section contains     
    MedRecordTreatmentLine 0..* MS
* section[MedRecordTreatment].section[MedRecordTreatmentLine].entry only Reference(MedRecordTreatmentLine)

* section[MedRecordTreatment].section[MedRecordTreatmentLine].section ^slicing.discriminator.type = #value
* section[MedRecordTreatment].section[MedRecordTreatmentLine].section ^slicing.discriminator.path = "type.coding.code"
* section[MedRecordTreatment].section[MedRecordTreatmentLine].section ^slicing.rules = #open
* section[MedRecordTreatment].section[MedRecordTreatmentLine].section contains     
    detailsRecord 0..* MS
* section[MedRecordTreatment].section[MedRecordTreatmentLine].section[detailsRecord].entry only Reference(MedRecordMedicationScheduledAdministration)
*/