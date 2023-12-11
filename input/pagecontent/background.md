
There were several different starting points for creating the common data model for the prototype data feed:  
- IDMP data model with EMA additions, implemented in the NCA systems;  
- Data requirements from the current national stakeholders;  
- Data requirements from other UNICOM work package deliverables.  

As a result, common core data model was created, leaving all options open for involved countries to extend or refine the scope for their national implementations. This data model was compared to the current UNICOM implementation guide and HL7 Electronic Product Information implementation guide to ensure a consistent approach and raise the quality in all related specifications. 

### National requirements beyond IDMP
While it is inevitable, that the data feeds on the national level would vary from country to country, there is also a clear core set of data common for all the NCAs. This core set of data is mostly included in IDMP model, or already present in EMA IG, but some national aspect were taken into account.

- **Products without marketing authorisation.** The IDMP standards are designed for marketing authorisation processes, but real NCA data includes unauthorised products and products registered via other processes. Even though these products are not required to follow IDMP data model, it is reasonable to do so, because the data is stored in the same NCA systems and often published through the same channels. Adding new types of products to the scope creates a need for a few additional data elements (e.g. classification/type of product) and relaxation of cardinalities, because unauthorised products (especially legacy data) is likely to be incomplete compared to the data created through marketing authorisation process (read further in paragraph 4.1.3).  

- **National classifications, and warnings.** Comparison of data from different countries shows that all countries have several additional classifications of products in place, and they are similar, but not necessarily the same in all countries. Also, additional warnings (e.g. additional monitoring indicator, temporary supply problems, etc) may and should be added by the NCA.  

- **National identifiers** for products have a long tradition and they continue to be relevant on a national level. Identifiers can be present on all levels of product information: medicinal product, packaged product, manufactured item, etc. This specification cannot define national identifiers but makes sure each country can decide which additional identifiers are needed in their national implementation.  

- **Localised names.** IDMP data model contains full name and name parts for medicinal products in different languages. NCAs, however, use other types of names in addition to full name. In all countries, the name commonly used in information system UIs is a shortened name provided by the NCA. This means more name types must be allowed, and all those names must be available in multiple languages. Belgium also provides multilingual names for packaged products.

- **Authorised strength.** Strength in IDMP data is a very complex data element (concentration strength and/or presentation strength, reference strength, precise ingredient and reference substance). One product, having multiple active ingredients complicates rendering this information in a clear way even further. Also, the strength mentioned on the package, may be per salt (precise ingredient strength) or per active moiety (reference strength). Some NCAs have seen a need for marking in their internal systems which strength is the one to be shown in summary views, but also a need for a separate data element where this rendered, shortened, potentially manually altered strength would be communicated to downstream users. 

- **Documents** related to product definition or lifecycle, for example Summary of Product Characteristics, Package Information Leaflet, Public Assessment Report, etc. Some documents are included in the authorisation application, but some are created later during other regulatory and pharmacovigilance processes. Types of documents to be referenced or included is not restricted, but not all options may not have international codes for the type. It is advised to add relevant document types in EMA SPOR RMS list “Product Information Document Type”.

- **Local representative of marketing authorisation holder** is often the first contact point for regulatory activities and information requests. These contacts are not necessarily part of marketing authorisation, but an extension to it. 

While all NCAs are likely to add more data to their actual data feed, the aspects mentioned above have been identified as common requirements.

### Reduced ISO IDMP model

Full ISO IDMP data model is designed for regulatory processes and includes a lot of data which may be confidential or irrelevant for non-regulatory stakeholders. For the prototype data feed, it was needed to reduce the data model and focus on the elements more relevant for clinical users and supply chain. 

The list of data elements to include was inspired by the following three UNICOM deliverables:
-	D9.3. Report on the Specification(s) and delivery technology for IDMP data delivery from NCA to MPD.
-	D9.4. IDMP Implementation guidance for pharmacy system suppliers (focus on patient medication list) - Common minimum data set.
-	D5.7. Common minimum data set for implementation in the national NCA and eHealth solutions.


The prototype data feed specification does not discourage publishing more data than required by UNICOM deliverables or the logical model proposed in this deliverable. It is up to every NCA to decide what is relevant for their stakeholders.

### IDMP model for products without marketing authorisation

In Estonia, a special authorisation to import/distribute is granted in the absence of authorised medicinal products with equivalent effect or where such products are not distributed according to treatment needs. An application for using an unauthorised product may come from 1) a doctor, a health care facility or a professional organization of doctors; 2) framework of national programmes; 3) declaration of an emergency situation under the Emergency Act.  

Products imported with special permits may be published in the NCA register and product data may be used by eHealth services equally with authorised products’ data. In some countries, special permit products are not regarded part of regular register data but follow a different workflow and publishing feeds.  

For the NCA which are responsible for publishing the data of unauthorised medicinal products, it is important to keep it consistent with the basic data for authorised medicinal products as they are handled in same IT systems, and in some countries used in eHealth services via the same data feeds.  

Using IDMP model for products without marketing authorisations requires relaxation of cardinalities and data validation as legacy data or data from countries that are not implementing IDMP, may be incomplete. Publishing data about standard extemporaneous products or nutritional supplements is out of scope for this deliverable, but related challenges were described was covered in OpenMedicine deliverable 3.2 “Identification and description of special products” (2016) and found that the simplified IDMP model can be applied to those products if needed. 
  
  