Instance: pt10
InstanceOf: Bundle
Usage: #example
* type = #collection

* entry[+].resource = mp-711
* entry[=].fullUrl = "mp-711"

* entry[+].resource = ap-711
* entry[=].fullUrl = "ap-711"

* entry[+].resource = mid-711
* entry[=].fullUrl = "mid-711"

* entry[+].resource = LOC-100002296
* entry[=].fullUrl = "LOC-100002296"

* entry[+].resource = ingredient-995936cb3157f2c7cd2882a63b3b0989
* entry[=].fullUrl = "ingredient-995936cb3157f2c7cd2882a63b3b0989"

* entry[+].resource = ingredient-fa113063a90b9c5e88e41dd43c16feaa
* entry[=].fullUrl = "ingredient-fa113063a90b9c5e88e41dd43c16feaa"

* entry[+].resource = auth-43b819a7b0113178341ea344cbfcffcb
* entry[=].fullUrl = "auth-43b819a7b0113178341ea344cbfcffcb"

* entry[+].resource = ppd-1215
* entry[=].fullUrl = "ppd-1215"


Instance: mid-1257
InstanceOf: PPLManufacturedItemDefinition
Title: "Manufactured item Brufen 200 mg Comprimido revestido por película"
Description: "Brufen 200 mg Comprimido revestido por película"
Usage: #example


* status = #active
//* manufacturedDoseForm = $200000000004#100000073665 "Comprimido revestido por película"
* manufacturedDoseForm = $200000000004#100000073665 "Film-coated tablet"


* unitOfPresentation = $200000000014#200000002152 "Tablet"
//* unitOfPresentation = $200000000014#100000110756 "Comprimido"


*  manufacturer = Reference(LOC-100001337)



Instance: ap-1257
InstanceOf: PPLAdministrableProductDefinition
Title: "Administrable product Brufen 200 mg Comprimido revestido por película"
Description: "Brufen 200 mg Comprimido revestido por película"
Usage: #example

* status = #active

* formOf = Reference(mp-1257)

//* administrableDoseForm = $200000000004#100000073665 "Comprimido revestido por película"
//* unitOfPresentation = $200000000014#200000002152 "Comprimido"
* administrableDoseForm = $200000000004#100000073665 "Film-coated tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"


//reference to ManufacturedProduct 
// for: 
* producedFrom = Reference(mid-1257)




 

* routeOfAdministration[+].code = $100000073345#100000073619 "Oral use"
//* routeOfAdministration[+].code = $100000073345#100000073619 "Via oral"



//Ibuprofeno//11913
Instance: ingredient-eccfe2bb04a4e9d66f6a634e7317d8ac
InstanceOf: PPLIngredient
Title: "Ibuprofeno"
Description: "ingredient Ibuprofeno with strength 200.0 as Ativo for 1257"
Usage: #example

* role = $100000072050#100000072072 "active"
* status = #active
//* substance.code.concept = $sms#100000090365 "Ibuprofeno"
* substance.code.concept = $sms#100000090365 "Ibuprofen"

* substance.strength.presentationRatio.numerator = 200.0  $100000110633#100000110655  "milligram(s)"
* substance.strength.presentationRatio.denominator = 1  $200000000014#200000002152  "Tablet"


* substance.strength.referenceStrength.strengthRatio.numerator = 200.0  $100000110633#100000110655  "milligram(s)"
* substance.strength.referenceStrength.strengthRatio.denominator =  1  $200000000014#200000002152  "Tablet"

//* substance.strength.referenceStrength.substance.concept = $sms#100000090365 "Ibuprofeno"
//is the id wrong?
* substance.strength.referenceStrength.substance.concept = $sms#100000090365 "Ibuprofen"

// Reference to products item

* for[0] = Reference(mp-1257)
* for[+] = Reference(ap-1257)
* for[+] = Reference(mid-1257)



Instance: mp-1257
InstanceOf: PPLMedicinalProductDefinition
Title: "Medicinal Product Brufen 200 mg Comprimido revestido por película"
Description: "Brufen 200 mg Comprimido revestido por película (1257)"
Usage: #example

//* id = "" 

// MPID ID??
//* identifier[pmsid].value = 
* identifier[mpid].value = "PT-100001337-1257"

* type = http://hl7.org/fhir/medicinal-product-type#MedicinalProduct "Medicinal Product"

* domain = $100000000004#100000000012 "Human use"

* status.coding[0] = $200000005003#200000005005 "Provisional"


* legalStatusOfSupply = $100000072051#100000072084 "Medicinal Product subject to medical prescription"


* combinedPharmaceuticalDoseForm = $200000000004#100000073665 "Film-coated tablet"
//* combinedPharmaceuticalDoseForm = $200000000004#100000073665 "Comprimido revestido por película"

 


* classification[+] = $who-atc#M01AE01 "ibuprofen"
* classification[+] = $100000093533#100000096928 "ibuprofen"



* name.productName = "Brufen 200 mg Comprimido revestido por película"
/*
* name.part[invented].part = "Brufen"
* name.part[strength].part = "200 mg"
* name.part[doseForm].part = "Comprimido revestido por película"
*/
* name.usage.country.coding[ema].code = #100000000501
* name.usage.country.coding[ema].display = "Portuguese Republic"
* name.usage.language = $100000072057#100000072251  "Portuguese"



Instance: ppd-2052
InstanceOf: PPLPackagedProductDefinition
Title: "Brufen 200 mg Comprimido revestido por película 60 Comprimido Blister"
Description: "Brufen 200 mg Comprimido revestido por película 60 Comprimido Blister"
Usage: #example


* identifier[pcid].value = "PT-100001337-1257-50004239"

* name = "Brufen 200 mg Comprimido revestido por película 60 Comprimido Blister"

* description = "Brufen 200 mg Comprimido revestido por película 60 Comprimido Blister"

* status = #active


* containedItemQuantity = 60 $200000000014#200000002152 "Tablet"
//* containedItemQuantity = 60 $200000000014#200000002152 "Comprimido"

* marketingStatus.country = $100000000002#100000000501 "Portuguese Republic"
* marketingStatus.status = $100000072052#100000072083 "Marketed"


* packaging
  * quantity = 1
  //* type = $100000073346#100000110756 "Caixa"
  * type = $100000073346#100000073498 "Box"


  * packaging.
    //* type = $100000073346#100000073496 "Blister"
    * type = $100000073346#100000073496 "Blister"

    * containedItem.item.reference = Reference(mid-1257)
    * containedItem.amount.value = 60

// for: 
* packageFor = Reference(mp-1257)


// Reference to Organization: MAH
//* manufacturer = Reference()



Instance: auth-f20f1907c151209f2bf5622c97957adc
InstanceOf: PPLRegulatedAuthorization
Title: "Regulated Authorization for Brufen 200 mg Comprimido revestido por película 60 Comprimido Blister"
Description: "Regulated Authorization for Brufen 200 mg Comprimido revestido por película 60 Comprimido Blister"
Usage: #example

//* id = "1257" 

//* identifier.system = $spor-prod
* identifier.value = "8254078"
* identifier.use = #official

// Reference to MedicinalProductDefinition: 1257
* subject = Reference(mp-1257)


* type = $220000000060#220000000061 "Marketing Authorisation"
* region = $100000000002#100000000501 "Portuguese Republic"
* status = $100000072049#100000072099  "Valid"


// ERROR[3] - no statusDate INDEX:10

* holder = Reference(LOC-100001337)

Instance: LOC-100001337
InstanceOf: PPLOrganization
Title: "BGP Products, Unipessoal Lda."
Description: "BGP Products, Unipessoal Lda. MAH"
Usage: #example
* id = "LOC-100001337" 
* identifier[loc].value = "LOC-100001337"
* name = "BGP Products, Unipessoal Lda."
