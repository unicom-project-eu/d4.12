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
* producedFrom only Reference(ManufacturedItemD412)

* routeOfAdministration // this is 1..* in FHIR spec!
//  * code.coding.system = $100000073345
  * code from routes-and-methods-of-administration-vs
  * ^definition = "EMA IG 6.6"