# Glossary

In this specification, the following terms and concepts are used:

Do we have an explicit info on "status" like the treatment intended, actually being taken, etc.

If we look at 2 treatments that contain the same medication, will we see duplicate lines? 
WE REALLY NEED TO MAKE THIS CLEAR IN THE DOCUMENTATION - WHEN THE SOFTWARE SEES 2 MEDICATION TREATEMENTS THAT CONTAIN THE SAME LINES, IT SHOULD NEVER SHOW THOSE LINES AS DIFFERENT.

Data objects

### Medication Record
A collection of all past, future and current medication treatments for a patient. This does not necessarily incorporate adjacent information like allergies, lab results, etc.

### Medication Treatment
A set of medications used in a given context - for example one disease, or one episode.

### Medication Treatment line
One medication product that is used (or planned) for a patient, including the details on how the medication is or should be used (for example posology).
The same medication (line) can be associated with 2 treatments.
A medication treatment line always is associated with a treatment, even if that treatment is not a prescription or even planned (for example self-reported OTC medication usage). 

### Medication View
A purpose-specific collection of medication lines (medication view lines) representing a distinct view on the data that is relevant for that purpose, for example a patient-friendly schedule view, or a physician's aggregated view,...
This differs from the Medication Treatment in that the medication treatment is the "original" information - what is known at a given time to be the medication treatments of the patient - whereas the view can be transversal to several treatments, or detailed as needed.

### Medication View line
One entry in the medication view, representing a purpose-specific perspective on one or several medication treatment lines - for example a single line in a patient's schedule for the week.
Because the medication view line (and medication view) are purpose-specific, there may be different medication view lines for the same medication treatment line.

Note that structure of the Medication View line is similar to that of the Medication Treatment line, but they are used differently. One to capture the original data, the other to represent the derived data.

### Medication statement

### Medication Reconciliation
The act of improving the overall **medication record**. This by reviewing the current **medication treatment lines**, or by merging different **medication treatments**  into a new, updated and more complete or more correct medication treatment.  

Reconcilliations should happen in transitions of the care, for example when a patient goes on an intake in a hospital, or when a GP prescribes new medication.  

The process of reconciliation commonly has following steps[^1]:  

1. Develop the list of current medications for the patient
2. Develop a list of medication that needs to be prescribed
3. Compare these two lists
4. Make clinical decisions based on the comparison
5. Upload the medication record


### Medication data collection

[^1]: https://www.ncbi.nlm.nih.gov/books/NBK2648/: Medication reconcilliation source
