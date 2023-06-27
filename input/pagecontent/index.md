The purpose of this Care Set is to record a patient's medication schema or medication regimen. The medication scheme is a standard way to exchange information about a patient's active (or past) medication, including prescribed and non-prescribed medications, their dosage, indications, relevant instructions for use, and any additional information. The objective is to provide the patient with an overview of the medications they are taking and to explain how to use them (dose, frequency, duration). It is also a practical tool for healthcare providers to consistently offer appropriate care.  

Considering the variety of use cases, data exchange needs, and the value of this medication scheme for patient safety, it is necessary to establish a holistic approach to these elements and consider them within a common architecture in order to effectively exchange the data that each element contains.

Therefore, this specification has been developed in consideration with the many aspects it touches (for example data availability and integrity, confidentiality, medicinal product identification, etc.)


## Concepts, definitions

In its core, this specification defines a **medication scheme** which contains **medication lines**. A medication line may be associated with different entities, such as e-prescription and medication dispensing by a pharmacist. Its status and the information it contains may vary based on these elements.  

For further definitions, please consult the [glossary](glossary.html).


## Relationships with other standards

To ensure the maximum benefit, adoption and possibly reuse of data, this specification has been elaborated with a special attention to 3 related standards: 

* [KMEHR Medication Scheme](https://ehealth.fgov.be/standards/kmehr/en/transactions/medication-scheme), the legacy Belgian standard for exchange of medication information.  

* [International Patient Summary](http://hl7.org/fhir/uv/ips/), an international specification based on FHIR that also includes a patient's Medication summary view.  

* [IHE MEOW](https://profiles.ihe.net/PHARM/MEOW), a standard FHIR-based specification about patients' Medication Overview. This international specification turn considers several other specifications.  

  


