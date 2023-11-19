Instance: BE-Cholemed-20mg-FilmCoatedTablets
InstanceOf: Bundle
Usage: #example
Description: "Augmentin. Amoxicillin 500mg, clavulanic acid 125mg. Film coated tablets. Portugal."
* type = #searchset

* entry[+].resource = Cholemed-20mg-BE-MPD
* entry[=].fullUrl = "http://unicom-project.eu/fhir/d4-12/MedicinalProductDefinition/Cholemed-20mg-BE-MPD"

Instance: Cholemed-20mg-BE-MPD
InstanceOf: MedicinalProductD412
Usage: #example
* identifier[pmsid].value = "0000000000006"
* identifier[mpid].value = "BE-100001899-258237"
* domain = $100000000004#100000000012 "Human use"
* status.coding[0] = $200000005003#200000005004 "Current"
* combinedPharmaceuticalDoseForm = $200000000004#100000073665 "Film-coated tablet"
* legalStatusOfSupply = $100000072051#100000072084 "Medicinal Product subject to medical prescription"
//* additionalMonitoringIndicator = $additionalMonitoringIndicator#False "False"
* classification[0] = $100000093533#100000095169 "simvastatin"
* classification[+] = $who-atc#C10AA01 "simvastatin"
* name[0].productName = "CHOLEMED 20 mg filmomhulde tabletten"
* name[=].type = $220000000000#220000000001 "Full name"
* name[=].usage.country = $100000000002#100000000337 "Kingdom of Belgium"
* name[=].usage.language = urn:ietf:bcp:47#nl "Dutch"

* name[0].productName = "CHOLEMED 20 mg filmomh. tabl."
* name[=].type = $220000000000#zzz "Common name"
* name[=].usage.country = $100000000002#100000000337 "Kingdom of Belgium"
* name[=].usage.language = urn:ietf:bcp:47#nl "Dutch"

* name[+].productName = "CHOLEMED 20 mg - comprimés pelliculés"
* name[=].type = $220000000000#zzz "Full name"
* name[=].usage.country = $100000000002#100000000337 "Kingdom of Belgium"
* name[=].usage.language = urn:ietf:bcp:47#fr "French"

* name[+].productName = "CHOLEMED 20 mg compr. pellic."
* name[=].type = $220000000000#zzz "Common name"
* name[=].usage.country = $100000000002#100000000337 "Kingdom of Belgium"
* name[=].usage.language = urn:ietf:bcp:47#fr "French"

* name[+].productName = "CHOLEMED 20 mg und 40 mg Filmtabletten"
* name[=].type = $220000000000#220000000001 "Full name"
* name[=].usage.country = $100000000002#100000000337 "Kingdom of Belgium"
* name[=].usage.language = urn:ietf:bcp:47#de "German"

* name[+].productName = "CHOLEMED 20 mg film-coated tablets"
* name[=].type = $220000000000#zzz "Full name"
* name[=].usage.country = $100000000002#100000000337 "Kingdom of Belgium"
* name[=].usage.language = urn:ietf:bcp:47#en "English"

* name[+].productName = "CHOLEMED 20 mg film-coat. tabl."
* name[=].type = $220000000000#zzz "Common name"
* name[=].usage.country = $100000000002#100000000337 "Kingdom of Belgium"
* name[=].usage.language = urn:ietf:bcp:47#en "English"

/*
* name.part[invented].part = "CHOLEMED"
* name.part[strength].part = "20 mg"
* name.part[doseForm].part = "filmomhulde tabletten"
*/