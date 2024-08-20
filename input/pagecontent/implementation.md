### Choice of resources
There are four standard ways of providing medication data in HL7 FHIR standard: 

[**Medication**](https://www.hl7.org/fhir/medication.html) resource is used in all the clinical workflows. It is designed as a very lean resource, ideally containing just the identifier or a code of the product, but the basic information about the dose form and active ingredients are also possible to add. Medication resource does not have an element or an extension for common regulatory data elements like product name or classification. It is important to understand how Medication resource interacts with IDMP-compatible MedicationDefinition module resources, but it can be concluded, that Medication resource itself is not designed/suitable for publishing regulatory data. 

[**MedicationKnowledge**](https://www.hl7.org/fhir/medicationknowledge.html) is intended to provide more detailed information about the medication. Unlike the MedicationDefinition module resources, it is not a complete definition of the medication. However, it provides some extra information such as costs, monitoring programs, etc, which are relevant for product catalogues. While this resource could theoretically be enough for the prototype datafeed, it should be noted, that many data elements in MedicationKnowledge reference resources from the MedicationDefinition module, creating a hybrid solution of two different approaches. 

[**CodeSystem**](https://www.hl7.org/fhir/codesystem.html) is a FHIR resource for capturing a terminology. Medication data is often provided to eHealth as a terminology, where product code serves as the concept code, product name serves as the concept display name, and the characteristics of the product are provided as properties of the concept. This approach is currently used in Austria, and it is also used when SNOMED CT concepts are published in FHIR. However, it is not an optimal approach for the enhanced regulatory data feed and would require an immense effort to design a CodeSystem resource with an IDMP-compatible logical model for concepts. 

[**MedicationDefinition module**](https://www.hl7.org/fhir/medication-definition-module.html) resources are designed for ISO IDMP and regulatory processes. This set of resources has been chosen for implementation by EMA SPOR and HL7 Electronic Patient Access project, both specifications the NCAs are motivated to align with. UNICOM deliverable 9.3 “Report on the Specification(s) and delivery technology for IDMP data delivery from NCA to MPD” also proposes using MedicationDefinition resources for the exact use case covered in the current deliverable. 

### EMA implementation guide  

To harmonise the data feed across NCAs, it is reasonable to follow EMA IG as this is the main specification all NCAs rely on. This means, that as much as possible, we reuse extensions defined by EMA and follow the same terminology bindings. Some lists may miss common terms, that are needed for national use cases in all the countries. It is possible and reasonable to propose additions to EMA SPOR RMS to harmonise the terminology that is relevant for the NCAs, but not necessarily for EMA. Also, as the Union Product Database (UPD) maintained by EMA for veterinary products has a slightly wider scope than PMS for human products, some extensions and terminology bindings can be reused from UPD specification.  
  
Certain deviations from EMA implementation guides are needed. The prototype data feed specification uses FHIR R5 official version. EMA IG relies on FHIR 4.6 version, which is a draft R5 ballot review version from May 2021 and is not sufficiently supported by tooling and servers. Also, EMA will most likely move to FHIR R5 in future.  
This difference means that we can use FHIR core specification data elements where EMA IG proposes using extensions (for example, pack size) – simply because these elements were not present in version 4.6 but are present in R5.  
  
Also, working with the EMA implementation guide, some inconsistencies were found:
- ATC classification element is marked non-repeatable in EMA IG, while the text suggests multiple values should be selected if applicable. This conflicting guidance had already led to different interpretations of the requirement among involved NCAs.  
- Package description is marked repeatable in EMA IG but is non-repeatable (0..1) in FHIR specification. Analysis of current Belgian requirements shows the need for the same information in several languages without marking one of the languages as the main language and other ones as translations.  
- Time unit for ShelfLife is strictly bound to UCUM units in FHIR R5, and EMA RMS units cannot be used there according to FHIR validation rules. This binding is not present in FHIR 4.6 version, so it is not causing validation issues in EMA services but would need a different approach in R5.
  
These findings are likely to be fixed in the next version of EMA IG.

### Conformance with HL7 ePI implementation guide

HL7 Electronic Product Information is a base specification, that is based on ISO IDMP, and provides a structured document for product information. As it is intended to provide a document view, it uses Bundle of type ‘document’ and an additional Composition resource that provides the structure and metadata for the electronic document.  
  
NCAs involved in this analysis saw the need for this specification to be conformant with ePI specification, but as the use case is slightly different, the document approach is not necesserily needed.  
  
Conformance with ePI may not be feasible for products without marketing authorisation.
  
  