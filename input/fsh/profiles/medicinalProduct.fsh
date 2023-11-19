Profile: MedicinalProductD412
Parent: MedicinalProductDefinition
Id: MedicinalProductD412
Title: "Medicinal Product"
Description: """Medicinal Product data"""


* identifier 
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "system"
  * ^slicing.rules = #open
  * ^short = "Identifier for the medicinal product: MPID, EMA PMS ID, national ID, or other"
  * ^definition = "EMA IG 1.2 & 1.3. Identifier for the medicinal product: MPID, EMA PMS ID, national ID, or other. Not to be used for package or pharmaceutical product identifiers."
* identifier contains
  mpid 0..1 and
  pmsid 0..1
// Other identifiers (national codes, etc) are allowed

* identifier[mpid] 
  * system = "http://ema.europa.eu/fhir/mpId"
  * ^short = "MPID"
  * ^definition = "EMA IG 1.2. MPID if exists. For UNICOM testing data fake MPIDs are used (Country code + MAH LocID + unique code). "

* identifier[pmsid]
  * system = "http://ema.europa.eu/fhir/pmsId"
  * ^short = "PMS ID"
  * ^definition = "EMA IG 1.1. EMA Product Management System identifier if exists. For UNICOM testing data fake PMS IDs can be used"

* domain 0..1 
* domain from domain-vs
// default * domain = $100000000004#100000000012 "Human use"
  * ^definition = "EMA IG 1.3"

* status 0..1
// EMA IG or FHIR status  
// default * status = $200000005003#200000005004 'Current'
  * ^short = "Status of the product's data. Default 200000005004 'Current'"

* legalStatusOfSupply from legal-status-for-the-supply-vs
  * ^short = "Legal status of supply on the medicinal product level."
  * ^definition = "EMA IG 1.7. Legal status of supply on the medicinal product level. The same information can be repeated/differentiated on the package level"

* combinedPharmaceuticalDoseForm from authorised-doseform-vs 
  * ^short = "Authorised dose form for the product, incl combination package dose forms"
  * ^definition = "EMA IG 1.5 & 1.6. Authorised dose form for the whole product. As applicable in one of the SPOR RMS list Combined pharmaceutical dose form, Pharmaceutical dose form, Combined term, Combination Package"

* classification
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "coding.system"
  * ^slicing.rules = #open
  * ^short = "ATC or other classification"
  * ^definition = "EMA IG 1.13"

* classification contains
  atc 0..*

* classification[atc]
  * coding 
    * ^slicing.discriminator.type = #pattern
    * ^slicing.discriminator.path = "system"
    * ^slicing.rules = #open
    * ^short = "ATC classification"
    * ^definition = "EMA IG 1.13.3"
  * coding contains
    ema 0..1 and
    who 0..1
  * coding[ema]
    * system = $100000093533
    * ^short = "ATC classification as EMA SPOR code"
  * coding[who]
    * system = $who-atc
    * ^short = "ATC classification as WHO ATC code"


* name
  * ^definition = "EMA IG 1.14"
  * productName 1..1
    * ^definition = "EMA IG 1.14.1"

  * usage
    * ^definition = "EMA IG 1.14.2"
    * country.coding
      * ^slicing.discriminator.type = #pattern
      * ^slicing.discriminator.path = "system"
      * ^slicing.rules = #open
      * ^short = "EMA or ISO codes for country"
    * country.coding contains
        ema 0..1 and
        iso 0..1
    * country.coding[ema] // from country-ema-vs
      * system = $100000000002
    
    * country.coding[iso] // from country-iso-vs
      * system = $iso-country
    

    * language.coding
      * ^slicing.discriminator.type = #pattern
      * ^slicing.discriminator.path = "system"
      * ^slicing.rules = #open
      * ^short = "EMA or ISO codes for country"
    * language.coding contains
        ema 0..1 and
        bcp 0..1
    * language.coding[ema] // from language-ema-vs
      * system = $100000072057
    
    * language.coding[bcp] // from language-bcp-vs
      * system = $BCP47







