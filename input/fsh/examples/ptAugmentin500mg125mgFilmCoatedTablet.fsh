Instance: pt1
InstanceOf: Bundle
Usage: #example
* type = #collection

* entry[+].resource = mp-709
* entry[=].fullUrl = "mp-709"

* entry[+].resource = ap-709
* entry[=].fullUrl = "ap-709"

* entry[+].resource = mid-709
* entry[=].fullUrl = "mid-709"

* entry[+].resource = LOC-100002296
* entry[=].fullUrl = "LOC-100002296"

* entry[+].resource = ingredient-837ad7154cf5d94c9f0e79be570d1942
* entry[=].fullUrl = "ingredient-837ad7154cf5d94c9f0e79be570d1942"

* entry[+].resource = ingredient-f671e1a8c419e11c17fd1058437b6c57
* entry[=].fullUrl = "ingredient-f671e1a8c419e11c17fd1058437b6c57"

* entry[+].resource = auth-25928572732679f98d29b3536c8e63d1
* entry[=].fullUrl = "auth-25928572732679f98d29b3536c8e63d1"

* entry[+].resource = ppd-63241
* entry[=].fullUrl = "ppd-63241"



Instance: ap-709
InstanceOf: AdministrableProductD412
Title: "Administrable product Augmentin 500 mg + 125 mg Comprimido revestido por película"
Description: "Augmentin 500 mg + 125 mg Comprimido revestido por película"
Usage: #example

* status = #active

* formOf = Reference(mp-709)

//* administrableDoseForm = $200000000004#100000073665 "Comprimido revestido por película"
//* unitOfPresentation = $200000000014#200000002152 "Comprimido"
* administrableDoseForm = $200000000004#100000073665 "Film-coated tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"


//reference to ManufacturedProduct 
// for: 
* producedFrom = Reference(mid-709)


* routeOfAdministration[+].code = $100000073345#100000073619 "Oral use"
//* routeOfAdministration[+].code = $100000073345#100000073619 "Via oral"


Instance: mp-709
InstanceOf: MedicinalProductD412
Title: "Medicinal Product Augmentin 500 mg + 125 mg Comprimido revestido por película"
Description: "Augmentin 500 mg + 125 mg Comprimido revestido por película (709)"
Usage: #example

//* id = "" 

// MPID ID??
//* identifier[pmsid].value = 
* identifier[mpid].value = "PT-100002296-709"

* type = http://hl7.org/fhir/medicinal-product-type#MedicinalProduct "Medicinal Product"

* domain = $100000000004#100000000012 "Human use"

* status.coding[0] = $200000005003#200000005005 "Provisional"


* legalStatusOfSupply = $100000072051#100000072084 "Medicinal Product subject to medical prescription"


* combinedPharmaceuticalDoseForm = $200000000004#100000073665 "Film-coated tablet"
//* combinedPharmaceuticalDoseForm = $200000000004#100000073665 "Comprimido revestido por película"

 


* classification[+] = $who-atc#J01CR02 "amoxicillin and beta-lactamase inhibitor"
* classification[+] = $100000093533#100000096162 "amoxicillin and beta-lactamase inhibitor"



* name.productName = "Augmentin 500 mg + 125 mg Comprimido revestido por película"
/*
* name.part[invented].part = "Augmentin"
* name.part[strength].part = "500 mg + 125 mg"
* name.part[doseForm].part = "Comprimido revestido por película"
*/

* name.usage.country.coding[ema].code = #100000000501
* name.usage.country.coding[ema].display = "Portuguese Republic"
* name.usage.language = $100000072057#100000072251  "Portuguese"


Instance: mid-709
InstanceOf: TransitionManufacturedItemDefinition
Title: "Manufactured item Augmentin 500 mg + 125 mg Comprimido revestido por película"
Description: "Augmentin 500 mg + 125 mg Comprimido revestido por película"
Usage: #example


* status = #active
//* manufacturedDoseForm = $200000000004#100000073665 "Comprimido revestido por película"
* manufacturedDoseForm = $200000000004#100000073665 "Film-coated tablet"


* unitOfPresentation = $200000000014#200000002152 "Tablet"
//* unitOfPresentation = $200000000014#100000110756 "Comprimido"


*  manufacturer = Reference(LOC-100002296)

Instance: LOC-100002296
InstanceOf: OrganizationD412
Title: "GlaxoSmithkline Produtos Farmacêuticos, Lda."
Description: "GlaxoSmithkline Produtos Farmacêuticos, Lda. MAH"
Usage: #example
* id = "LOC-100002296" 
* identifier[loc].value = "LOC-100002296"
* name = "GlaxoSmithkline Produtos Farmacêuticos, Lda."


//Amoxicilina tri-hidratada//345; 346
Instance: ingredient-837ad7154cf5d94c9f0e79be570d1942
InstanceOf: IngredientD412
Title: "Amoxicilina tri-hidratada"
Description: "ingredient Amoxicilina tri-hidratada with strength 573.96 as Ativo for 709"
Usage: #example

* role = $100000072050#100000072072 "active"
* status = #active
//* substance.code.concept = $sms#100000091596 "Amoxicilina tri-hidratada"
* substance.code.concept = $sms#100000092629 "AMOXICILLIN TRIHYDRATE"

* substance.strength.presentationRatio.numerator = 573.96  $100000110633#100000110655  "milligram(s)"
* substance.strength.presentationRatio.denominator = 1  $200000000014#200000002152  "Tablet"


* substance.strength.referenceStrength.strengthRatio.numerator = 500.0  $100000110633#100000110655  "milligram(s)"
* substance.strength.referenceStrength.strengthRatio.denominator =  1  $200000000014#200000002152  "Tablet"

//* substance.strength.referenceStrength.substance.concept = $sms#100000092629 "Amoxicilina"
//is the id wrong?
* substance.strength.referenceStrength.substance.concept = $sms#100000091596 "Amoxicillin"

// Reference to products item

* for[0] = Reference(mp-709)
* for[+] = Reference(ap-709)
* for[+] = Reference(mid-709)

//Clavulanato de potássio//345; 346
Instance: ingredient-f671e1a8c419e11c17fd1058437b6c57
InstanceOf: IngredientD412
Title: "Clavulanato de potássio"
Description: "ingredient Clavulanato de potássio with strength 148.91 as Ativo for 709"
Usage: #example

* role = $100000072050#100000072072 "active"
* status = #active
//* substance.code.concept = $sms#100000089842 "Clavulanato de potássio"
* substance.code.concept = $sms#100000093061 "Potassium clavulanate"

* substance.strength.presentationRatio.numerator = 148.91  $100000110633#100000110655  "milligram(s)"
* substance.strength.presentationRatio.denominator = 1  $200000000014#200000002152  "Tablet"


* substance.strength.referenceStrength.strengthRatio.numerator = 125.0  $100000110633#100000110655  "milligram(s)"
* substance.strength.referenceStrength.strengthRatio.denominator =  1  $200000000014#200000002152  "Tablet"

//* substance.strength.referenceStrength.substance.concept = $sms#100000093061 "Ácido Clavulânico"
//is the id wrong?
* substance.strength.referenceStrength.substance.concept = $sms#100000089842 "Clavulanic acid"

// Reference to products item

* for[0] = Reference(mp-709)
* for[+] = Reference(ap-709)
* for[+] = Reference(mid-709)

Instance: auth-25928572732679f98d29b3536c8e63d1
InstanceOf: MarketingAuthorisationD412
Title: "Regulated Authorization for Augmentin 500 mg + 125 mg Comprimido revestido por película 16 Comprimido Blister"
Description: "Regulated Authorization for Augmentin 500 mg + 125 mg Comprimido revestido por película 16 Comprimido Blister"
Usage: #example

//* id = "709" 

//* identifier.system = $spor-prod
* identifier.value = "8604702"
* identifier.use = #official

// Reference to MedicinalProductDefinition: 709
* subject = Reference(mp-709)


* type = $220000000060#220000000061 "Marketing Authorisation"
* region = $100000000002#100000000501 "Portuguese Republic"
* status = $100000072049#100000072099  "Valid"


// ERROR[3] - no statusDate INDEX:1

* holder = Reference(LOC-100002296)



Instance: ppd-63241
InstanceOf: PackagedProductD412
Title: "Augmentin 500 mg + 125 mg Comprimido revestido por película 16 Comprimido Blister"
Description: "Augmentin 500 mg + 125 mg Comprimido revestido por película 16 Comprimido Blister"
Usage: #example


* identifier[pcid].value = "PT-100002296-709-50001639"

* name = "Augmentin 500 mg + 125 mg Comprimido revestido por película 16 Comprimido Blister"

* description = "Augmentin 500 mg + 125 mg Comprimido revestido por película 16 Comprimido Blister"

* status = #active


* containedItemQuantity = 16 $200000000014#200000002152 "Tablet"
//* containedItemQuantity = 16 $200000000014#200000002152 "Comprimido"

* marketingStatus.country = $100000000002#100000000501 "Portuguese Republic"
* marketingStatus.status = $100000072052#100000072083 "Marketed"


* packaging
  * quantity = 1
  //* type = $100000073346#100000110756 "Caixa"
  * type = $100000073346#100000073498 "Box"


  * packaging.
    //* type = $100000073346#100000073496 "Blister"
    * type = $100000073346#100000073496 "Blister"

    * containedItem.item.reference = Reference(mid-709)
    * containedItem.amount.value = 16

// for: 
* packageFor = Reference(mp-709)


// Reference to Organization: MAH
//* manufacturer = Reference()

