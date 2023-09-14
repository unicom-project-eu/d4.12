// Logical constraint for package content definition
Invariant:   itemcontent-1
Description: "containedItem.containedPackage or containedItem.manufacturedItem SHALL be present, but not both"
Expression:  "containedPackage.exists() implies manufacturedItem.exists().not()"
Severity:    #error


Logical: MedicinalProduct
Title: "Medicinal Product Logical Model"
Description: "Logical model for a pilot product list's medicinal product"

* identifier 1..* Class "Identifiers of different types"
  * mpId 1..1 II "Medicinal Product Identifier (MPID)"
  * pmsId 0..1 II "EMA PMS Identifier"
  * nationalId 0..* II "National/other identifier. Virtual/nonbranded product identifier should be here, unless it's administrable product related."
* domain 1..1 CD "Domain (human/veterinary)"
* legalStatusOfSupply 1..1 CD "Legal status of supply"
* authorisedDoseForm 1..1 CD "Authorised dose form"
* classification 1..* Class "Classifications"
  * ATC 1..1 CD "ATC classification"
  * narcotic 0..1 CD "Narcotic, psychotropic"
  * classificationOther 0..* CD "Other classification"
* additionalMonitoring 1..1 BL "Black Triangle, a.k.a additional monitoring indicator"
* indication 0..1 Class "Indications for the product"
  * indicationText 0..1 ST "Indication in text format"
  * indicationStructured 0..* CD "Indications as a structured and coded list"
* name 1..* Class "Name of the product - variety of different types of names and languages allowed"
  * fullName 1..1 ST "Full name as registered and readable in SPC."
  * commonName 0..1 ST "Commonly used name, which would appear in product catalogue searches, etc."
  * otherName 0..* ST "Other type of name that may be relevant on national level."
  * nameUsage 0..* Class "Countries and languages where the name is used"
    * jurisdiction 1..1 ST "Country"
    * language 1..1 ST "Language" 
* marketingAuthorisation 0..1 Reference(MarketingAuthorisation) "Marketing authorisation for medicinal product"
* documents 0..* Class "Documents of different types, linked or enclosed, related to product definition"
  * smpc 0..1 Class "Summary of Product Characteristics"
  * pil 0..1 Class "Package Information Leaflet"
  * labelling 0..1 Class "Labelling information"
  * par 0..1 Class "Public assessment report"
  * other 0..* Class "Other document"

* packagedProductDefinition 1..* Class "Packaged product"
  * identifier 0..* Class "Package identifier"
    * pcid 1..1 II "Packaged medicinal product ID (PCID)"
    * nationalId 0..* II "National package identifier"
  * packageName 0..* Class "Short name for describing the package, includes pack size. May have different types and languages?"
    * name 1..1 ST "Name"
    * language 0..1 CD "Language of the name"
  * description 0..1 Class "Package description"
    * descriptionText 1..1 ST "Package description text"
    * language 0..1 CD "Description language"
  * packSize 1..* PQ "Pack size, repeatable for different manufactured items"
  * legalStatusOfSupply 0..1 CD "Legal status of supply on package level"
//1  * marketingAuthorisation 0..* contentReference https://hl7-eu.github.io/unicom-ig/branches/master/StructureDefinition/FullMedicinalProduct#FullMedicinalProduct.marketingAuthorisation "Marketing authorisation on package level"
      //Local representative currently not included, but probably needed in several countries
  * marketingStatus 0..* Class "Marketing status"
    * country 1..1 CD "Country"
    * status 1..1 CD "Status"
  * marketingAuthorisation 0..1 Reference(MarketingAuthorisation) "Marketing authorisation on package level"
  * packaging 1..1 Class "Package"
    * packageType 1..1 CD "Package type"
    * quantity 1..1 PQ "Package quantity (number of this type of items)" //always 1 for the outer package
    * material 0..* CD "Package material"
    * shelfLifeStorage 0..* Class "Shelf life and storage conditions" //TODO fill in
    * innerPackage 0..* Class "Inner Package"
      * containedItem 0..* Class "The content of the inner package"
        * amount 1..1 PQ "Amount of manufacturedItems (solid) or size of the manufactured item (liquid)"
        * obeys itemcontent-1
        * containedPackage 0..* contentReference http://build.fhir.org/ig/unicom-project-eu/d4.12/StructureDefinition-MedicinalProduct-definitions.html#MedicinalProduct.packagedProductDefinition.packaging "Inner Packages"
        * manufacturedItem 1..* Class "Manufactured item" // this can only be there if there are no inner package
          * manufacturedDoseForm 1..1 CD "Manufactured dose form"
          * unitOfPresentation 1..1 CD "Unit of presentation"
          * ingredient 1..* Class "Ingredient"
            * role 1..1 CD "Ingredient role"
            * substance 1..1 CD "Substance"
            * strength 1..* Class "Strength of active or other ingredient"
              * strengthType 1..1 CD "Strength type (concentration or presentation strength)"
              * strength 1..1 RTO "Strength"
                * numerator 1..1 PQ "Numerator"
                * denominator 1..1 PQ "Denominator"
              * referenceStrength 1..* Class "Reference strength"
                * substance 1..1 CD "Substance of reference strength"
                * strength 1..1 RTO "Strength"
                  * numerator 1..1 Class "Numerator"
                  * denominator 1..1 Class "Denominator"
* pharmaceuticalProduct 1..* Class "Pharmaceutical/administrable product"
  * identifier 0..* II "Identifier (international or local, not PhPID)"
  * phpid 0..* CD "PhPID"
  * administrableDoseForm 1..1 CD "Administrable Dose Form"
  * unitOfPresentation 0..1 CD "Unit of presentation"
  * routeOfAdministration 0..* CD "Route of administration"
  * ingredientPhP 1..* Class "Ingredient of the pharmaceutical/administrable product"
    * role 1..1 CD "Ingredient role"
    * substance 1..1 CD "Substance"
    * strength 1..* Class "Strength of active or other ingredient"
      * strengthType 1..1 CD "Strength type (concentration or presentation strength)"
      * strength 1..1 RTO "Strength"
        * numerator 1..1 PQ "Numerator"
        * denominator 1..1 PQ "Denominator"
      * referenceStrength 1..* Class "Reference strength"
        * substance 1..1 CD "Substance"
        * strength 1..1 RTO "Strength"
          * numerator 1..1 PQ "Numerator"
          * denominator 1..1 PQ "Denominator"

Logical: MarketingAuthorisation
Title: "Marketing Authorisation"
Description: "Marketing authorisation data on package or medicinal product level"

* marketingAuthorisation 0..* Class "Marketing Authorisation for the product"
  * marketingAuthorisationNumber 1..* II "Marketing authorisation number"
  * region 1..1 CD "Region"
  * marketingAuthorisationStatus 1..1 CD "Marketing authorisation status"
  * date 0..1 DT "Status date"
  * marketingAuthorisationHolder 1..1 Class "Marketing authorisation holder"
    * locationId 1..1 II "Location identifier"
    * organisationId 0..1 II "Organization identifier"
    * mahName 1..1 ST "Marketing authorisation holder's name"
  * localMAHrepresentative 0..1 Class "Local representative of marketing authorisation holder"
