Alias: $patient-birthPlace = http://hl7.org/fhir/StructureDefinition/patient-birthPlace
Alias: $Extension-UKCore-BirthSex = https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-BirthSex
Alias: $patient-cadavericDonor = http://hl7.org/fhir/StructureDefinition/patient-cadavericDonor
Alias: $Extension-UKCore-ContactPreference = https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-ContactPreference
Alias: $Extension-UKCore-DeathNotificationStatus = https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-DeathNotificationStatus
Alias: $Extension-UKCore-EthnicCategory = https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-EthnicCategory
Alias: $Extension-UKCore-ResidentialStatus = https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-ResidentialStatus
Alias: $patient-religion = http://hl7.org/fhir/StructureDefinition/patient-religion
Alias: $patient-interpreterRequired = http://hl7.org/fhir/StructureDefinition/patient-interpreterRequired
Alias: $Extension-UKCore-NHSNumberVerificationStatus = https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-NHSNumberVerificationStatus
Alias: $UKCore-Organization = https://fhir.hl7.org.uk/StructureDefinition/UKCore-Organization
Alias: $Extension-UKCore-OtherContactSystem = https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-OtherContactSystem
Alias: $patient-birthTime = http://hl7.org/fhir/StructureDefinition/patient-birthTime
Alias: $Extension-UKCore-AddressKey = https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-AddressKey
Alias: $Extension-UKCore-ContactRank = https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-ContactRank
Alias: $Extension-UKCore-CopyCorrespondenceIndicator = https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-CopyCorrespondenceIndicator
Alias: $patient-proficiency = http://hl7.org/fhir/StructureDefinition/patient-proficiency
Alias: $UKCore-Practitioner = https://fhir.hl7.org.uk/StructureDefinition/UKCore-Practitioner
Alias: $UKCore-PractitionerRole = https://fhir.hl7.org.uk/StructureDefinition/UKCore-PractitionerRole
Alias: $UKCore-RelatedPerson = https://fhir.hl7.org.uk/StructureDefinition/UKCore-RelatedPerson
Alias: $UKCore-PersonMaritalStatusCode = https://fhir.hl7.org.uk/ValueSet/UKCore-PersonMaritalStatusCode
Alias: $UKCore-PersonRelationshipType = https://fhir.hl7.org.uk/ValueSet/UKCore-PersonRelationshipType
Alias: $UKCore-HumanLanguage = https://fhir.hl7.org.uk/ValueSet/UKCore-HumanLanguage

Profile: UKCorePatient
Parent: Patient
Id: UKCore-Patient
Title: "UK Core Patient"
Description: "Defines the UK Core constraints and extensions on the Patient resource for the minimal set of data to query and retrieve an individual’s demographic information."
* ^version = "2.1.0"
* ^date = "2021-09-10"
* ^publisher = "HL7 UK"
* ^contact[0].name = "HL7 UK"
* ^contact[=].telecom.system = #email
* ^contact[=].telecom.value = "secretariat@hl7.org.uk"
* ^contact[=].telecom.use = #work
* ^contact[=].telecom.rank = 1
* ^contact[+].name = "NHS Digital"
* ^contact[=].telecom.system = #email
* ^contact[=].telecom.value = "interoperabilityteam@nhs.net"
* ^contact[=].telecom.use = #work
* ^contact[=].telecom.rank = 2
* ^purpose = "This profile allows exchange of demographics and other administrative information about an individual receiving care or other health-related services."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    $patient-birthPlace named birthPlace 0..* and
    $Extension-UKCore-BirthSex named birthSex 0..* and
    $patient-cadavericDonor named cadavericDonor 0..* and
    $Extension-UKCore-ContactPreference named contactPreference 0..* and
    $Extension-UKCore-DeathNotificationStatus named deathNotificationStatus 0..* and
    $Extension-UKCore-EthnicCategory named ethnicCategory 0..1 and
    $Extension-UKCore-ResidentialStatus named residentialStatus 0..* and
    $patient-religion named patientReligion 0..1 and
    $patient-interpreterRequired named patientInterpreterRequired 0..1
* extension[birthPlace] ^short = "The registered place of birth of the patient."
* extension[birthPlace] ^definition = "The registered place of birth of the patient."
* extension[birthPlace].value[x] ^short = "The registered place of birth of the patient."
* extension[birthSex] ^short = "The patient's phenotypic sex at birth."
* extension[birthSex] ^definition = "The patient's phenotypic sex at birth."
* extension[cadavericDonor] ^short = "Post-mortem donor status."
* extension[cadavericDonor].value[x] ^short = "Post-mortem donor status."
* extension[cadavericDonor].value[x] ^definition = "Flag indicating whether the patient authorized the donation of body parts after death."
* extension[ethnicCategory] ^short = "The ethnicity of the subject"
* extension[ethnicCategory] ^definition = "The ethnicity of the subject."
* extension[residentialStatus] ^short = "The residential status of the patient."
* extension[patientReligion] ^short = "The patient's professed religious affiliations"
* extension[patientReligion] ^definition = "The patient's professed religious affiliations."
* extension[patientReligion].value[x] ^short = "The religious affiliation of the patient"
* extension[patientReligion].value[x] ^definition = "The religious affiliation of the patient."
* extension[patientInterpreterRequired] ^short = "Whether the patient needs an interpreter"
* extension[patientInterpreterRequired] ^definition = "This Patient requires an interpreter to communicate healthcare information to the practitioner."
* extension[patientInterpreterRequired].value[x] ^short = "Indicator showing whether the patient needs an interpreter"
* extension[patientInterpreterRequired].value[x] ^definition = "Indicator showing if this Patient requires an interpreter to communicate healthcare information to the practitioner."
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.ordered = false
* identifier ^slicing.rules = #open
* identifier contains nhsNumber 0..1
* identifier[nhsNumber] ^short = "The patient's NHS number"
* identifier[nhsNumber].extension ^slicing.discriminator.type = #value
* identifier[nhsNumber].extension ^slicing.discriminator.path = "url"
* identifier[nhsNumber].extension ^slicing.rules = #open
* identifier[nhsNumber].extension contains $Extension-UKCore-NHSNumberVerificationStatus named nhsNumberVerificationStatus 1..1
* identifier[nhsNumber].system 1.. N
* identifier[nhsNumber].system = "https://fhir.nhs.uk/Id/nhs-number" (exactly)
* identifier[nhsNumber].system ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* identifier[nhsNumber].system ^extension[=].valueCode = #4.0.0
* identifier[nhsNumber].value 1.. N
* identifier[nhsNumber].value ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* identifier[nhsNumber].value ^extension[=].valueCode = #4.0.0
* identifier[nhsNumber].assigner only Reference($UKCore-Organization)
* telecom.system.extension ^slicing.discriminator.type = #value
* telecom.system.extension ^slicing.discriminator.path = "url"
* telecom.system.extension ^slicing.rules = #open
* telecom.system.extension contains $Extension-UKCore-OtherContactSystem named otherContactSystem 0..1
* telecom.system.extension[otherContactSystem] ^short = "Other contact system"
* telecom.system.extension[otherContactSystem] ^definition = "Other contact system value which extends the system element in the ContactPoint datatype."
* birthDate.extension ^slicing.discriminator.type = #value
* birthDate.extension ^slicing.discriminator.path = "url"
* birthDate.extension ^slicing.rules = #open
* birthDate.extension[birthTime] only $patient-birthTime
* birthDate.extension[birthTime] ^sliceName = "birthTime"
* birthDate.extension[birthTime] ^short = "Time of day of birth."
* birthDate.extension[birthTime] ^definition = "The time of day that the patient was born. This includes the date to ensure that the timezone information can be communicated effectively."
* birthDate.extension[birthTime].value[x] ^short = "Time of day of birth."
* birthDate.extension[birthTime].value[x] ^definition = "The time of day that the patient was born. This includes the date to ensure that the timezone information can be communicated effectively."
* address ^definition = "An address for the individual"
* address.extension ^slicing.discriminator.type = #value
* address.extension ^slicing.discriminator.path = "url"
* address.extension ^slicing.rules = #open
* address.extension contains $Extension-UKCore-AddressKey named addressKey 0..*
* address.extension[addressKey] ^short = "A patient's address key and type"
* address.extension[addressKey] ^definition = "A patient's address key and type."
* maritalStatus from $UKCore-PersonMaritalStatusCode (extensible)
* maritalStatus ^binding.description = "An indicator to identify the legal marital status of a person"
* contact.extension ^slicing.discriminator.type = #value
* contact.extension ^slicing.discriminator.path = "url"
* contact.extension ^slicing.rules = #open
* contact.extension contains
    $Extension-UKCore-ContactRank named contactRank 0..* and
    $Extension-UKCore-CopyCorrespondenceIndicator named copyCorrespondenceIndicator 0..*
* contact.relationship from $UKCore-PersonRelationshipType (extensible)
* contact.telecom.system.extension ^slicing.discriminator.type = #value
* contact.telecom.system.extension ^slicing.discriminator.path = "url"
* contact.telecom.system.extension ^slicing.rules = #open
* contact.telecom.system.extension contains $Extension-UKCore-OtherContactSystem named otherContactSystem 0..1
* contact.telecom.system.extension[otherContactSystem] ^short = "Other contact system"
* contact.telecom.system.extension[otherContactSystem] ^definition = "Other contact system value which extends the system element in the ContactPoint datatype."
* contact.organization only Reference($UKCore-Organization)
* contact.organization.identifier.assigner only Reference($UKCore-Organization)
* communication.extension ^slicing.discriminator.type = #value
* communication.extension ^slicing.discriminator.path = "url"
* communication.extension ^slicing.rules = #open
* communication.extension contains $patient-proficiency named proficiency 0..1
* communication.extension[proficiency] ^short = "Proficiency level of the communication"
* communication.extension[proficiency] ^definition = "Proficiency level of the communication."
* communication.extension[proficiency].extension ^slicing.discriminator.type = #value
* communication.extension[proficiency].extension ^slicing.discriminator.path = "url"
* communication.extension[proficiency].extension ^slicing.rules = #open
* communication.extension[proficiency].extension[level] ^sliceName = "level"
* communication.extension[proficiency].extension[level].value[x] ^short = "The proficiency level for the communication"
* communication.extension[proficiency].extension[level].value[x] ^definition = "The proficiency level for the communication."
* communication.extension[proficiency].extension[type] ^sliceName = "type"
* communication.extension[proficiency].extension[type].value[x] ^short = "The proficiency type for the communication"
* communication.extension[proficiency].extension[type].value[x] ^definition = "The proficiency type for the communication."
* communication.language from $UKCore-HumanLanguage (extensible)
* communication.language ^short = "A ValueSet that identifies the language used by a person."
* communication.language ^definition = "A ValueSet that identifies the language used by a person."
* communication.language ^binding.description = "A ValueSet that identifies the language used by a person."
* generalPractitioner only Reference($UKCore-Practitioner or $UKCore-Organization or $UKCore-PractitionerRole)
* generalPractitioner.identifier.assigner only Reference($UKCore-Organization)
* managingOrganization only Reference($UKCore-Organization)
* managingOrganization.identifier.assigner only Reference($UKCore-Organization)
* link.other only Reference(UKCorePatient or $UKCore-RelatedPerson)
* link.other.identifier.assigner only Reference($UKCore-Organization)