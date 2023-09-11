The Medication Record uses several Medication-related FHIR resources.
The FHIR version used for this specification is the [FHIR Release 4](http://hl7.org/fhir/R4).

<blockquote class="stu-note">
<strong>Note that upcoming versions of FHIR are expected to introduce some meanignful changes to the resources used. </strong> <br/>
For example the <a href="http://hl7.org/fhir/medicationstatement.html">MedicationStatement</a> resource is expected to be renamed to MedicationUsage. 
</blockquote>

<br/>

* Medication Summary - is a [FHIR Document](https://www.hl7.org/fhir/documents.html), therefore a [Bundle](http://hl7.org/fhir/bundle). 
  * The Medication Summary SHALL contain curation and organization of the medication record (typically in a summary form). This organization of the content is represented with a [Composition](https://www.hl7.org/fhir/composition.html) resource. In addition to the Composition, the Bundle also contains some of the resources listed below.


The Medication Summary is a authored, consistent compiled representation of a patient's medication. But the medication record may be exchanged independently of such compilation. In some cases the systems want to receive a collection of uncompiled data, for example for analytics or for creating such compilation themselves.  

Whether as a document or as a collection, the Medication Record can contain any of the following resources:
* Known Medication allergies and relevant intolerances are represented using [AllergyIntolerance](http://hl7.org/fhir/allergyintolerance.html) resource instances
* The known medication adverse events are captured in [AdverseEvent](https://www.hl7.org/fhir/adverseeevnt.html) resource instances. The adverse events can be associated with an allergy reaction, or just a standalone adverse event.
* When one or more medications are associated with a given disease (indication), the **indication** can be captured via an instance of the [Condition](http://hl7.org/fhir/condition.html) resource
* A medication record describes a set of **Medication Treatments**. The medication treatment is a grouping artifact and a [CarePlan]((http://hl7.org/fhir/careplan.html) can be used. 
* A **Medication Summary** describes an interpreted aggregation of Medication Treatment Lines. The medication summary is also a grouping artifact and a [CarePlan](http://hl7.org/fhir/careplan.html) can be used. 
* Each **Medication Treatment Line** represents a single line of treatment (see the [functional description](functional-description.html) page) and is implemented as a MedicationStatement resource instance
* When a medication treatment 
* Medication Treatment Line can be associated with information from different origins: 
  * **Prescriptions**, or any known change to a treatment, with the [MedicationRequest](http://hl7.org/fhir/medicationrequest.html) resource 
  * **Dispenses**, with the [MedicationDispense](http://hl7.org/fhir/medicationdispense.html) resource 
  * **Administrations**, ttypically informed by the patient or by a nurse or other care giver, with the [MedicationAdministration](http://hl7.org/fhir/medicationadministration.html) resource 
  * In some cases, a medication information can be obtained by a statement given by a patient (or related person) about the usage of the medication. This is done with the [MedicationStatement](http://hl7.org/fhir/medicationstatement.html) resource 

* A set of examples is provided in this document to show the combinations of these elements in realistic scenarios.

The diagram below shows these resources and some of their content. The actual content definition is defined in the profiles section.
<br/>

<div>
{% include medrecord-fhirresources.svg %}
</div>

<br clear="ALL"/>
<br/>

### Access to the data


* Getting the last known documents
* Asking for the system to create a document given some rules
* Getting the entire record data
* Custom queries

see the section [Transaction Types](medicationrecord-transaction-types.html) for more details
