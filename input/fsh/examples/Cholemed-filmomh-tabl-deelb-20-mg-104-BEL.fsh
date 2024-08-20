/*
Instance: Cholemed-20mg-BE-MPD-FULL
InstanceOf: Bundle
Usage: #example
* type = #searchset
* entry[0].fullUrl = "http://unicom-project.eu/fhir/d4-12/MedicinalProductDefinition/Cholemed-filmomh-tabl-deelb-20-mg-104-BEL-MPD"
* entry[=].resource = Cholemed-filmomh-tabl-deelb-20-mg-104-BEL-MPD
* entry[=].search.mode = #match
* entry[+].fullUrl = "http://unicom-project.eu/fhir/d4-12/AdministrableProductDefinition/Cholemed-filmomh-tabl-deelb-20-mg-104-BEL-APD"
* entry[=].resource = Cholemed-filmomh-tabl-deelb-20-mg-104-BEL-APD
* entry[=].search.mode = #include
* entry[+].fullUrl = "http://unicom-project.eu/fhir/d4-12/I-BEL-104-Cholemed-filmomh-tabl-deelb-20-mg"
* entry[=].resource = I-BEL-104-Cholemed-filmomh-tabl-deelb-20-mg
* entry[=].search.mode = #include
* entry[+].fullUrl = "http://unicom-project.eu/fhir/d4-12/PackagedProductDefinition/Cholemed-filmomh-tabl-deelb-20-mg-104-BEL-PPD"
* entry[=].resource = Cholemed-filmomh-tabl-deelb-20-mg-104-BEL-PPD
* entry[=].search.mode = #include
* entry[+].fullUrl = "http://unicom-project.eu/fhir/d4-12/RegulatedAuthorization/Cholemed-filmomh-tabl-deelb-20-mg-104-BEL-RA"
* entry[=].resource = Cholemed-filmomh-tabl-deelb-20-mg-104-BEL-RA
* entry[=].search.mode = #include
* entry[+].fullUrl = "http://unicom-project.eu/fhir/d4-12/ManufacturedItemDefinition/Cholemed-filmomh-tabl-deelb-20-mg-104-BEL-MID"
* entry[=].resource = Cholemed-filmomh-tabl-deelb-20-mg-104-BEL-MID
* entry[=].search.mode = #include
* entry[+].fullUrl = "http://unicom-project.eu/fhir/d4-12/Organization/LOC-1558-Amophar"
* entry[=].resource = LOC-1558-Amophar
* entry[=].search.mode = #include

Instance: Cholemed-filmomh-tabl-deelb-20-mg-104-BEL-MPD
InstanceOf: MedicinalProductD412
Usage: #inline
* identifier.system = "http://ema.europa.eu/fhir/mpId"
* identifier.value = "Cholemed-filmomh-tabl-deelb-20-mg-104-BEL-MPD"
* domain = $100000000004#100000000012 "Human use"
* status = $200000005003#200000005004 "Current"
* combinedPharmaceuticalDoseForm = $200000000004#100000073665 "Film-coated tablet"
* legalStatusOfSupply = $100000072051#100000072084 "Medicinal Product subject to medical prescription"
* classification[0] = $100000093533#100000095169 "simvastatin"
* classification[+] = $who-atc#C10AA01 "simvastatin"
* name.productName = "Cholemed filmomh. tabl. (deelb.) 20 mg"
* name.usage.country = $100000000002#100000000337 "Kingdom of Belgium"
* name.usage.language = $100000072057#100000072169 "Dutch"

Instance: Cholemed-filmomh-tabl-deelb-20-mg-104-BEL-APD
InstanceOf: AdministrableProductD412
Usage: #inline
* status = #active
* formOf = Reference(Cholemed-filmomh-tabl-deelb-20-mg-104-BEL-MPD)
* administrableDoseForm = $200000000004#100000073665 "Film-coated tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"
* producedFrom = Reference(Cholemed-filmomh-tabl-deelb-20-mg-104-BEL-MID)
* routeOfAdministration.code = $100000073345#100000073619 "Oral use"

Instance: I-BEL-104-Cholemed-filmomh-tabl-deelb-20-mg
InstanceOf: IngredientD412
Usage: #inline
* status = #active
* for[0] = Reference(Cholemed-filmomh-tabl-deelb-20-mg-104-BEL-MPD)
* for[+] = Reference(Cholemed-filmomh-tabl-deelb-20-mg-104-BEL-MID)
* for[+] = Reference(Cholemed-filmomh-tabl-deelb-20-mg-104-BEL-APD)
* role = $100000072050#100000072072 "Active"
* substance.code.concept = $sms#100000091786 "Simvastatin"
* substance.strength.presentationRatio.numerator = 20 https://spor.ema.europa.eu/v1/lists/100000110633#100000110655 "milligram(s)"
* substance.strength.presentationRatio.denominator = 1 https://spor.ema.europa.eu/v1/lists/100000110633#200000002152 "Tablet"
* substance.strength.referenceStrength.substance.concept = $sms#100000091343 "simvastatine"
* substance.strength.referenceStrength.strengthRatio.numerator = 20 https://spor.ema.europa.eu/v1/lists/100000110633#100000110655 "milligram(s)"
* substance.strength.referenceStrength.strengthRatio.denominator = 1 https://spor.ema.europa.eu/v1/lists/100000110633#200000002152 "Tablet"

Instance: Cholemed-filmomh-tabl-deelb-20-mg-104-BEL-PPD
InstanceOf: PackagedProductD412
Usage: #inline
* identifier.system = "http://ema.europa.eu/example/pcid"
* identifier.value = "BEL-BEL-simvastatine-Amophar-film-coated-tablet-84-x-2"
* packageFor = Reference(Cholemed-filmomh-tabl-deelb-20-mg-104-BEL-MPD)
* containedItemQuantity = 84 https://spor.ema.europa.eu/v1/lists/200000000014#200000002152 "Tablet"
* description = "Mock description"
* marketingStatus.country = $100000000002#100000000337 "Kingdom of Belgium"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
* packaging.packaging.containedItem.item.reference = Reference(Cholemed-filmomh-tabl-deelb-20-mg-104-BEL-MID)
* packaging.packaging.containedItem.amount.value = 84

Instance: Cholemed-filmomh-tabl-deelb-20-mg-104-BEL-RA
InstanceOf: MarketingAuthorisationD412
Usage: #inline
* identifier.value = "1558"
* subject = Reference(Cholemed-filmomh-tabl-deelb-20-mg-104-BEL-MPD)
* type = $220000000060#220000000061 "Marketing Authorisation"
* region = $100000000002#100000000337 "Kingdom of Belgium"
* status = $100000072049#200000017708 "Valid - Renewed/Varied"
* holder = Reference(LOC-1558-Amophar)

Instance: Cholemed-filmomh-tabl-deelb-20-mg-104-BEL-MID
InstanceOf: ManufacturedItemD412
Usage: #inline
* status = #active
* manufacturedDoseForm = $200000000004#100000073665 "Film-coated tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"

Instance: LOC-1558-Amophar
InstanceOf: OrganizationD412
Usage: #inline
* identifier.system = "https://spor.ema.europa.eu/v1/locations"
* identifier.value = "1558"
* name = "Amophar"
*/