
Instance: questionnaire-response-vmp
InstanceOf: QuestionnaireResponse
Description: "Questionnaire Response example for adding a drug level of VMP to a fhir server"
Title:    "VMP Questionnaire Response 1"


* status = #in-progress
* authored = "2022-01-26T02:00:00Z"

* item[+].linkId = "ingredient"

* item[=].item[+].linkId = "ingredient-vmp"
* item[=].item[=].answer.valueCoding = beingredient-cs#000002 "insuline lispro"

* item[=].item[+].linkId = "strength-vmp"
* item[=].item[=].answer.valueQuantity.value = 100
* item[=].item[=].answer.valueQuantity.unit = "U"


* item[=].item[+].linkId = "role-vmp"
* item[=].item[=].answer.valueCoding = be-rolemed-cs#AP "Active Principle"


* item[+].linkId = "doseform-vmp"
* item[=].answer.valueCoding = http://snomed.info/sct#385219001 "Injection solution"


* item[+].linkId = "route-vmp"
* item[=].answer[+].valueCoding = http://snomed.info/sct#47625008 "Intravenous Use"
* item[=].answer[+].valueCoding = http://snomed.info/sct#34206005 "SC Use"
* item[=].answer[+].valueCoding = http://snomed.info/sct#78421000 "Intramuscular Use"



Instance: questionnaire-response-vmp2
InstanceOf: QuestionnaireResponse
Description: "Questionnaire Response example 2 for adding a drug level of VMP to a fhir server"
Title:    "VMP Questionnaire Response 2"

* status = #in-progress
* authored = "2022-01-26T02:00:00Z"

* item[+].linkId = "ingredient"

* item[=].item[+].linkId = "ingredient-vmp"
* item[=].item[=].answer[+].valueCoding = beingredient-cs#000003 "Tramadol"

* item[=].item[+].linkId = "strength-vmp"
* item[=].item[=].answer.valueQuantity.value = 37.5
* item[=].item[=].answer.valueQuantity.unit = "mg"


* item[=].item[+].linkId = "role-vmp"
* item[=].item[=].answer.valueCoding = be-rolemed-cs#AP "Active Principle"

* item[+].linkId = "ingredient"

* item[=].item[+].linkId = "ingredient-vmp"
* item[=].item[=].answer[+].valueCoding = beingredient-cs#000001 "Acetaminophen"

* item[=].item[+].linkId = "strength-vmp"
* item[=].item[=].answer.valueQuantity.value = 325
* item[=].item[=].answer.valueQuantity.unit = "mg"


* item[=].item[+].linkId = "role-vmp"
* item[=].item[=].answer.valueCoding = be-rolemed-cs#AP "Active Principle"



* item[+].linkId = "doseform-vmp"
* item[=].answer.valueCoding = http://snomed.info/sct#385055001 "Tablet"


* item[+].linkId = "route-vmp"
* item[=].answer[+].valueCoding = http://snomed.info/sct#26643006  "Oral Use"



Instance: questionnaire-response-amp
InstanceOf: QuestionnaireResponse
Description: "Questionnaire Response example  for adding a drug level of AMP to a fhir server"
Title:    "AMP Questionnaire Response "

* status = #in-progress
* authored = "2022-01-26T02:00:00Z"

* item[+].linkId = "ingredient"

* item[=].item[+].linkId = "ingredient-amp"
* item[=].item[=].answer[+].valueCoding = beingredient-cs#000004 "Rosuvastatin"

* item[=].item[+].linkId = "strength-amp"
* item[=].item[=].answer.valueQuantity.value = 40
* item[=].item[=].answer.valueQuantity.unit = "mg"


* item[=].item[+].linkId = "role-amp"
* item[=].item[=].answer.valueCoding = be-rolemed-cs#AP "Active Principle"


* item[+].linkId = "doseform-amp"
* item[=].answer.valueCoding = http://snomed.info/sct#385055001 "Tablet"


* item[+].linkId = "route-amp"
* item[=].answer[+].valueCoding = http://snomed.info/sct#26643006  "Oral Use"

* item[+].linkId = "marketingauhtorization-amp"
* item[=].answer[+].valueCoding = beMACS#000001 ""


* item[+].linkId = "marketingauhtorization-holder-amp"
* item[=].answer[+].valueCoding = beMAHolderCS#000001 ""

* item[+].linkId = "brandname-amp"
* item[=].answer[+].valueString = "Crestor 40 mg filmomh. tabl."

