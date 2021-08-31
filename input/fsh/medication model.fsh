Logical: PackagedMedicinalProduct
Title: "Packaged Medicinal Product logical model"
Description:    "Medication Knowledge by me logical model."

* identifier 0..* Identifier "Business identifier for this medication" "Business identifier for this medication"
* code 0..* CodeableConcept "Code that identifies this medication" "Code that identifies this medication"
* version 0..1 string "business version of the product" "business version of the product"
* regulatoryStatus 0..1 string "active non active" "active non active"
* domain 0..1 string "human or veterinary" "human or veterinary"
* indication 0..* CodeableConcept "indication of the product" "human or veterinary"
* associatedCondition 0..* CodeableConcept "associated conditions" "associated conditions" //diference for above?
* name 1..* BackboneElement "Product Name" "Product Name"
  * productName 1..1 string "actual name of the product" "actual name of the product"
  * type 1..1  CodeableConcept "type of naming" "type of naming"
  * namePart 0..* BackboneElement "selecting parts of name for inteligeble purposes" "selecting parts of name for inteligeble purposes"
    * part 1..1 string "part of name" "part of name" 
    * type 1..1 CodeableConcept "type of elemente defining -strength, pharmaceutical form, etc" "type of elemente defining -strength, pharmaceutical form, etc"
  * countryLanguage 0..* BackboneElement "country for which country the name is defined" "country for which country the name is defined"
    * country 1..1 CodeableConcept "country" "country"
    * jurisdiction 0..1 CodeableConcept "jurisdiction that applies" "jurisdiction that applies"
    * language 1..1 CodeableConcept "language applicable" "language applicable"
* granularity 0..1  CodeableConcept "level of product, substance, pharmaceutical product, medicinal product or packaged medicinal product" "level of product, substance, pharmaceutical product, medicinal product or packaged medicinal product"
* kinetics 0..1 BackboneElement "pharmacokinetics information" "pharmacokinetics information"
  * areaUnderCurve 0..1 BackboneElement "auc values"  "auc values"
    * value 1..1 decimal "value of auc" "value of auc"
    * unit 1..1 string "unit of auc" "unit of auc"
  * halfLifePeriod 0..1 BackboneElement "half life period of drug" "half life period of drug"
    * value 1..1 duration "value" "value"
    * administration 1..1 BackboneElement "administration method of the half life period" "administration method of the half life period"
      * route 0..1 string "route of administration" "route of administration"
      * value 1..1 decimal "quantity " "quantity "
      * unit 1..1 string "unit of quantity administered" "unit of quantity administered"
  * bioavailability 0..1 BackboneElement "bioavailability of product" "bioavailability of product"
    * value 1..1 decimal "value for bioavailability" "value for bioavailability"
    * unit 1..1 string "unit for bioavailability" "unit for bioavailability"
    * route 0..1 string "route for which it was administered" "route for which it was administered"
  * elimination 0..* string "eliminination format of drug" "eliminination format of drug"
  * LD50 0..1 BackboneElement "lethal dose 50% for product" "lethal dose 50% for product"
    * value 1..1 decimal "value for LD50" "value for LD50"
    * unit 1..1 string "unit for LD50" "unit for LD50"
    * route 0..1 string "route for LD50" "route for LD50" 
    * document 0..1 Reference(DocumentReference) "documentation of test" "documentation of test"
    * specimen 0..1 string "specimen tested" "specimen tested"
* mechanismOfAction 0..1 string "mechanism of action of drug" "mechanism of action of drug" 
* drugType 0..1 string "type of drug - small molecule, biologic, etc" "type of drug - small molecule, biologic, etc"
* sideEffects 0..* CodeableConcept "side effects known" "side effects known" 
* interactions 0..* BackboneElement "known interactions" "known interactions"
  * type 1..1 string "type of interaction" "type of interaction"
  * substance 1..1 Reference(MedicationKnowledge) "product" "product"
  * reaction 0..1 string "what is the reaction"  "what is the reaction"
  * riskLevel 0..1 string "level of risk" "level of risk"
  * clinicalIssue 0..* Reference(DetectedIssue) "reference for clinicalIssue" "reference for clinicalIssue"
* contraIndication 0..* CodeableConcept "contraindication" "contraindication"
* monograph 0..* Reference(DocumentReference) "Associated documentation about the medication" "Associated documentation about the medication"
* masterfile 0..* Reference(DocumentReference) "masterfile from where the product comes from" "masterfile from where the product comes from"
* classification 0..* CodeableConcept "drug classification, atc, internal, etc" "drug classification, atc, internal, etc"
* drugCharacteristics 0..* CodeableConcept "characteristics for drug, opioid, etc" "characteristics for drug, opioid, etc"
* administratitionRoute 1..* BackboneElement "route for administrating" "route for administrating"
  * route 1..1 CodeableConcept "route for administrating" "route for administrating" 
  * type 1..1 string "type of route administration, offlabel, official" "type of route administration, offlabel, official"
* ingredient 0..* BackboneElement "substance present in the product" "substance present in the product"
  * reference 1..1 Reference(MedicationKnowledge) "referencing other substances" "referencing other substances"
  * role 1..1 string "active principle, color, excipient" "active principle, color, excipient"
  * strength[x] 1..1 Ratio or CodeableConcept or Quantity "strength of the ingridient" "strength of the ingridient"
* pharmaceuticalForm 1..1 CodeableConcept  "pharmaceutical Form"  "pharmaceutical Form"
* pharmacoeconomics 0..1 BackboneElement "pharmacoeconomics assessments" "pharmacoeconomics assessments"
  * value 1..1 string "value" "value"
  * unit 1..1 string "unit" "unit"
  * source 1..1 Reference(DocumentReference) "source of documentation" "source of documentation"
  * condition 0..1 CodeableConcept "condition for which it applies." "condition for which it applies."
* marketingAuthorization 0..1 Reference "marketing auhtorization of product" "marketing auhtorization of product" //RegulatedAuthorization
* marketingAuthorizationHolder 0..* Reference(Organization) "holder of the marketing authorization" "holder of the marketing authorization"
* clinicalTrial 0..* Reference(ResearchStudy) "trials done with the product" "trials done with the product"
* copayment 0..1 CodeableConcept "copayment information" "copayment information"
* package 0..* BackboneElement "packaging information" "packaging information"
  * description 0..1 markdown "description of the package" "description of the package"
  * type 0..1 CodeableConcept "type of package" "type of package"
  * closureType 0..1 CodeableConcept "type of closure" "type of closure" 
  * size 0..1 integer "size - nr of elements" "size - nr of elements"
* price 0..1 BackboneElement "pricing information" "pricing information"
  * type 1..1 CodeableConcept "type of price" "type of price"
  * source 0..1 string "source of it" "source of it"
  * cost 1..1 Money "value of the price"  "value of the price"
* preparationInstructions 0..1 markdown "The instructions for preparing the medication" "The instructions for preparing the medication"
* administrationInstructions 0..1 markdown "The instructions for administring the medication" "The instructions for administring the medication"
* productImage 0..* Reference(Binary) "image of the product" "image of the product"
* batch 0..1 BackboneElement "batch information" "batch information"
  * lotNumber 0..1 string "lotnumber" "lotnumber" 
  * expirationDate 0..1 dateTime "expirationdate" "expirationdate"
* impurity 0..* Reference "impurities potentially contained in product, allergenes, etc" "impurities potentially contained in product, allergenes, etc" //SubstanceDefinition


Logical: SubstanceModel
Title: "Substance logical model"
Description: "Substance logical model"

* identifier 0..* Identifier "Business identifier for this medication" "Business identifier for this medication"
* code 0..* CodeableConcept "Code that identifies this medication" "Code that identifies this medication"
* version 0..1 string "business version of the product" "business version of the product"
* regulatoryStatus 0..1 string "active non active" "active non active"
* domain 0..1 string "human or veterinary" "human or veterinary"
* indication 0..* CodeableConcept "indication of the product" "human or veterinary"
* associatedCondition 0..* CodeableConcept "associated conditions" "associated conditions" //diference for above?
* name 1..* BackboneElement "Product Name" "Product Name"
  * productName 1..1 string "actual name of the product" "actual name of the product"
  * type 1..1  CodeableConcept "type of naming" "type of naming"
  * namePart 0..* BackboneElement "selecting parts of name for inteligeble purposes" "selecting parts of name for inteligeble purposes"
    * part 1..1 string "part of name" "part of name" 
    * type 1..1 CodeableConcept "type of elemente defining -strength, pharmaceutical form, etc" "type of elemente defining -strength, pharmaceutical form, etc"
  * countryLanguage 0..* BackboneElement "country for which country the name is defined" "country for which country the name is defined"
    * country 1..1 CodeableConcept "country" "country"
    * jurisdiction 0..1 CodeableConcept "jurisdiction that applies" "jurisdiction that applies"
    * language 1..1 CodeableConcept "language applicable" "language applicable"
* granularity 0..1  CodeableConcept "level of product, substance, pharmaceutical product, medicinal product or packaged medicinal product" "level of product, substance, pharmaceutical product, medicinal product or packaged medicinal product"
* mechanismOfAction 0..1 string "mechanism of action of drug" "mechanism of action of drug" 
* drugType 0..1 string "type of drug - small molecule, biologic, etc" "type of drug - small molecule, biologic, etc"
* sideEffects 0..* CodeableConcept "side effects known" "side effects known" 
* interactions 0..* BackboneElement "known interactions" "known interactions"
  * type 1..1 string "type of interaction" "type of interaction"
  * substance 1..1 Reference(MedicationKnowledge) "product" "product"
  * reaction 0..1 string "what is the reaction"  "what is the reaction"
  * riskLevel 0..1 string "level of risk" "level of risk"
  * clinicalIssue 0..* Reference(DetectedIssue) "reference for clinicalIssue" "reference for clinicalIssue"
* contraIndication 0..* CodeableConcept "contraindication" "contraindication"
* monograph 0..* Reference(DocumentReference) "Associated documentation about the medication" "Associated documentation about the medication"
* masterfile 0..* Reference(DocumentReference) "masterfile from where the product comes from" "masterfile from where the product comes from"
* classification 0..* CodeableConcept "drug classification, atc, internal, etc" "drug classification, atc, internal, etc"
* drugCharacteristics 0..* CodeableConcept "characteristics for drug, opioid, etc" "characteristics for drug, opioid, etc"
* marketingAuthorization 0..1 Reference "marketing auhtorization of product" "marketing auhtorization of product" //RegulatedAuthorization
* marketingAuthorizationHolder 0..* Reference(Organization) "holder of the marketing authorization" "holder of the marketing authorization"


Logical: PharmaceuticalProdut
Title: "Pharmaceutical Product logical model"
Description: "Pharmaceutical Product logical model"

* identifier 0..* Identifier "Business identifier for this medication" "Business identifier for this medication"
* code 0..* CodeableConcept "Code that identifies this medication" "Code that identifies this medication"
* version 0..1 string "business version of the product" "business version of the product"
* regulatoryStatus 0..1 string "active non active" "active non active"
* domain 0..1 string "human or veterinary" "human or veterinary"
* indication 0..* CodeableConcept "indication of the product" "human or veterinary"
* associatedCondition 0..* CodeableConcept "associated conditions" "associated conditions" //diference for above?
* name 1..* BackboneElement "Product Name" "Product Name"
  * productName 1..1 string "actual name of the product" "actual name of the product"
  * type 1..1  CodeableConcept "type of naming" "type of naming"
  * namePart 0..* BackboneElement "selecting parts of name for inteligeble purposes" "selecting parts of name for inteligeble purposes"
    * part 1..1 string "part of name" "part of name" 
    * type 1..1 CodeableConcept "type of elemente defining -strength, pharmaceutical form, etc" "type of elemente defining -strength, pharmaceutical form, etc"
  * countryLanguage 0..* BackboneElement "country for which country the name is defined" "country for which country the name is defined"
    * country 1..1 CodeableConcept "country" "country"
    * jurisdiction 0..1 CodeableConcept "jurisdiction that applies" "jurisdiction that applies"
    * language 1..1 CodeableConcept "language applicable" "language applicable"
* granularity 0..1  CodeableConcept "level of product, substance, pharmaceutical product, medicinal product or packaged medicinal product" "level of product, substance, pharmaceutical product, medicinal product or packaged medicinal product"
* kinetics 0..1 BackboneElement "pharmacokinetics information" "pharmacokinetics information"
  * areaUnderCurve 0..1 BackboneElement "auc values"  "auc values"
    * value 1..1 decimal "value of auc" "value of auc"
    * unit 1..1 string "unit of auc" "unit of auc"
  * halfLifePeriod 0..1 BackboneElement "half life period of drug" "half life period of drug"
    * value 1..1 duration "value" "value"
    * administration 1..1 BackboneElement "administration method of the half life period" "administration method of the half life period"
      * route 0..1 string "route of administration" "route of administration"
      * value 1..1 decimal "quantity " "quantity "
      * unit 1..1 string "unit of quantity administered" "unit of quantity administered"
  * bioavailability 0..1 BackboneElement "bioavailability of product" "bioavailability of product"
    * value 1..1 decimal "value for bioavailability" "value for bioavailability"
    * unit 1..1 string "unit for bioavailability" "unit for bioavailability"
    * route 0..1 string "route for which it was administered" "route for which it was administered"
  * elimination 0..* string "eliminination format of drug" "eliminination format of drug"
  * LD50 0..1 BackboneElement "lethal dose 50% for product" "lethal dose 50% for product"
    * value 1..1 decimal "value for LD50" "value for LD50"
    * unit 1..1 string "unit for LD50" "unit for LD50"
    * route 0..1 string "route for LD50" "route for LD50" 
    * document 0..1 Reference(DocumentReference) "documentation of test" "documentation of test"
    * specimen 0..1 string "specimen tested" "specimen tested"
* mechanismOfAction 0..1 string "mechanism of action of drug" "mechanism of action of drug" 
* drugType 0..1 string "type of drug - small molecule, biologic, etc" "type of drug - small molecule, biologic, etc"
* sideEffects 0..* CodeableConcept "side effects known" "side effects known" 
* interactions 0..* BackboneElement "known interactions" "known interactions"
  * type 1..1 string "type of interaction" "type of interaction"
  * substance 1..1 Reference(MedicationKnowledge) "product" "product"
  * reaction 0..1 string "what is the reaction"  "what is the reaction"
  * riskLevel 0..1 string "level of risk" "level of risk"
  * clinicalIssue 0..* Reference(DetectedIssue) "reference for clinicalIssue" "reference for clinicalIssue"
* contraIndication 0..* CodeableConcept "contraindication" "contraindication"
* masterfile 0..* Reference(DocumentReference) "masterfile from where the product comes from" "masterfile from where the product comes from"
* classification 0..* CodeableConcept "drug classification, atc, internal, etc" "drug classification, atc, internal, etc"
* drugCharacteristics 0..* CodeableConcept "characteristics for drug, opioid, etc" "characteristics for drug, opioid, etc"
* administratitionRoute 1..* BackboneElement "route for administrating" "route for administrating"
  * route 1..1 CodeableConcept "route for administrating" "route for administrating" 
  * type 1..1 string "type of route administration, offlabel, official" "type of route administration, offlabel, official"
* ingredient 0..* BackboneElement "substance present in the product" "substance present in the product"
  * reference 1..1 Reference(MedicationKnowledge) "referencing other substances" "referencing other substances"
  * role 1..1 string "active principle, color, excipient" "active principle, color, excipient"
  * strength[x] 1..1 Ratio or CodeableConcept or Quantity "strength of the ingridient" "strength of the ingridient"
* pharmaceuticalForm 1..1 CodeableConcept  "pharmaceutical Form"  "pharmaceutical Form"


Logical: MedicinalProduct
Title: "Medicinal Product logical model"
Description: "Medicinal Product logical model"

* identifier 0..* Identifier "Business identifier for this medication" "Business identifier for this medication"
* code 0..* CodeableConcept "Code that identifies this medication" "Code that identifies this medication"
* version 0..1 string "business version of the product" "business version of the product"
* regulatoryStatus 0..1 string "active non active" "active non active"
* domain 0..1 string "human or veterinary" "human or veterinary"
* indication 0..* CodeableConcept "indication of the product" "human or veterinary"
* associatedCondition 0..* CodeableConcept "associated conditions" "associated conditions" //diference for above?
* name 1..* BackboneElement "Product Name" "Product Name"
  * productName 1..1 string "actual name of the product" "actual name of the product"
  * type 1..1  CodeableConcept "type of naming" "type of naming"
  * namePart 0..* BackboneElement "selecting parts of name for inteligeble purposes" "selecting parts of name for inteligeble purposes"
    * part 1..1 string "part of name" "part of name" 
    * type 1..1 CodeableConcept "type of elemente defining -strength, pharmaceutical form, etc" "type of elemente defining -strength, pharmaceutical form, etc"
  * countryLanguage 0..* BackboneElement "country for which country the name is defined" "country for which country the name is defined"
    * country 1..1 CodeableConcept "country" "country"
    * jurisdiction 0..1 CodeableConcept "jurisdiction that applies" "jurisdiction that applies"
    * language 1..1 CodeableConcept "language applicable" "language applicable"
* granularity 0..1  CodeableConcept "level of product, substance, pharmaceutical product, medicinal product or packaged medicinal product" "level of product, substance, pharmaceutical product, medicinal product or packaged medicinal product"
* kinetics 0..1 BackboneElement "pharmacokinetics information" "pharmacokinetics information"
  * areaUnderCurve 0..1 BackboneElement "auc values"  "auc values"
    * value 1..1 decimal "value of auc" "value of auc"
    * unit 1..1 string "unit of auc" "unit of auc"
  * halfLifePeriod 0..1 BackboneElement "half life period of drug" "half life period of drug"
    * value 1..1 duration "value" "value"
    * administration 1..1 BackboneElement "administration method of the half life period" "administration method of the half life period"
      * route 0..1 string "route of administration" "route of administration"
      * value 1..1 decimal "quantity " "quantity "
      * unit 1..1 string "unit of quantity administered" "unit of quantity administered"
  * bioavailability 0..1 BackboneElement "bioavailability of product" "bioavailability of product"
    * value 1..1 decimal "value for bioavailability" "value for bioavailability"
    * unit 1..1 string "unit for bioavailability" "unit for bioavailability"
    * route 0..1 string "route for which it was administered" "route for which it was administered"
  * elimination 0..* string "eliminination format of drug" "eliminination format of drug"
  * LD50 0..1 BackboneElement "lethal dose 50% for product" "lethal dose 50% for product"
    * value 1..1 decimal "value for LD50" "value for LD50"
    * unit 1..1 string "unit for LD50" "unit for LD50"
    * route 0..1 string "route for LD50" "route for LD50" 
    * document 0..1 Reference(DocumentReference) "documentation of test" "documentation of test"
    * specimen 0..1 string "specimen tested" "specimen tested"
* mechanismOfAction 0..1 string "mechanism of action of drug" "mechanism of action of drug" 
* drugType 0..1 string "type of drug - small molecule, biologic, etc" "type of drug - small molecule, biologic, etc"
* sideEffects 0..* CodeableConcept "side effects known" "side effects known" 
* interactions 0..* BackboneElement "known interactions" "known interactions"
  * type 1..1 string "type of interaction" "type of interaction"
  * substance 1..1 Reference(MedicationKnowledge) "product" "product"
  * reaction 0..1 string "what is the reaction"  "what is the reaction"
  * riskLevel 0..1 string "level of risk" "level of risk"
  * clinicalIssue 0..* Reference(DetectedIssue) "reference for clinicalIssue" "reference for clinicalIssue"
* contraIndication 0..* CodeableConcept "contraindication" "contraindication"
* monograph 0..* Reference(DocumentReference) "Associated documentation about the medication" "Associated documentation about the medication"
* masterfile 0..* Reference(DocumentReference) "masterfile from where the product comes from" "masterfile from where the product comes from"
* classification 0..* CodeableConcept "drug classification, atc, internal, etc" "drug classification, atc, internal, etc"
* drugCharacteristics 0..* CodeableConcept "characteristics for drug, opioid, etc" "characteristics for drug, opioid, etc"
* administratitionRoute 1..* BackboneElement "route for administrating" "route for administrating"
  * route 1..1 CodeableConcept "route for administrating" "route for administrating" 
  * type 1..1 string "type of route administration, offlabel, official" "type of route administration, offlabel, official"
* ingredient 0..* BackboneElement "substance present in the product" "substance present in the product"
  * reference 1..1 Reference(MedicationKnowledge) "referencing other substances" "referencing other substances"
  * role 1..1 string "active principle, color, excipient" "active principle, color, excipient"
  * strength[x] 1..1 Ratio or CodeableConcept or Quantity "strength of the ingridient" "strength of the ingridient"
* pharmaceuticalForm 1..1 CodeableConcept  "pharmaceutical Form"  "pharmaceutical Form"
* pharmacoeconomics 0..1 BackboneElement "pharmacoeconomics assessments" "pharmacoeconomics assessments"
  * value 1..1 string "value" "value"
  * unit 1..1 string "unit" "unit"
  * source 1..1 Reference(DocumentReference) "source of documentation" "source of documentation"
  * condition 0..1 CodeableConcept "condition for which it applies." "condition for which it applies."
* marketingAuthorization 0..1 Reference "marketing auhtorization of product" "marketing auhtorization of product" //RegulatedAuthorization
* marketingAuthorizationHolder 0..* Reference(Organization) "holder of the marketing authorization" "holder of the marketing authorization"
* clinicalTrial 0..* Reference(ResearchStudy) "trials done with the product" "trials done with the product"

* price 0..1 BackboneElement "pricing information" "pricing information"
  * type 1..1 CodeableConcept "type of price" "type of price"
  * source 0..1 string "source of it" "source of it"
  * cost 1..1 Money "value of the price"  "value of the price"
* preparationInstructions 0..1 markdown "The instructions for preparing the medication" "The instructions for preparing the medication"
* administrationInstructions 0..1 markdown "The instructions for administring the medication" "The instructions for administring the medication"
* productImage 0..* Reference(Binary) "image of the product" "image of the product"

* impurity 0..* Reference "impurities potentially contained in product, allergenes, etc" "impurities potentially contained in product, allergenes, etc" //SubstanceDefinition