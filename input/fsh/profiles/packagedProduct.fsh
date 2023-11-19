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
    * item only Reference(PackagedProductD412 or ManufacturedItemD412)
    * amount
      * ^short = "Number of the manufactured items (e.g. tablets) in this package layer or the amount of manufactured item (e.g. 20 g) in the unit of presentation defined in manufactured item definition"
      * ^definition = "EMA IG 4.11.2"
    //  * code from all-units-vs (unit of presentation or unit of measurement)
