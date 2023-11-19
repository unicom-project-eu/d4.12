
Profile: MarketingAuthorisationD412
Parent: RegulatedAuthorization
Id: MarketingAuthorisationD412
Title: "Marketing Authorisation"
Description: """Marketing Authorisation (Regulated Authorization) data"""

* identifier 0..*
  * ^short = "Marketing authorisation number"
  * ^definition = "EMA IG 2.2"
  * system = "http://ema.europa.eu/fhir/marketingAuthorizationNumber" // this is actually wrongish as the MA number may not be unique across EU

* subject only Reference(MedicinalProductD412 or PackagedProductD412)
* subject 0..*
  * ^short = "Reference to the medicinal product or a single package, depending on how the MA has been issued"

* type 0..1
* type = $220000000060#220000000061 "Marketing Authorisation"

* region from country-ema-vs
  * ^definition = "EMA IG 2.3"

* status 0..1
  * coding.system = $100000072049
  * ^short = "Marketing authorisation status"
  * ^definition = "EMA IG 2.4"

* statusDate
  * ^short = "Issue/changing date of the marketing authorisation"
  * ^definition = "EMA IG 2.5"

* holder 0..1
* holder only Reference(OrganizationD412)
  * ^definition = "EMA IG 2.8"
