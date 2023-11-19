Profile: OrganizationD412
Parent: Organization
Id: OrganizationD412
Title: "Organization"
Description: """Marketing Authorisation Holder or its local representative. For unauthorised products, a manufacturer or registration holder."""

* identifier 
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "system"
  * ^slicing.rules = #open
  * ^short = "Identifier for the marketing authorisation holder. It may also contain national business identifiers."
  * ^definition = "EMA IG 2.8"

* identifier contains
  loc 0..1 and
  org 0..1

* identifier[loc] 
  * system = $loc-id
  * ^short = "Location ID from EMA SPOR OMS"

* identifier[org]
  * system = $org-id
  * ^short = "Organisation ID from EMA SPOR OMS"

* name 1..1
  * ^short = "Organisation's name"