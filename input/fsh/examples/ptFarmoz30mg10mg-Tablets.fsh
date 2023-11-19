/* Instance: pt1
InstanceOf: Bundle
Usage: #example
* type = #collection

* entry[+].resource = mp-602763
* entry[=].fullUrl = "mp-602763"

* entry[+].resource = ap-602763
* entry[=].fullUrl = "ap-602763"

* entry[+].resource = mid-602763
* entry[=].fullUrl = "mid-602763"

* entry[+].resource = LOC-100002998
* entry[=].fullUrl = "LOC-100002998"

* entry[+].resource = ingredient-bbaa6628d559f300e6d741c40b690efd
* entry[=].fullUrl = "ingredient-bbaa6628d559f300e6d741c40b690efd"


* entry[+].resource = auth-c6f06a4edafef0cede71dad4a973360a
* entry[=].fullUrl = "auth-c6f06a4edafef0cede71dad4a973360a"

* entry[+].resource = ppd-2056581
* entry[=].fullUrl = "ppd-2056581"



//Enalapril, maleato//3559787; 3559790
Instance: ingredient-bbaa6628d559f300e6d741c40b690efd
InstanceOf: PPLIngredient
Title: "Enalapril, maleato"
Description: "ingredient Enalapril, maleato with strength 20.0 as Ativo for 602763"
Usage: #example

* role = $100000072050#100000072072 "active"
* status = #active
//* substance.code.concept = $sms#100000092359 "Enalapril, maleato" //name pt?
//* substance.code.concept = $sms#100000091343 "Enalapril maleate"
* substance.code.concept = $sms#100000092359 "Enalapril"

* substance.strength.presentationRatio.numerator = 20.0  $100000110633#100000110655  "milligram(s)"
* substance.strength.presentationRatio.denominator = 1  $200000000014#200000002152  "Tablet"


* substance.strength.referenceStrength.strengthRatio.numerator = 15.29  $100000110633#100000110655  "milligram(s)"
* substance.strength.referenceStrength.strengthRatio.denominator =  1  $200000000014#200000002152  "Tablet"

//* substance.strength.referenceStrength.substance.concept = $sms#100000091343 "Enalapril"
//* substance.strength.referenceStrength.substance.concept = $sms#100000092359 "Enalapril"
* substance.strength.referenceStrength.substance.concept = $sms#100000091343 "Enalapril maleate"

// Reference to products item
* for[0] = Reference(mp-602763)
* for[+] = Reference(ap-602763)
* for[+] = Reference(mid-602763)



Instance: ap-602763
InstanceOf: PPLAdministrableProductDefinition
Title: "Administrable product Enalapril + Lercanidipina Farmoz 20 mg + 10 mg Comprimido revestido por película"
Description: "Enalapril + Lercanidipina Farmoz 20 mg + 10 mg Comprimido revestido por película"
Usage: #example

* status = #active

* formOf = Reference(mp-602763)

//* administrableDoseForm = $200000000004#100000073665 "Comprimido revestido por película"
//* unitOfPresentation = $200000000014#200000002152 "Comprimido"
* administrableDoseForm = $200000000004#100000073665 "Film-coated tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"


//reference to ManufacturedProduct 
// for: 
* producedFrom = Reference(mid-602763)
* routeOfAdministration[+].code = $100000073345#100000073619 "Oral use"
//* routeOfAdministration[+].code = $100000073345#100000073619 "Via oral"


Instance: mid-602763
InstanceOf: PPLManufacturedItemDefinition
Title: "Manufactured item Enalapril + Lercanidipina Farmoz 20 mg + 10 mg Comprimido revestido por película"
Description: "Enalapril + Lercanidipina Farmoz 20 mg + 10 mg Comprimido revestido por película"
Usage: #example


* status = #active
//* manufacturedDoseForm = $200000000004#100000073665 "Comprimido revestido por película"
* manufacturedDoseForm = $200000000004#100000073665 "Film-coated tablet"


* unitOfPresentation = $200000000014#200000002152 "Tablet"
//* unitOfPresentation = $200000000014#100000110756 "Comprimido"


*  manufacturer = Reference(LOC-100002998)



Instance: mp-602763
InstanceOf: PPLMedicinalProductDefinition
Title: "Medicinal Product Enalapril + Lercanidipina Farmoz 20 mg + 10 mg Comprimido revestido por película"
Description: "Enalapril + Lercanidipina Farmoz 20 mg + 10 mg Comprimido revestido por película (602763)"
Usage: #example

//* id = "" 

// MPID ID??
//* identifier[pmsid].value = 
* identifier[mpid].value = "PT-100002998-602763"

* type = http://hl7.org/fhir/medicinal-product-type#MedicinalProduct "Medicinal Product"

* domain = $100000000004#100000000012 "Human use"

* status.coding[0] = $200000005003#200000005005 "Provisional"


* legalStatusOfSupply = $100000072051#100000072084 "Medicinal Product subject to medical prescription"


* combinedPharmaceuticalDoseForm = $200000000004#100000073665 "Film-coated tablet"
//* combinedPharmaceuticalDoseForm = $200000000004#100000073665 "Comprimido revestido por película"* classification[+] = $who-atc#C09BB02 "enalapril and lercanidipine"
* classification[+] = $100000093533#100000095134 "enalapril and lercanidipine"

* name.productName = "Enalapril + Lercanidipina Farmoz 20 mg + 10 mg Comprimido revestido por película"
* name.part[invented].part = "Enalapril + Lercanidipina Farmoz"
* name.part[strength].part = "20 mg + 10 mg"
* name.part[doseForm].part = "Comprimido revestido por película"

* name.usage.country.coding[ema].code = #100000000501
* name.usage.country.coding[ema].display = "Portuguese Republic"
* name.usage.language = $100000072057#100000072251  "Portuguese"



Instance: auth-c6f06a4edafef0cede71dad4a973360a
InstanceOf: PPLRegulatedAuthorization
Title: "Regulated Authorization for Enalapril + Lercanidipina Farmoz 20 mg + 10 mg Comprimido revestido por película 56 Comprimido Blister"
Description: "Regulated Authorization for Enalapril + Lercanidipina Farmoz 20 mg + 10 mg Comprimido revestido por película 56 Comprimido Blister"
Usage: #example

//* id = "602763" 

//* identifier.system = $spor-prod
* identifier.value = "5685128"
* identifier.use = #official

// Reference to MedicinalProductDefinition: 602763
* subject = Reference(mp-602763)


* type = $220000000060#220000000061 "Marketing Authorisation"
* region = $100000000002#100000000501 "Portuguese Republic"
* status = $100000072049#100000072099  "Valid"


// ERROR[3] - no statusDate INDEX:1324

* holder = Reference(LOC-100002998)


Instance: LOC-100002998
InstanceOf: PPLOrganization
Title: "Farmoz - Sociedade Técnico Medicinal, S.A."
Description: "Farmoz - Sociedade Técnico Medicinal, S.A. MAH"
Usage: #example

* id = "LOC-100002998" 
* identifier[loc].value = "LOC-100002998"
* name = "Farmoz - Sociedade Técnico Medicinal, S.A."




Instance: ppd-2056581
InstanceOf: PPLPackagedProductDefinition
Title: "Enalapril + Lercanidipina Farmoz 20 mg + 10 mg Comprimido revestido por película 56 Comprimido Blister"
Description: "Enalapril + Lercanidipina Farmoz 20 mg + 10 mg Comprimido revestido por película 56 Comprimido Blister"
Usage: #example


* identifier[pcid].value = "PT-100002998-602763-50116347"

* name = "Enalapril + Lercanidipina Farmoz 20 mg + 10 mg Comprimido revestido por película 56 Comprimido Blister"

* description = "Enalapril + Lercanidipina Farmoz 20 mg + 10 mg Comprimido revestido por película 56 Comprimido Blister"

* status = #active


* containedItemQuantity = 56 $200000000014#200000002152 "Tablet"
//* containedItemQuantity = 56 $200000000014#200000002152 "Comprimido"* marketingStatus.country = $100000000002#100000000501 "Portuguese Republic"
* marketingStatus.status = $100000072052#100000072083 "Marketed"


* packaging
  * quantity = 1
  //* type = $100000073346#100000110756 "Caixa"
  * type = $100000073346#100000073498 "Box"


  * packaging.
    //* type = $100000073346#100000073496 "Blister"
    * type = $100000073346#100000073496 "Blister"

    * containedItem.item.reference = Reference(mid-602763)
    * containedItem.amount.value = 56

// for: 
* packageFor = Reference(mp-602763)

// Reference to Organization: MAH
//* manufacturer = Reference()

*/