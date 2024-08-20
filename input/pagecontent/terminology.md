ISO IDMP standards do not define which code systems should be used for data capture or exchange. Implementers of IDMP are free to use any code system that meets the requirements.  
NCAs are relying on EMA specification for implementing IDMP and are likely to use EMA SPOR terminology internally. However, the stakeholders on the national level may have different requirements for terminology.  
For example, the following table illustrates the differences between what is needed in cross-border services compared to what is used by the regulatory domain.  

|Coded attribute|MyHealth@EU|EMA RMS|Display name|
|Dose form|EDQM: 10221000|100000073665|Film-coated tablet|
|Route of administration|EDQM: 20053000|100000073619|Oral use|
|Packaging|EDQM: 30009000|100000073498|Box|
|Unit of presentation|EDQM: 15054000|200000002152|Tablet|
|Unit of measurement|UCUM: ug|100000110656|microgram(s)|
|ATC|WHO: G03AA12|100000095785|drospirenone and ethinylestradiol|
|Country codes|ISO: SE|100000000535|Kingdom of Sweden|
|Language codes|BCP-47: sv-SE|100000072288|Swedish|

The table above is merely one example of different terminology needs. The code systems used in MyHealth@EU services are recommended by eHealth Network in guidelines for ePrescription and Patient Summary. On a national level, many more use cases and terminology options exist.

### EMA SPOR SMS
EMA SPOR Substance Management Services (SMS) provides a list of coded substances. Used in EMA SPOR services, recommended in eHealth Network guidelines, and implemented in MyHealth@EU cross-border services, it is the least disputable code system in the options. Therefore, the prototype data feed uses only SMS codes, but on a national level there might be a need for local codes or SNOMED CT codes.  

At the time of writing the report, EMA SMS was not providing a live data feed yet. The codes need to be downloaded as a file with 200 000 rows, which includes substances used as active ingredients as well as excipients. Extracting the relevant part of the SMS is not straightforward, and NCA should provide clarity to eHealth users on how to use this list. 

### EMA SPOR RMS
EMA SPOR Referentials Management Services (RMS) is the terminology service to support central data management for the European regulatory domain, combining external resources like EDQM, WHO ATC, and internal resources. It uses an internal numbering system for terminology and product lifecycle management purposes - this means recoding concepts from aforementioned code systems, and adding concepts when needed (for example, adding concepts to pharmaceutical form list, where no agreement on EDQM level could be reached). Mappings to source code systems are provided if they exist.  
  
Using EMA SPOR is often seen as a prerequisite of implementing IDMP, and it is currently true for the data exchange between NCAs and EMA. It is designed to support regulatory processes, which means that downstream data consumers may have different needs or traditions. NCAs should be aware of their data users’ needs and make sure the data services are optimised and meaningful.  
  
For NCAs, using RMS terms is the safest and easiest way to publish their data. At the same time, NCAs need to ensure transfer from the previous codes (national, EDQM, or other) or continue using them consistently with new RMS codes.  
  
One of the possibilities FHIR provides is to have several codings for one data element. The codings should represent the same meaning, expressed with different code systems. The example below illustrates how NCA can preserve the original numeric code from RMS, and use the mappings provided by EMA, to enrich the data with the actual ATC code. This is helpful for the downstream users who do not have to handle the same mappings themselves.  
  

### WHO ATC
Anatomical Therapeutic Chemical Classification System (ATC) has been known and used since 1976. ATC is widely used in prescription systems, clinical decision support systems, and even on physical pharmacy shelves. 
  
In RMS, WHO ATC has been recoded with RMS codes. The list owner is considered WHO, and EMA is allowed to add concepts that are pre-accepted for use in the source system but will come into effect in the future. For example, concept L01FX25 ‘mosunetuzumab’ is recoded as 200000033781 ‘mosunetuzumab’ in RMS and marked with a status ‘Current’ in November 2023. In WHO ATC this concept will not be valid before 01.01.2024.  
  
Asynchronity like this causes a discrepancy, that may affect FHIR validation for downstream users who use official ATC as the source code system and rely on standard FHIR terminology services for mapping and validation.  
  
As ATC codes are used far beyond the simple classification needs, it is advised to always provide ATC codes together with RMS codes in the product data to reduce the workload on downstream users and ensure consistency of data.

### EDQM Standard Terms 
EDQM Standard Terms are a code system of about 900 terms in 35 languages. These terms are used in European marketing authorisation applications, labelling, reporting, etc. It is designed to support regulatory processes but has been also adopted by eHealth community in Europe. eHealth Network guidelines for ePrescription and Patient Summary, recommend EDQM terms for capturing medicinal product data concerning dose form, route of administration, unit of presentation, and package types.  
  
There are 16 RMS lists originating from EDQM Standard Terms. These lists are considered one code system when expressed in EDQM codes, but 16 different code systems when expressed in RMS codes. This discrepancy may be confusing for implementers but is unlikely to cause significant technical errors.  
  
EMA states that they may add concepts to these RMS lists, when the concepts are pre-accepted by EDQM but not yet valid in the source code system. Just like with ATC, adding concepts that are not yet active in the source system, may lead to mapping and validation errors in downstream systems. If EDQM codes have a role in your national infrastructure (including cross-border services), additional codings may be added to product data to ensure the mapping is present in the data and validated by the NCA.  
  
EDQM Standard Terms as well as RMS and SNOMED CT provide a useful addition to lists of terms by adding properties to dose forms. Dose form attributes provided by EDQM as well as EMA can be used for creating decision logic in ePrescription systems and other clinical processes. It is advised that NCAs make these extra attributes available within their chosen code system for dose forms.  

### National codesystems
National codesystems are used in all the countries, and they are likely to keep their importance in the national infrastructure, at least in processes that need to handle legacy data.  
It is up to the NCA to make sure the transition to new codesystems or mapping from the old codesystems is transparent and reliable. It is possible to publish mappings as a separate resource or provide product data with multiple codings (see examples above).  
  
It is also worth mentioning, that there also national flavours of international codesystems used in countries, for example, Estonian ATC is enriched so, that it provides codes for all combinations of ingredients, extending the code system where official ATC stops at a grouper concept. In most countries, EDQM terms has been used for dose forms for a long time, but with local codes, not official EDQM codes.  
  
These local variations may be deeply rooted in clinical systems (including decision support mechanisms) and discontinuing them may be a slow or unnecessary process, and significant changes in that regard should be analysed carefully.

### SNOMED CT
SNOMED CT can be used for coding single data elements, like dose form or route of administration, or provide a full product as a concept with a sufficient data model to describe the product. For both approaches, mappings between RMS and SNOMED CT would be needed. There are no official direct mappings available at the time of writing the report. However, some options exist:  
EDQM dose form – SNOMED CT mapping and MedDRA – SNOMED CT mapping are both provided and regularly maintained by SNOMED International, and they can be use as the second step for moving from RMS to SNOMED CT. 
For substances, EMA SMS and SNOMED CT both use INN notation, but there is no official mapping.  
  
The international version of SNOMED CT only includes generic medication information, most granular level of which is ‘clinical drug’, best mapped to manufactured item concept in IDMP. 
   
More information about how SNOMED CT maps to IDMP, and how regulatory data can be expressed and distributed using SNOMED CT concept model and terminology can be found in SNOMED International guidance materials for understanding international medicinal product model and drug model for national extensions.

### MedDRA
Medical Dictionary for Regulatory Activities (MedDRA) is used for indications and adverse effects in regulatory product data.  

MedDRA is also fully incorporated in EMA RMS, recoded with RMS codes, and having MedDRA code provided as the source. Information about indications and adverse effects are extremely important for the clinical systems, many of which prefer to use SNOMED CT for this purpose. This is possible with 2-step mapping: RMS-MedDRA mapping is provided by EMA and MedDRA – SNOMED CT mapping is provided by SNOMED International.  

At the time of creating the deliverable, NCAs included in the process did not have a good way of publishing indications in structured form. Until the data is not mature enough, textual representations of indications are communicated.

### UCUM
Unified Code for Units of Measure (UCUM) is widely used in eHealth and beyond - not only for medicinal product information, but also in laboratory results and other measurements. In eHealth services UCUM notations are generally used as codes for units of measurement, which is the preferred codesystem for units in FHIR.   
  
In EMA RMS list, the same concepts are coded with RMS codes, and mapping from RMS units to UCUM is provided if it exists. RMS does not declare UCUM to be the source codesystem for units of measure, leaving at possibility of deviating from it. It is advised for the NCAs to provide public data feed with UCUM units as is default in FHIR standard, especially for time units. 

### Country and language codes
ISO Country codes and BCP-47 language codes are both used widely in all the information systems far beyond healthcare.  
In EMA RMS these lists are provided but recoded with RMS codes. In RMS, BCP-47 is declared to be the source system for languages, but ISO is not declared as the source for country codes.  
While country codes can be coded with RMS codes in FHIR, language usually has a strict binding to FHIR All languages value set, which is based on BCP-47. Using RMS codes for language in R5, would require a workaround with an extension.  
 
It is advised for the NCAs to provide public data feed with ISO and BCP-47 codes, which are known for all the downstream users, while using only RMS codes would require mapping.
  
    
    
