Instance: 7342da26-03e8-4e03-8b01-fe677d73da33
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry[0].fullUrl = "http://unicom-project.eu/fhir/d4-12/MedicinalProductDefinition/Brufen-tabl-verl-afgifte-Retard-800-mg-53-BEL-MPD"
* entry[=].resource = Brufen-tabl-verl-afgifte-Retard-800-mg-53-BEL-MPD
* entry[=].search.mode = #match
* entry[+].fullUrl = "http://unicom-project.eu/fhir/d4-12/PackagedProductDefinition/Brufen-tabl-verl-afgifte-Retard-800-mg-53-BEL-PPD"
* entry[=].resource = Brufen-tabl-verl-afgifte-Retard-800-mg-53-BEL-PPD
* entry[=].search.mode = #include
* entry[+].fullUrl = "http://unicom-project.eu/fhir/d4-12/AdministrableProductDefinition/Brufen-tabl-verl-afgifte-Retard-800-mg-53-BEL-APD"
* entry[=].resource = Brufen-tabl-verl-afgifte-Retard-800-mg-53-BEL-APD
* entry[=].search.mode = #include
* entry[+].fullUrl = "http://unicom-project.eu/fhir/d4-12/Ingredient/I-BEL-53-Brufen-tabl-verl-afgifte-Retard-800-mg"
* entry[=].resource = I-BEL-53-Brufen-tabl-verl-afgifte-Retard-800-mg
* entry[=].search.mode = #include
* entry[+].fullUrl = "http://unicom-project.eu/fhir/d4-12/RegulatedAuthorization/Brufen-tabl-verl-afgifte-Retard-800-mg-53-BEL-RA"
* entry[=].resource = Brufen-tabl-verl-afgifte-Retard-800-mg-53-BEL-RA
* entry[=].search.mode = #include
* entry[+].fullUrl = "http://unicom-project.eu/fhir/d4-12/Organization/LOC-1447-Mylan-EPD"
* entry[=].resource = LOC-1447-Mylan-EPD
* entry[=].search.mode = #include
* entry[+].fullUrl = "http://unicom-project.eu/fhir/d4-12/ManufacturedItemDefinition/Brufen-tabl-verl-afgifte-Retard-800-mg-53-BEL-MID"
* entry[=].resource = Brufen-tabl-verl-afgifte-Retard-800-mg-53-BEL-MID
* entry[=].search.mode = #include

Instance: Brufen-tabl-verl-afgifte-Retard-800-mg-53-BEL-MPD
InstanceOf: MedicinalProductDefinition
Usage: #inline
* meta.versionId = "3"
* meta.lastUpdated = "2023-07-26T13:04:04.432+00:00"
* meta.source = "#LaNNql0b6r4l1SiK"
* meta.profile = "http://unicom-project.eu/fhir/StructureDefinition/PPLMedicinalProductDefinition"
* identifier.system = "http://ema.europa.eu/fhir/mpId"
* identifier.value = "Brufen-tabl-verl-afgifte-Retard-800-mg-53-BEL-MPD"
* domain = $100000000004#100000000012 "Human use"
* status = $200000005003#200000005004 "Provisional"
* combinedPharmaceuticalDoseForm = $200000000004#100000073683 "Prolonged-release tablet"
* legalStatusOfSupply = $100000072051#100000072084 "Medicinal Product subject to medical prescription"
* classification[0] = $100000093533#100000096928 "ibuprofen"
* classification[+] = $who-atc#N03AF01 "ibuprofen"
* name.productName = "Brufen tabl. verl. afgifte Retard 800 mg"
* name.usage.country = $100000000002#100000000337 "Kingdom of Belgium"
* name.usage.language = $100000072057#100000072169 "Dutch"

Instance: Brufen-tabl-verl-afgifte-Retard-800-mg-53-BEL-PPD
InstanceOf: PackagedProductDefinition
Usage: #inline
* meta.versionId = "2"
* meta.lastUpdated = "2023-05-18T12:50:25.067+00:00"
* meta.source = "#0qMwCcuvd4pP9YxD"
* meta.profile = "http://unicom-project.eu/fhir/StructureDefinition/PPLPackagedProductDefinition"
* identifier.system = "http://ema.europa.eu/example/pcid"
* identifier.value = "BEL-BEL-ibuprofen-Mylan-EPD-prolonged-release-tablet-6"
* packageFor = Reference(Brufen-tabl-verl-afgifte-Retard-800-mg-53-BEL-MPD)
* containedItemQuantity = 60 https://spor.ema.europa.eu/v1/lists/200000000014#200000002152 "Tablet"
* description = "Mock description"
* marketingStatus.country = $100000000002#100000000337 "Kingdom of Belgium"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
* packaging.packaging.containedItem.item.reference = Reference(Brufen-tabl-verl-afgifte-Retard-800-mg-53-BEL-MID)
* packaging.packaging.containedItem.amount.value = 60

Instance: Brufen-tabl-verl-afgifte-Retard-800-mg-53-BEL-APD
InstanceOf: AdministrableProductDefinition
Usage: #inline
* meta.versionId = "1"
* meta.lastUpdated = "2023-07-17T14:14:03.894+00:00"
* meta.source = "#Dk9XmEeFuCn5gBux"
* meta.profile = "http://unicom-project.eu/fhir/StructureDefinition/PPLAdministrableProductDefinition"
* status = #active
* formOf = Reference(Brufen-tabl-verl-afgifte-Retard-800-mg-53-BEL-MPD)
* administrableDoseForm = $200000000004#100000073683 "Prolonged-release tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"
* producedFrom = Reference(Brufen-tabl-verl-afgifte-Retard-800-mg-53-BEL-MID)
* routeOfAdministration.code = $100000073345#100000073619 "Oral use"

Instance: I-BEL-53-Brufen-tabl-verl-afgifte-Retard-800-mg
InstanceOf: Ingredient
Usage: #inline
* meta.versionId = "1"
* meta.lastUpdated = "2023-07-17T14:16:33.071+00:00"
* meta.source = "#76W2BITaPCvQLGjd"
* meta.profile = "http://unicom-project.eu/fhir/StructureDefinition/PPLIngredient"
* status = #active
* for[0] = Reference(Brufen-tabl-verl-afgifte-Retard-800-mg-53-BEL-MPD)
* for[+] = Reference(Brufen-tabl-verl-afgifte-Retard-800-mg-53-BEL-MID)
* for[+] = Reference(Brufen-tabl-verl-afgifte-Retard-800-mg-53-BEL-APD)
* role = $100000072050#100000072072 "Active"
* substance.code.concept = $sms#100000090365 "Ibuprofen"
* substance.strength.presentationRatio.numerator = 800 https://spor.ema.europa.eu/v1/lists/100000110633#100000110655 "milligram(s)"
* substance.strength.presentationRatio.denominator = 1 https://spor.ema.europa.eu/v1/lists/100000110633#200000002152 "Tablet"
* substance.strength.referenceStrength.substance.concept = $sms#100000090365 "Ibuprofen"
* substance.strength.referenceStrength.strengthRatio.numerator = 800 https://spor.ema.europa.eu/v1/lists/100000110633#100000110655 "milligram(s)"
* substance.strength.referenceStrength.strengthRatio.denominator = 1 https://spor.ema.europa.eu/v1/lists/100000110633#200000002152 "Tablet"

Instance: Brufen-tabl-verl-afgifte-Retard-800-mg-53-BEL-RA
InstanceOf: RegulatedAuthorization
Usage: #inline
* meta.versionId = "1"
* meta.lastUpdated = "2023-05-18T12:58:14.302+00:00"
* meta.source = "#Uoq4G4N7xDPt3NMW"
* meta.profile = "http://unicom-project.eu/fhir/StructureDefinition/PPLRegulatedAuthorization"
* identifier.value = "1447"
* subject = Reference(Brufen-tabl-verl-afgifte-Retard-800-mg-53-BEL-MPD)
* type = $220000000060#220000000061 "Marketing Authorisation"
* region = $100000000002#100000000337 "Kingdom of Belgium"
* status = $100000072049#200000017708 "Valid - Renewed/Varied"
* holder = Reference(LOC-1447-Mylan-EPD)

Instance: LOC-1447-Mylan-EPD
InstanceOf: Organization
Usage: #inline
* meta.versionId = "1"
* meta.lastUpdated = "2023-05-18T10:24:59.791+00:00"
* meta.source = "#8ZMip0N2vQi8uTFp"
* meta.profile = "http://unicom-project.eu/fhir/StructureDefinition/PPLOrganization"
* identifier.system = "https://spor.ema.europa.eu/v1/locations"
* identifier.value = "1447"
* name = "Mylan EPD"

Instance: Brufen-tabl-verl-afgifte-Retard-800-mg-53-BEL-MID
InstanceOf: ManufacturedItemDefinition
Usage: #inline
* meta.versionId = "1"
* meta.lastUpdated = "2023-05-18T10:37:24.990+00:00"
* meta.source = "#19U4k5ZOM9IAfytY"
* meta.profile = "http://unicom-project.eu/fhir/StructureDefinition/PPLManufacturedItemDefinition"
* status = #active
* manufacturedDoseForm = $200000000004#100000073683 "Prolonged-release tablet"
* unitOfPresentation = $200000000014#200000002152 "Tablet"