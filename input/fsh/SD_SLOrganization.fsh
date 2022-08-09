Profile: SLCoreOrganizationProfile
Parent: Organization
Id: sl-core-organization
Title: "SL Core Organization Profile"
Description: "This is the SL Core Organization profile."
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* ^date = "2022-04-20"
* ^publisher = "SL Core Workgroup"
/*
* ^contact.name = "HL7 International - Cross-Group Projects"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://www.hl7.org/Special/committees/cgp"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "example@example.org"

* ^copyright = "Used by permission of HL7 International, all rights reserved Creative Commons License"
*/
* . ^definition = "\\-"
* . ^comment = "\\-"
* . ^mustSupport = false
* identifier MS
* active 1.. MS
* name 1.. MS
* telecom MS
* telecom.system MS
* telecom.value MS
* address MS
* address.line ..4 MS
* address.line only string
* address.city ..1 MS
* address.city only string
* address.district ..1 MS
* address.district only string
* address.district from SLdistrictsVS (extensible)
* address.district ^binding.description = "SL District Codes."
* address.postalCode ..1 MS
* address.country ..1 MS
* address.country only string