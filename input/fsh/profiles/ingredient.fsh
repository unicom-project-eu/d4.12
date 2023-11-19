// PROFILE: Ingredient
Profile: IngredientD412
Parent: Ingredient
Id: IngredientD412
Title: "Ingredient"
Description: """Ingredient data"""

* for 0..*
  * ^short = "Reference to the medicinal product, pharmaceutical product and/or manufactured item where the ingredient is used"
* for only Reference(MedicinalProductD412 or AdministrableProductD412 or ManufacturedItemD412)

* role // This is 1..1 in FHIR spec! 
  * ^short = "Role of the ingredient. PPL data normally only includes active ingredients."
  * ^definition = "EMA IG 5.1"
//default * role = $100000072050#100000072072 "Active"

* substance
  * code from SubstancesSMS (example)
//  * code.concept.coding.system = $sms 
  * ^short = "Substance code from EMA SMS"
  * ^definition = "EMA IG 5.5"

  * strength 0..*
    * ^definition = "EMA IG 5.5.2"
    * presentationRatio
      * ^short = "Strength per unit of presentation (10mg/vial or 10mg/0.5ml where 0.5ml is the size of the vial)"
      * ^definition = "EMA IG 5.5.2"
    //  * numerator.comparator.coding.system = $100000000008 // TO DO: not easily extendable, what to do with it?

      * numerator.system = $100000110633
      * numerator from unit-of-measurement-vs

    //  * denominator from all-units-vs (unit of presentation or unit of presentation)
      
    * concentrationRatio
      * ^short = "Strength per unit of measurement (20mg/1ml)"
      * ^definition = "EMA IG 5.5.2"
 

    //  * numerator.system = $100000110633
    //  * numerator from unit-of-measurement-vs

    //  * denominator.system = $100000110633
    //  * denominator.code from unit-of-measurement-vs

    * referenceStrength
      * ^definition = "EMA IG 5.5.3. According to EMA, this is a mandatory element for all products, which is not necessarily accepted by all NCAs, and it is ambivalent in ISO IDMP."
      * ^short = "Strenth expressed in terms of a reference substance; reference strength type not distinguished. According to EMA IG, all products need to have reference strentgh (repeating the strentgh, if needed)"
      * substance 1..1
      * substance from SubstancesSMS (example)
        * ^short = "Substance code from EMA SMS" 
      * strengthRatio // This is 1..1 in FHIR spec!
        * numerator.system = $100000110633
        * numerator from unit-of-measurement-vs

        * denominator.code from all-units-vs
