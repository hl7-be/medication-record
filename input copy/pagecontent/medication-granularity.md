# Medication Levels

For an adequate usage of medication throughout the scenarios referred to in this implementation guide, we should first understand that different levels of granularity regarding medication are often used in clinical practice.

We may want to refer to some medications as only the active principle - i.e, Pantoprazole. But sometimes we want to refer to a **truly** generic drug, only stating the drug, strength, pharmaceutical form and (maybe) route -> Pantoprazole 40 mg tab oral. This one is especially important when referring to something like treatment and/or treatmentLine, since we can have a prescription and most importantly dispenses of very different brands of medication, but all different forms of the very same entity stated above.

Additionally, we may want to refer to some brand medication in a more specific way - Pantogastrix (or any other). This third level of description is a child of the second one, like many others. In this case, we want to refer to the drug, but not necessarily the packaged form (number of tabs per box), which is interesting for example for medication summary. We may want to check the brand, but we do not care about the more specific details like the number of elements. Additionally, we may want to use this level of description regarding scheduled takes as well.

Finally, we have the most specific form, which is the packaged form, this could be specifically important for community dispenses since this will be the product delivered to the patient and situations where a batch number is important.

Following this rationale, we should engage with medication with different levels, all connected between them, so it is possible to select the right level of product and information for every situation.

An example is stated below.


<div>
{% include medication-level.svg %}
</div>
