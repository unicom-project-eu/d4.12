
// PROFILE: Medicinal Product Definition

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
// Slicing removed and preferred binding added to suppress QA errors about value sets (r4b) TO DO
//* classification from SporAtc (preferred)
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


// PROFILE: Regulated Authorisation 
Profile: MarketingAuthorisationD412
Parent: RegulatedAuthorization
Id: MarketingAuthorisationD412
Title: "Marketing Authorisation"
Description: """Marketing Authorisation (Regulated Authorization) data"""

* identifier 0..*
  * ^short = "Marketing authorisation number"
  * ^definition = "EMA IG 2.2"
  * system = "http://ema.europa.eu/fhir/marketingAuthorizationNumber" // this is actually wrongish as the MA number may not be unique across EU

* subject only Reference(MedicinalProductD412 or PackagedProductD412)
* subject 0..*
  * ^short = "Reference to the medicinal product or a single package, depending on how the MA has been issued"

* type 0..1
* type = $220000000060#220000000061 "Marketing Authorisation"

* region from country-ema-vs
  * ^definition = "EMA IG 2.3"

* status 0..1
  * coding.system = $100000072049
  * ^short = "Marketing authorisation status"
  * ^definition = "EMA IG 2.4"

* statusDate
  * ^short = "Issue/changing date of the marketing authorisation"
  * ^definition = "EMA IG 2.5"

* holder 0..1
* holder only Reference(OrganizationD412)
  * ^definition = "EMA IG 2.8"


// PROFILE: Manufactured Item Definition
Profile: TransitionManufacturedItemDefinition
Parent: ManufacturedItemDefinition
Id: TransitionManufacturedItemDefinition
Title: "Manufactured Item"
Description: """Manufactured Item data"""

* manufacturedDoseForm 1..1 // This is 1..1 in FHIR spec!
* manufacturedDoseForm from pharmaceutical-doseform-vs
  * ^short = "Dose form of the manufactured item (before preparing for administration)"
  * ^definition = "EMA IG 4.11.3"

* unitOfPresentation from unit-of-presentation-vs
  * ^short = "Unit of presentation of the manufactured item (before preparing for administration)"
  * ^definition = "EMA IG 4.11.1"


// PROFILE: Pharmaceutical/ Administrable Product
Profile: AdministrableProductD412
Parent: AdministrableProductDefinition
Id: AdministrableProductD412
Title: "Administrable/Pharmaceutical Product"
Description: """Administrable Product data"""

* identifier
  * ^short = "An identifier for this particular administrable version of the product (not PhPID)"

* formOf 0..*
  * ^short = "Reference to the Medicinal Product"
* formOf only Reference(MedicinalProductD412)

* administrableDoseForm from pharmaceutical-doseform-vs
//  * coding.system = $200000000004
  * ^short = "Dose form of the administrable product (after preparing for administration)"
  * ^definition = "EMA IG 6.2"

* unitOfPresentation from unit-of-presentation-vs
//  * coding.system = $200000000014
  * ^short = "Unit of presentation of the administrable product (after preparing for administration). Not applicable for certain products/packaging."
  * ^definition = "EMA IG 6.3"

* producedFrom
  * ^short = "References to manufactured items that are used in the preparation of this administrable product"
* producedFrom only Reference(TransitionManufacturedItemDefinition)

* routeOfAdministration // this is 1..* in FHIR spec!
//  * code.coding.system = $100000073345
  * code from routes-and-methods-of-administration-vs
  * ^definition = "EMA IG 6.6"


// PROFILE: Ingredient
Profile: IngredientD412
Parent: Ingredient
Id: IngredientD412
Title: "Ingredient"
Description: """Ingredient data"""

* for 0..*
  * ^short = "Reference to the medicinal product, pharmaceutical product and/or manufactured item where the ingredient is used"
* for only Reference(MedicinalProductD412 or AdministrableProductD412 or TransitionManufacturedItemDefinition)

* role // This is 1..1 in FHIR spec! 
  * ^short = "Role of the ingredient. PPL data normally only includes active ingredients."
  * ^definition = "EMA IG 5.1"
//default * role = $100000072050#100000072072 "Active"

* substance
  * code from SubstancesSMS (example)
//  * code.concept.coding.system = $sms 
  * ^short = "Substance code from EMA SMS"
  * ^definition = "EMA IG 5.5"

  * strength 0..*
    * ^definition = "EMA IG 5.5.2"
    * presentationRatio
      * ^short = "Strength per unit of presentation (10mg/vial or 10mg/0.5ml where 0.5ml is the size of the vial)"
      * ^definition = "EMA IG 5.5.2"
    //  * numerator.comparator.coding.system = $100000000008 // TO DO: not easily extendable, what to do with it?

      * numerator.system = $100000110633
      * numerator from unit-of-measurement-vs

    //  * denominator from all-units-vs (unit of presentation or unit of presentation)
      
    * concentrationRatio
      * ^short = "Strength per unit of measurement (20mg/1ml)"
      * ^definition = "EMA IG 5.5.2"
 

    //  * numerator.system = $100000110633
    //  * numerator from unit-of-measurement-vs

    //  * denominator.system = $100000110633
    //  * denominator.code from unit-of-measurement-vs

    * referenceStrength
      * ^definition = "EMA IG 5.5.3. According to EMA, this is a mandatory element for all products, which is not necessarily accepted by all NCAs, and it is ambivalent in ISO IDMP."
      * ^short = "Strenth expressed in terms of a reference substance; reference strength type not distinguished. According to EMA IG, all products need to have reference strentgh (repeating the strentgh, if needed)"
      * substance 1..1
      * substance from SubstancesSMS (example)
        * ^short = "Substance code from EMA SMS" 
      * strengthRatio // This is 1..1 in FHIR spec!
        * numerator.system = $100000110633
        * numerator from unit-of-measurement-vs

        * denominator.code from all-units-vs

        
// PROFILE: Packaged Product
Profile: PackagedProductD412
Parent: PackagedProductDefinition
Id: PackagedProductD412
Title: "Packaged Product"
Description: """Packaged Product data"""

* identifier
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "system"
  * ^slicing.rules = #open
  * ^short = "Identifier for the packaged product: PCID, national ID, or other"
  * ^definition = "Identifier for the packaged product: PCID, national code or other."
* identifier contains
  pcid 0..1
//  Other identifiers (national, etc) are allowed
* identifier[pcid]
  * system = "http://ema.europa.eu/example/pcid"
  * ^short = "PCID for the product. Consists of MPID + unique package code. For the same product PCID is different if the package material is different."
  * ^definition = "EMA IG 4.1"

* packageFor only Reference(MedicinalProductD412)
* packageFor 0..*

* containedItemQuantity from unit-of-presentation-vs
//  * system = $200000000014
  * ^short = "Pack size. Repeated for combination packages."
  * ^definition = "EMA IG 4.4"

* description 0..1
  * ^definition = "EMA IG 4.2"
// TO DO description language as an extension. system = $100000072057

* legalStatusOfSupply 0..1
  * ^short = "Legal status of supply on the packaged product level."
  * ^definition = "EMA IG 4.5. Legal status of supply on the packaged product level. The same information can be repeated/differentiated on the medicinal product level"
  * code from legal-status-for-the-supply-vs
  * jurisdiction from country-ema-vs

* marketingStatus
  * ^definition = "EMA IG 4.6"
  * country from country-ema-vs
  * status 1..1 // This is 1..1 in core FHIR spec
    * coding.system = $100000072052

* packaging 0..1
  * type 0..1
    * ^short = "Container type"
    * ^definition = "EMA IG 4.8.1"
    * coding.system = $100000073346
  
  * quantity 0..1
    * ^definition = "EMA IG 4.8.5"
  
  * material // from material-vs; system = $200000003199
    * ^definition = "EMA IG 4.8.7"
 
  * shelfLifeStorage
    * ^definition = "EMA IG 4.12"
//    * type.coding.system = $100000073343


  * containedItem
    * ^short = "An item (inner package or manufactured item) within the packaging"
    * ^definition = "EMA IG 4.9 or 4.8.3"
    * item only CodeableReference(PackagedProductD412 or TransitionManufacturedItemDefinition)
    * amount
      * ^short = "Number of the manufactured items (e.g. tablets) in this package layer or the amount of manufactured item (e.g. 20 g) in the unit of presentation defined in manufactured item definition"
      * ^definition = "EMA IG 4.11.2"
    //  * code from all-units-vs (unit of presentation or unit of measurement)



// TO DO: I'm not sure we want to use Organisation as a separate resource, but right now it is. See the comment at RegulatedAuthorization
Profile: OrganizationD412
Parent: Organization
Id: OrganizationD412
Title: "Organization"
Description: """Marketing Authorisation Holder (Organization) data"""

* identifier 
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "system"
  * ^slicing.rules = #open
  * ^short = "Identifier for the marketing authorisation holder"
  * ^definition = "EMA IG 2.8"

* identifier contains
  loc 0..1 and
  org 0..1

* identifier[loc] 
  * system = $loc-id
  * ^short = "Location ID from EMA SPOR OMS"

* identifier[org]
  * system = $org-id
  * ^short = "Organisation ID from EMA SPOR OMS"

* name 0..1
  * ^short = "Marketing authorisation holder's name from OMS"


  /* PROFILE: Bundle for one full product. NOT IN USE - current examples don't have slices, so they would break.
Profile: TransitionBundle
Parent: Bundle
Id: TransitionBundle
Title: "Medicinal Product Bundle"
Description: """Medicinal Product Bundle"""
* type = #transaction (exactly) // or something else
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource.meta.profile"
* entry ^slicing.rules = #open

* entry contains
    MedicinalProduct 1..1 and
    MarketingAuthorisation 0..* and
    PharmaceuticalProduct 0..* and
    ManufacturedItem 1..* and
    PackagedProduct 1..* and
    Ingredient 1..* and
    MAH 0..1

* entry[MedicinalProduct].resource only MedicinalProductD412
* entry[MedicinalProduct] ^short = "MedicinalProduct resource"
* entry[MedicinalProduct] ^definition = "You can only have one medicinal product per bundle. This is the centre point for all the other resources connected to the definition of this product."

* entry[MarketingAuthorisation] ^short = "Marketing authorisation"
* entry[MarketingAuthorisation].resource only MarketingAuthorisationD412

* entry[PharmaceuticalProduct] ^short = "Pharmaceutical/administrable product"
* entry[PharmaceuticalProduct].resource only AdministrableProductD412

* entry[ManufacturedItem] ^short = "Manufactured Item/Product"
* entry[ManufacturedItem].resource only TransitionManufacturedItemDefinition

* entry[PackagedProduct] ^short = "Packaged product"
* entry[PackagedProduct].resource only PackagedProductD412

* entry[Ingredient] ^short = "Ingredient"
* entry[Ingredient].resource only IngredientD412

* entry[MAH] ^short = "Marketing authorisation holder"
* entry[MAH].resource only OrganizationD412
*/