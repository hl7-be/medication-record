In this specification, the following terms and concepts are used:


Do we have an explicit info on "status" like the treatment intended, actually being taken, etc.

If we look at 2 treatments that contain the same medication, will we see duplicate lines? 
WE REALLY NEED TO MAKE THIS CLEAR IN THE DOCUMENTATION - WHEN THE SOFTWARE SEES 2 MEDICATION TREATEMENTS THAT CONTAIN THE SAME LINES, IT SHOULD NEVER SHOW THOSE LINES AS DIFFERENT.


Data objects

**Medication Record**: a collection of all past, future and current medication treatments for a patient. This may include the related data objects such as prescriptions, dispenses, etc. but does not necessarily incorporate adjacent information like allergies, lab results, etc.

**Medication Treatment**: a set of medications used in a given context - for example one disease, or one episode. 

**Medication Treatment line**: One medication product that is used (or planned) for a patient, including the details on how the medication is or should be used (for example posology).
A medication treatment line always is associated with a treatment, even if that treatment is not a prescription or even planned (for example self-reported OTC medication usage). 
??The same medication (line) can be referred in more than one treatment.??
A Medication Treatment Item can trigger prescriptions, dispenses or medication administrations in order to fulfill the medication, or can be created and updated by those.
treatment planned by the item.

**Medication View**: a purpose-specific collection of medication lines (medication view lines) representing a distinct view on the data that is relevant for that purpose, for example a patient-friendly schedule view, or a physician's aggregated view,...
This differs from the Medication Treatment in that the medication treatment is the "original" information - what is known at a given time to be the medication treatments of the patient - whereas the view can be transversal to several treatments, or detailed as needed.

**Medication View line**: one entry in the medication view, representing a purpose-specific perspective on one or several medication treatment lines - for example a single line in a patient's schedule for the week.
Because the medication view line (and medication view) are purpose-specific, there may be different medication view lines for the same medication treatment line.

**note that structure of the Medication View line is similar to that of the Medication Treatment line -but they are used differently - one to capture the original data, the other to represent the derived data*


**Medication Prescription**: A request or authorization to start (or continue) a medication treatment for a patient. This includes the authorization and instructions for the supply of the medication, as well as any necessary authorization and instructions for the administration - whether for the patient or for professionals.

**Medication Dispense**: A record of dispensing a medication - i.e. assigning (and handing over) a medication to a patient.

**Medication Administration**: A record of a single administration of medication - or combined administrations, depending on the granularity possible.

**Medication statement**: A patient's statement of using or not using a medication.

**Medication data collection** The process and outcome of collecting data about a patient's medication. This collection can be in different forms and from different sources.

**Medication data aggregation** The process of combining and linking data about a patient's medication based on existing rules - for example resolving duplicates, linling .

**Medication Reconciliation**: The process of creating and maintaining a single list of medications for a patient, for a specific purpose.

**Medication List Creation**: The process of creating a specific representation - for example in list format



  

