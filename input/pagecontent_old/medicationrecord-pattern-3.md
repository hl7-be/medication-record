
This use case shows the possibly asynchronous nature of the Medication Record updates: The GP software can submit medication information, when available. 

Other systems as well - for example the pharmacy/dispense record can provide dispense information to enrich the record. The vault has the responsibility to, applying the business rules, reconcile and compile the Medication Record for the next time the GP requires it.

<div>
{% include usecase-medicationschema-3.svg %}
</div>

<br/>
<br/>
