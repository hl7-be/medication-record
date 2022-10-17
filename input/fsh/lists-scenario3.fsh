// 2.1. The patient's record has a manually recorded set of entries (e.g. from a discharge)

////    Asaflow (Tadeka), 168 x 80mg			=> 1 before breakfast
Instance: Asaflow500mg1xACM
InstanceOf: MedicationStatement
* status = #active
* medicationCodeableConcept.coding.code = #2542488
* medicationCodeableConcept.coding.display = "Asaflow (Tadeka), 168 x 80mg"
* subject = Reference(Patient1)
* dosage[+]
  * doseAndRate.doseQuantity.value = 1
  * timing.repeat.when = #ACM
* effectivePeriod.start = "2021-07-01"


////    Co-Bisoprolol EG, 98 x (2,5mg + 6,25mg)		=> 1 before breakfast
Instance: Co-Bisoprolol25-625mg1xACM
InstanceOf: MedicationStatement
* status = #active
* medicationCodeableConcept.coding.code = #1609155
* medicationCodeableConcept.coding.display = "Co-Bisoprolol EG, 98 x (2,5mg + 6,25mg)"
* subject = Reference(Patient1)
* dosage[+]
  * doseAndRate.doseQuantity.value = 1
  * timing.repeat.when = #ACM
* effectivePeriod.start = "2021-07-01"


////    Paracetamol EG, 120 x 500mg			=> 1 during dinne
Instance: Paracetamol500mg1xCV
InstanceOf: MedicationStatement
* status = #active
* medicationCodeableConcept.coding.code = #2544948
* medicationCodeableConcept.coding.display = "Dafalgan 500mg Odis 16 tabs"
* subject = Reference(Patient1)
* dosage[+]
  * doseAndRate.doseQuantity.value = 1
  * timing.repeat.when = #CV
* effectivePeriod.start = "2021-07-01"




// 2.1. The Pharmacist issues a Dispense

////    Paracetamol EG, 120 x 500mg			=> 1 during each meal
Instance: Dafalgan500mgDispense
InstanceOf: MedicationDispense

* status = #completed
* medicationCodeableConcept.coding.code = #4185898
* medicationCodeableConcept.coding.display = "Paracetamol Eg 500mg Filmomh Tabl 120 Blister"
* subject = Reference(Patient1)

* dosageInstruction[+]
  * doseAndRate.doseQuantity.value = 1
  * timing.repeat.when = #CM
* dosageInstruction[+]
  * doseAndRate.doseQuantity.value = 1
  * timing.repeat.when = #CD
* dosageInstruction[+]
  * doseAndRate.doseQuantity.value = 1
  * timing.repeat.when = #CV
* whenHandedOver = "2022-01-01"


// 2.2. From the Dispense, someone can trigger a MedStatement that represents the treatment
// TO DO: Insert a Provenance in between Dispense and MedStatement - because it is a decision to create a treatment line based on that specific information at that specific time

Instance: Dafalgan500mg1xmeal
InstanceOf: MedicationStatement

* status = #active
* medicationCodeableConcept.coding.code = #1609155
* medicationCodeableConcept.coding.display = "Dafalgan 500mg Odis 16 tabs"
* subject = Reference(Patient1)

* dosage[+]
  * doseAndRate.doseQuantity.value = 1
  * timing.repeat.when = #CM
* dosage[+]
  * doseAndRate.doseQuantity.value = 1
  * timing.repeat.when = #CD
* dosage[+]
  * doseAndRate.doseQuantity.value = 1
  * timing.repeat.when = #CV
* derivedFrom = Reference (Dafalgan500mgDispense)
* effectivePeriod.start = "2022-01-01"



// 3. then the patient goes to the GP, which detects the double line for Paracetamol, and prescribes a stronger pain killer (Naproxen), which replaces the pain killer that the patient was taking before (Paracetamol)

// 3.1 - first, get a list grouped by active principle, which shows 2 entries for paracetamol
// 2.1. The patient's record has a manually recorded set of entries (e.g. from a discharge)


////    Paracetamol 500mg			=> 1 during dinner + 1 each meal
Instance: Dafalgan500mgmix
InstanceOf: MedicationStatement
* status = #active
* medicationCodeableConcept.coding.code = #123123123
* medicationCodeableConcept.coding.display = "Paracetamol 500 mg"
* subject = Reference(Patient1)
* dosage[+]
  * doseAndRate.doseQuantity.value = 1
  * timing.repeat.when = #CM
* dosage[+]
  * doseAndRate.doseQuantity.value = 1
  * timing.repeat.when = #CD
* dosage[+]
  * doseAndRate.doseQuantity.value = 2
  * timing.repeat.when = #CV
* derivedFrom[+] = Reference (Paracetamol500mg1xCV)
* derivedFrom[+] = Reference (Dafalgan500mg1xmeal)
* effectivePeriod.start = "2022-01-01"


////    Asaflow (Tadeka), 168 x 80mg			=> 1 before breakfast - from previous statement
// TODO: Is this needed to repeat? or we can use the existing one?
Instance: Asaflow500mg1xACMd
InstanceOf: MedicationStatement
* status = #active
* medicationCodeableConcept.coding.code = #2542488
* medicationCodeableConcept.coding.display = "Asaflow (Tadeka), 168 x 80mg"
* subject = Reference(Patient1)
* dosage[+]
  * doseAndRate.doseQuantity.value = 1
  * timing.repeat.when = #ACM
* effectivePeriod.start = "2021-07-01"
* derivedFrom[+] = Reference (Asaflow500mg1xACM)


////    Co-Bisoprolol EG, 98 x (2,5mg + 6,25mg)		=> 1 before breakfast
Instance: Co-Bisoprolol25-625mg1xACMd
InstanceOf: MedicationStatement
* status = #active
* medicationCodeableConcept.coding.code = #1609155
* medicationCodeableConcept.coding.display = "Co-Bisoprolol EG, 98 x (2,5mg + 6,25mg)"
* subject = Reference(Patient1)
* dosage[+]
  * doseAndRate.doseQuantity.value = 1
  * timing.repeat.when = #ACM
* effectivePeriod.start = "2021-07-01"
* derivedFrom[+] = Reference (Co-Bisoprolol25-625mg1xACM)



// 3.2 - then 


