

Logical: KMEHRv58
Title: "Medication Schema KMEHR V5.8"
Description: "This model represents the Medication Schema KMEHR V5.8. It is shown for demonstrating the field correspondence/equivalence"


* kmehr_header 0..1 string "" ""
* kmehr_folder 0..1 BackboneElement "" ""
  * patient 0..1 string "" ""
  * transaction_medicationscheme 0..1 BackboneElement "" ""
    * parent_transaction  0..1 string "" ""
    * child_transaction 0..1 string "" ""
  * medicationschemeelement_medicationschemeelement 0..1 BackboneElement "" ""
    * parent_transaction 0..1 string "" ""
    * child_MSE 0..1 Reference "" "" 
      * item 0..1 string "" ""
      * medication 0..1 BackboneElement "" ""
        * medication_information 0..1 BackboneElement "" ""
          * medicinalproduct 0..1 string "" ""
          * substanceproduct 0..1 string "" ""
          * cd-ean 0..1 string "" ""
          * compoundprescription 0..1 string "" ""
        * temporality 0..1 string "" ""
        * frequency 0..1 string "" ""
        * beginmoment 0..1 string "" ""
        * endmoment 0..1 string "" ""
        * duration 0..1 string "" ""
        * regimen 0..1 string "" ""
        * posology 0..1 string "" ""
        * route 0..1 string "" ""
        * instructionforpatient 0..1 string "" ""
      * healthcareelement 0..1 BackboneElement "" ""
        * adaptationflag 0..1 string "" ""
        * begincondition 0..1 string "" ""
        * endcondition 0..1 string "" ""
        * medicationtype 0..1 string "" ""
        * medicationuse 0..1 string "" ""
        * origin 0..1 string "" ""
    * treatmentsuspension  0..1 BackboneElement "" ""
      * parent_transaction 0..1 string "" ""
      * child_transaction 0..1 BackboneElement "" ""
        * item 0..1 string "" ""
        * medication 0..1 BackboneElement "" ""
          * medication_information 0..1 string "" ""
          * beginmoment 0..1 string "" ""
          * endmoment 0..1 string "" ""
          * duration 0..1 string "" ""
          * lifecycle 0..1 string "" ""
          * lnk 0..1 string "" ""
          * transactionreason  0..1 string "" ""



/*
Kmehrmessage element <header>
Kmehrmessage element <folder>
    Folder element <patient>
    Folder element <transaction> "medicationscheme" (MS)
        Kmehr parent transaction
        Vitalink child transaction MS
    Folder element <transaction> "medicationschemeelement" (MSE)
        Kmehr parent transaction
        Vitalink child transaction MSE
            Transaction element <item>
            Transaction element <item> "medication"
                Medication elements for medication information 
                    Medication information via <medicinalproduct>
                    Medication information via <substanceproduct>
                    Medication information via CD-EAN and <text>
                    Medication information via <compoundprescription> and <text>
                Medication element <temporality>
                Medication element <frequency>
                Medication element <beginmoment>
                Medication element <endmoment>
                Medication element <duration>
                Medication element <regimen>
                Medication element <posology>
                Medication element <route>
                Medication element <instructionforpatient>
                Medication element <instructionforoverdosing> (deprecated)
            Transaction element <item> "healthcareelement"
                Healthcareelement "adaptationflag"
                Healthcareelement "begincondition"
                Healthcareelement "endcondition"
                Healthcareelement "medicationtype"
                Healthcareelement "medicationuse"
                Healthcareelement "origin"
    Folder element <transaction> "treatmentsuspension" TS
        Kmehr parent transaction
        Vitalink child transaction TS
            Transaction element <item>
            Transaction element <item> "medication"
                Medication elements for medication information
                Medication element <beginmoment>
                Medication element <endmoment>
                Medication element <duration>
                Medication element <lifecycle>
                Medication element <lnk>
            Transaction element <item> "transactionreason"











*/