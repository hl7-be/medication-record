RuleSet: hcparties
* hcparty-hub 0..1 class "the identifier of the hub"
  * id 1..1 string "the hub identifier"
    * ^comment = "S-VALUE= ID-HCPARTY"
    * ^example.valueString = "1990001916"
  * cd 1..1 code "the type of the hcparty"
    * ^comment = "S-VALUE= CD-HCPARTY"
  * name 0..1 string "the name of the hub"
    * ^comment = "S-VALUE= CD-HCPARTY"
* hcparty-org 0..1 class "the identifier of the org"
  * id 0..1 string "the org identifier - NIHDII number of the org"
    * ^example.valueString = "1990001916"
  * cd 1..1 code "the type of the hcparty"
    * ^comment = "S-VALUE= CD-HCPARTY"
  * id-encryptionActor 0..1 integer "to be checked: usage & cardinality"
    * ^requirements = """
      * S-VALUE = ID-ENCRYPTION-ACTOR
      * value = [selection of you NIHII nr]
    """
  * id-encryptionApplication 0..1 unknown ""
    * ^requirements = """
      * S-VALUE = ID-ENCRYPTION-APPLICATION
    """
  * cd-encryptionActor 0..1 class "to be checked: usage & cardinality"
    * ^requirements = """
      * S-VALUE = CD-ENCRYPTION-ACTOR
      * valueset: 
        * EHP
        * NIHII
        * SSIN
        *...
    """
  * name 0..1 string "the name of the org"
* hcparty-individual 1..1 class "the identifier of the individual"
  * id-riziv 0..1 string "the RIZIV individual identifier"
    * ^comment = "S-VALUE= ID-HCPARTY"
  * id-inss 0..1 string "the Belgian Social Security Number identifier"
    * ^comment = "S-VALUE= INSS"
    * ^example.valueString = "69060733632"
  * id-encryptionActor 0..1 integer "to be checked: usage & cardinality"
    * ^requirements = """
      * S-VALUE = ID-ENCRYPTION-ACTOR
      * value = [selection of you NIHII nr]
    """
  * cd 1..1 code "the type of the hcparty"
    * ^example.valueString = "persphysician"
    * ^comment = "S-VALUE= CD-HCPARTY"
  * cd-encryptionActor 0..1 class "to be checked: usage & cardinality"
    * ^requirements = """
      * valueset: 
        * EHP
        * NIHII
        * SSIN
        *...
    """
  * firstname 0..1 string "the first name of the individual"
  * familyname 0..1 string "the last name of the individual"
    * ^example.valueString = "Hendrix"
  * address 0..* class "Home, work, ... address(es) of the patient or healthcare party."
    * cd 1..1 class ""
      * ^requirements = """
        * S-VALUE = CD-ADDRESS
        * example.valueString = home
      """
    * nis 0..1 code "explanation: https://nl.wikipedia.org/wiki/NIS-code"
      * ^example.valueString = "24062"
  * telecom 0..* string "Fax, phone, … number(s) of the healthcare party."
* hcparty-application 0..1 class "the software identifier"
  * id 0..1 string "the software identifier"
    * ^requirements = """
      * S-VALUE = LOCAL
      * SL-VALUE = endusersoftwareinfo
      * value = [received eHealth client-ID to access specific environment]
    """
  * cd 1..1 code "the type of the hcparty"
    * ^requirements = """
      * S-VALUE = CD-HCPARTY
      * value = APPLICATION
    """
  * name 0..1 string "The name of the application."
    
RuleSet: medicationIdentification
* medicinalproduct 0..* class "Description of the medicinal product"
  * intendedName 0..1 ST "Name of prescribed product"
  * intendedCd 0..1 CD "CD-DRUG-CNK + Code (CNK)"
  * deliveredName 0..1 ST "Name of delivered product"
  * deliveredCd 0..1 CD "CD-DRUG-CNK + Code (CNK)"
* substanceproduct 0..* class "Description of the generic product"
  * intendedName 0..1 ST "Name of prescribed product"
    * ^example.valueString = "chloorfenamine + paracetamol oraal 3,2 mg + 240 mg" 
  * intendedCd 0..1 CD "Code of prescribed product (VMPGROUP or CNK)"
    * ^requirements = """
    * S-Value= CD-INNCLUSTER is not supported
    * S-Value= CD-VMPGROUP 
    * SV-value = e.g. LOCALDB
    * ^example.valueString = "0006106"
    """
    * ^comment = "INN is not supported"
  * deliveredName 0..1 ST "Name of delivered product"
  * deliveredCd 0..1 CD "Code of delivered product (CNK)"
    * ^comment = "This has to be CNK, not a substance, because it is a delivered product"

* compoundprescription 0..* class "Description of the compound product"
  * ^comment = "Note that in XML this can directly be populated with the description (as it is in Wallonia)"
  * magistraltext 1..1 ST "Recipe of the prescription"
    * ^example.valueString = "R/ Aluminiumchloride hexahydraat 15 g + Isopropylalcohol 78 g + Gezuiverd water q.s. ad 100 g T"
  * compound 0..0 class "NOT USED"
  * formularyReference 0..0 unknown "TBD"
    // * id 0..1 string "description of the compound prescription"
    // * medicinalProduct 0..1 class "description of the compound prescription"
    // * substance 0..1 class "description of the compound prescription"


RuleSet: periodDefinition
* beginMoment 1..1 class "The beginmoment of the medication/treatment suspension"
    
  * date 1..1 date  ""
    * ^requirements = "Format = yyyy-mm-dd"
  * time 0..1 time ""
    * ^requirements = "Format = HH:MM:SS or HH:MM:SS.xxxxxxx+02:00 or ... "
* endMoment 0..1 class "The end moment of the medication/treatment suspension"
  * date 1..1 date  ""
    * ^requirements = "Format = yyyy-mm-dd"
  * time 0..1 time ""
    * ^requirements = "Format = HH:MM:SS or HH:MM:SS.xxxxxxx+02:00 or ... "

RuleSet: dateMandatory
* date 1..1 date "The date when the line was registered in the schema"
  * ^requirements = """
    * ?To be checked if mandatory
    * Format = yyyy-mm-dd
  """
        
RuleSet: timeMandatory      
* time 1..1 date "The time when the line was registered in the schema"
  * ^requirements = """
    * ?To be checked if mandatory
    * ?Format = hh:mm:ss
  """

  RuleSet: timeNotMandatory      
* time 0..1 date "The time when the line was registered in the schema"
  * ^requirements = """
    * ?To be checked if not mandatory
    * ?Format = hh:mm:ss
  """