Instance: 7e4bb050-45dc-45f0-a8a2-58946a1765b1
InstanceOf: Bundle
Usage: #example
* type = #searchset
* entry[0].fullUrl = "MedicinalProductDefinition/Pedea-inf-oploss-i-v-amp-10-mg-2-ml-48-BEL-MPD"
* entry[=].resource = Pedea-inf-oploss-i-v-amp-10-mg-2-ml-48-BEL-MPD
* entry[=].search.mode = #match
* entry[+].fullUrl = "PackagedProductDefinition/Pedea-inf-oploss-i-v-amp-10-mg-2-ml-48-BEL-PPD"
* entry[=].resource = Pedea-inf-oploss-i-v-amp-10-mg-2-ml-48-BEL-PPD
* entry[=].search.mode = #include
* entry[+].fullUrl = "AdministrableProductDefinition/Pedea-inf-oploss-i-v-amp-10-mg-2-ml-48-BEL-APD"
* entry[=].resource = Pedea-inf-oploss-i-v-amp-10-mg-2-ml-48-BEL-APD
* entry[=].search.mode = #include
* entry[+].fullUrl = "RegulatedAuthorization/Pedea-inf-oploss-i-v-amp-10-mg-2-ml-48-BEL-RA"
* entry[=].resource = Pedea-inf-oploss-i-v-amp-10-mg-2-ml-48-BEL-RA
* entry[=].search.mode = #include
* entry[+].fullUrl = "Ingredient/I-BEL-48-Pedea-inf-oploss-i-v-amp-10-mg-2-ml"
* entry[=].resource = I-BEL-48-Pedea-inf-oploss-i-v-amp-10-mg-2-ml
* entry[=].search.mode = #include
* entry[+].fullUrl = "Organization/LOC-2519-Recordati"
* entry[=].resource = LOC-2519-Recordati
* entry[=].search.mode = #include
* entry[+].fullUrl = "ManufacturedItemDefinition/Pedea-inf-oploss-i-v-amp-10-mg-2-ml-48-BEL-MID"
* entry[=].resource = Pedea-inf-oploss-i-v-amp-10-mg-2-ml-48-BEL-MID
* entry[=].search.mode = #include

Instance: Pedea-inf-oploss-i-v-amp-10-mg-2-ml-48-BEL-MPD
InstanceOf: MedicinalProductDefinition
Usage: #inline
* meta.versionId = "3"
* meta.lastUpdated = "2023-07-26T13:04:12.366+00:00"
* meta.source = "#hHmg2S1NKAorIvCy"
* meta.profile = "http://unicom-project.eu/fhir/StructureDefinition/PPLMedicinalProductDefinition"
* identifier.system = "http://ema.europa.eu/fhir/mpId"
* identifier.value = "Pedea-inf-oploss-i-v-amp-10-mg-2-ml-48-BEL-MPD"
* domain = $100000000004#100000000012 "Human use"
* status = $200000005003#200000005004 "Provisional"
* combinedPharmaceuticalDoseForm = $200000000004#100000073870 "Solution for infusion"
* legalStatusOfSupply = $100000072051#100000072084 "Medicinal Product subject to medical prescription"
* classification[0] = $100000093533#100000096928 "ibuprofen"
* classification[+] = $who-atc#C01EB16 "ibuprofen"
* name.productName = "Pedea inf. oploss. i.v. [amp.] 10 mg / 2 ml"
* name.usage.country = $100000000002#100000000337 "Kingdom of Belgium"
* name.usage.language = $100000072057#100000072169 "Dutch"

Instance: Pedea-inf-oploss-i-v-amp-10-mg-2-ml-48-BEL-PPD
InstanceOf: PackagedProductDefinition
Usage: #inline
* meta.versionId = "2"
* meta.lastUpdated = "2023-05-18T12:52:02.333+00:00"
* meta.source = "#2pwbNGla2VBKfydw"
* meta.profile = "http://unicom-project.eu/fhir/StructureDefinition/PPLPackagedProductDefinition"
* identifier.system = "http://ema.europa.eu/example/pcid"
* identifier.value = "BEL-BEL-ibuprofen-Recordati-solution-for-infusion-4-x-"
* packageFor = Reference(Pedea-inf-oploss-i-v-amp-10-mg-2-ml-48-BEL-MPD)
* containedItemQuantity = 4 https://spor.ema.europa.eu/v1/lists/200000000014#200000022814 "Other"
* description = "Mock description"
* marketingStatus.country = $100000000002#100000000337 "Kingdom of Belgium"
* marketingStatus.status = $100000072052#100000072083 "Marketed"
* packaging.type = $100000073346#100000073498 "Box"
* packaging.quantity = 1
* packaging.material = $200000003199#200000003529 "Cardboard"
* packaging.packaging.containedItem.item.reference = Reference(Pedea-inf-oploss-i-v-amp-10-mg-2-ml-48-BEL-MID)
* packaging.packaging.containedItem.amount.value = 4

Instance: Pedea-inf-oploss-i-v-amp-10-mg-2-ml-48-BEL-APD
InstanceOf: AdministrableProductDefinition
Usage: #inline
* meta.versionId = "1"
* meta.lastUpdated = "2023-05-18T14:03:07.501+00:00"
* meta.source = "#PZ0lSrK3AGvRSCia"
* meta.profile = "http://unicom-project.eu/fhir/StructureDefinition/PPLAdministrableProductDefinition"
* status = #active
* formOf = Reference(Pedea-inf-oploss-i-v-amp-10-mg-2-ml-48-BEL-MPD)
* administrableDoseForm = $200000000004#100000073870 "Solution for infusion"
* unitOfPresentation = $200000000014#200000022814 "Other"
* producedFrom = Reference(Pedea-inf-oploss-i-v-amp-10-mg-2-ml-48-BEL-MID)
* routeOfAdministration.code = $100000073345#100000073611 "Intravenous use"

Instance: Pedea-inf-oploss-i-v-amp-10-mg-2-ml-48-BEL-RA
InstanceOf: RegulatedAuthorization
Usage: #inline
* meta.versionId = "1"
* meta.lastUpdated = "2023-05-18T12:53:59.232+00:00"
* meta.source = "#yizepdg0OhNnPChB"
* meta.profile = "http://unicom-project.eu/fhir/StructureDefinition/PPLRegulatedAuthorization"
* identifier.value = "2519"
* subject = Reference(Pedea-inf-oploss-i-v-amp-10-mg-2-ml-48-BEL-MPD)
* type = $220000000060#220000000061 "Marketing Authorisation"
* region = $100000000002#100000000337 "Kingdom of Belgium"
* status = $100000072049#200000017708 "Valid - Renewed/Varied"
* holder = Reference(LOC-2519-Recordati)

Instance: I-BEL-48-Pedea-inf-oploss-i-v-amp-10-mg-2-ml
InstanceOf: Ingredient
Usage: #inline
* meta.versionId = "1"
* meta.lastUpdated = "2023-07-17T14:16:57.603+00:00"
* meta.source = "#YjtDoitWPQSqm0Hk"
* meta.profile = "http://unicom-project.eu/fhir/StructureDefinition/PPLIngredient"
* status = #active
* for[0] = Reference(Pedea-inf-oploss-i-v-amp-10-mg-2-ml-48-BEL-MPD)
* for[+] = Reference(Pedea-inf-oploss-i-v-amp-10-mg-2-ml-48-BEL-MID)
* for[+] = Reference(Pedea-inf-oploss-i-v-amp-10-mg-2-ml-48-BEL-APD)
* role = $100000072050#100000072072 "Active"
* substance.code.concept = $sms#100000090365 "Ibuprofen"
* substance.strength.concentrationRatio.numerator = 10 https://spor.ema.europa.eu/v1/lists/100000110633#100000110655 "milligram(s)"
* substance.strength.concentrationRatio.denominator = 2 https://spor.ema.europa.eu/v1/lists/100000110633#100000110662 "millilitre(s)"

Instance: LOC-2519-Recordati
InstanceOf: Organization
Usage: #inline
* meta.versionId = "1"
* meta.lastUpdated = "2023-05-18T10:23:16.747+00:00"
* meta.source = "#P3zyGczmgFEJJXck"
* meta.profile = "http://unicom-project.eu/fhir/StructureDefinition/PPLOrganization"
* identifier.system = "https://spor.ema.europa.eu/v1/locations"
* identifier.value = "2519"
* name = "Recordati"

Instance: Pedea-inf-oploss-i-v-amp-10-mg-2-ml-48-BEL-MID
InstanceOf: ManufacturedItemDefinition
Usage: #inline
* meta.versionId = "1"
* meta.lastUpdated = "2023-05-18T10:40:55.337+00:00"
* meta.source = "#3pLPTxw2kqemqZhe"
* meta.profile = "http://unicom-project.eu/fhir/StructureDefinition/PPLManufacturedItemDefinition"
* status = #active
* manufacturedDoseForm = $200000000004#100000073870 "Solution for infusion"
* unitOfPresentation = $200000000014#200000022814 "Other"