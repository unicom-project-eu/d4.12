Instance: ffc4799a-9e3f-42de-9c0b-656f0e19daa1
InstanceOf: Bundle
Usage: #example
* type = #searchset
* entry[0].fullUrl = "MedicinalProductDefinition/Amlor-harde-caps-10-mg-13-BEL-MPD"
* entry[=].resource = Amlor-harde-caps-10-mg-13-BEL-MPD
* entry[=].search.mode = #match
* entry[+].fullUrl = "Ingredient/I-BEL-13-Amlor-harde-caps-10-mg"
* entry[=].resource = I-BEL-13-Amlor-harde-caps-10-mg
* entry[=].search.mode = #include
* entry[+].fullUrl = "AdministrableProductDefinition/Amlor-harde-caps-10-mg-13-BEL-APD"
* entry[=].resource = Amlor-harde-caps-10-mg-13-BEL-APD
* entry[=].search.mode = #include
* entry[+].fullUrl = "PackagedProductDefinition/Amlor-harde-caps-10-mg-13-BEL-PPD"
* entry[=].resource = Amlor-harde-caps-10-mg-13-BEL-PPD
* entry[=].search.mode = #include
* entry[+].fullUrl = "RegulatedAuthorization/Amlor-harde-caps-10-mg-13-BEL-RA"
* entry[=].resource = Amlor-harde-caps-10-mg-13-BEL-RA
* entry[=].search.mode = #include
* entry[+].fullUrl = "ManufacturedItemDefinition/Amlor-harde-caps-10-mg-13-BEL-MID"
* entry[=].resource = Amlor-harde-caps-10-mg-13-BEL-MID
* entry[=].search.mode = #include
* entry[+].fullUrl = "Organization/LOC-1300-Upjohn"
* entry[=].resource = LOC-1300-Upjohn
* entry[=].search.mode = #include

Instance: Amlor-harde-caps-10-mg-13-BEL-MPD
InstanceOf: MedicinalProductDefinition
Usage: #inline
* meta.versionId = "3"
* meta.lastUpdated = "2023-07-26T13:03:18.505+00:00"
* meta.source = "#clCbG8PBgto4MM0B"
* meta.profile = "http://unicom-project.eu/fhir/StructureDefinition/PPLMedicinalProductDefinition"
* identifier.system = "http://ema.europa.eu/fhir/mpId"
* identifier.value = "Amlor-harde-caps-10-mg-13-BEL-MPD"
* domain = $100000000004#100000000012 "Human use"
* status = $200000005003#200000005004 "Provisional"
* combinedPharmaceuticalDoseForm = $200000000004#100000073375 "Capsule, hard"
* legalStatusOfSupply = $100000072051#100000072084 "Medicinal Product subject to medical prescription"
* classification[0] = $100000093533#100000095065 "amlodipine"
* classification[+] = $who-atc#C08CA01 "amlodipine"
* name.productName = "Amlor harde caps. 10 mg"
* name.usage.country = $100000000002#100000000337 "Kingdom of Belgium"
* name.usage.language = $100000072057#100000072169 "Dutch"

Instance: I-BEL-13-Amlor-harde-caps-10-mg
InstanceOf: Ingredient
Usage: #inline
* meta.versionId = "1"
* meta.lastUpdated = "2023-07-17T14:12:40.735+00:00"
* meta.source = "#xsRFugJTidBDtVx4"
* meta.profile = "http://unicom-project.eu/fhir/StructureDefinition/PPLIngredient"
* status = #active
* for[0] = Reference(Amlor-harde-caps-10-mg-13-BEL-MPD)
* for[+] = Reference(Amlor-harde-caps-10-mg-13-BEL-MID)
* for[+] = Reference(Amlor-harde-caps-10-mg-13-BEL-APD)
* role = $100000072050#100000072072 "Active"
* substance.code.concept = $sms#100000090079 "Amlodipine besilate"
* substance.strength.presentationRatio.numerator = 10 https://spor.ema.europa.eu/v1/lists/100000110633#100000110655 "milligram(s)"
* substance.strength.presentationRatio.denominator = 1 https://spor.ema.europa.eu/v1/lists/100000110633#200000002113 "Capsule"
* substance.strength.referenceStrength.substance.concept = $sms#100000085259 "amlodipine"
* substance.strength.referenceStrength.strengthRatio.numerator = 10 https://spor.ema.europa.eu/v1/lists/100000110633#100000110655 "milligram(s)"
* substance.strength.referenceStrength.strengthRatio.denominator = 1 https://spor.ema.europa.eu/v1/lists/100000110633#200000002113 "Capsule"

Instance: Amlor-harde-caps-10-mg-13-BEL-APD
InstanceOf: AdministrableProductDefinition
Usage: #inline
* meta.versionId = "1"
* meta.lastUpdated = "2023-05-18T13:59:47.676+00:00"
* meta.source = "#E4ZfOh2XRHArGRNT"
* meta.profile = "http://unicom-project.eu/fhir/StructureDefinition/PPLAdministrableProductDefinition"
* status = #active
* formOf = Reference(Amlor-harde-caps-10-mg-13-BEL-MPD)
* administrableDoseForm = $200000000004#100000073375 "Capsule, hard"
* unitOfPresentation = $200000000014#200000002113 "Capsule"
* producedFrom = Reference(Amlor-harde-caps-10-mg-13-BEL-MID)
* routeOfAdministration.code = $100000073345#100000073619 "Oral use"

Instance: Amlor-harde-caps-10-mg-13-BEL-PPD
InstanceOf: PackagedProductDefinition
Usage: #inline
* meta.versionId = "2"
* meta.lastUpdated = "2023-05-18T12:52:08.600+00:00"
* meta.source = "#UTNiJWFAIEGizPxr"
* meta.profile = "http://unicom-project.eu/fhir/StructureDefinition/PPLPackagedProductDefinition"
* identifier.system = "http://ema.europa.eu/example/pcid"
* identifier.value = "BEL-BEL-amlodipine-besilate-Upjohn-capsule-hard-30-x-1"
* packageFor = Reference(Amlor-harde-caps-10-mg-13-BEL-MPD)
* containedItemQuantity = 30 https://spor.ema.europa.eu/v1/lists/200000000014#200000002113 "Capsule"
* description = "Mock description"
* marketingStatus.country = $100000000002#100000000337 "Kingdom of Belgium"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
* packaging.packaging.containedItem.item.reference = Reference(Amlor-harde-caps-10-mg-13-BEL-MID)
* packaging.packaging.containedItem.amount.value = 30

Instance: Amlor-harde-caps-10-mg-13-BEL-RA
InstanceOf: RegulatedAuthorization
Usage: #inline
* meta.versionId = "1"
* meta.lastUpdated = "2023-05-18T13:03:39.763+00:00"
* meta.source = "#gXjihq12KBIsWjon"
* meta.profile = "http://unicom-project.eu/fhir/StructureDefinition/PPLRegulatedAuthorization"
* identifier.value = "1300"
* subject = Reference(Amlor-harde-caps-10-mg-13-BEL-MPD)
* type = $220000000060#220000000061 "Marketing Authorisation"
* region = $100000000002#100000000337 "Kingdom of Belgium"
* status = $100000072049#200000017708 "Valid - Renewed/Varied"
* holder = Reference(LOC-1300-Upjohn)

Instance: Amlor-harde-caps-10-mg-13-BEL-MID
InstanceOf: ManufacturedItemDefinition
Usage: #inline
* meta.versionId = "1"
* meta.lastUpdated = "2023-05-18T10:45:25.400+00:00"
* meta.source = "#5iELIkpeyyGnLDY6"
* meta.profile = "http://unicom-project.eu/fhir/StructureDefinition/PPLManufacturedItemDefinition"
* status = #active
* manufacturedDoseForm = $200000000004#100000073375 "Capsule, hard"
* unitOfPresentation = $200000000014#200000002113 "Capsule"

Instance: LOC-1300-Upjohn
InstanceOf: Organization
Usage: #inline
* meta.versionId = "1"
* meta.lastUpdated = "2023-05-18T10:23:45.960+00:00"
* meta.source = "#A4RXymECarIvYXaS"
* meta.profile = "http://unicom-project.eu/fhir/StructureDefinition/PPLOrganization"
* identifier.system = "https://spor.ema.europa.eu/v1/locations"
* identifier.value = "1300"
* name = "Upjohn"