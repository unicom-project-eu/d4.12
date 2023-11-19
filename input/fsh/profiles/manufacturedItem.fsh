Profile: ManufacturedItemD412
Parent: ManufacturedItemDefinition
Id: ManufacturedItemD412
Title: "Manufactured Item"
Description: """Manufactured Item data"""

* manufacturedDoseForm 1..1 // This is 1..1 in FHIR spec!
* manufacturedDoseForm from pharmaceutical-doseform-vs
  * ^short = "Dose form of the manufactured item (before preparing for administration)"
  * ^definition = "EMA IG 4.11.3"

* unitOfPresentation from unit-of-presentation-vs
  * ^short = "Unit of presentation of the manufactured item (before preparing for administration)"
  * ^definition = "EMA IG 4.11.1"
