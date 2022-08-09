Extension: SLMOHareaExt
Id: SLMOHareaExt
Title: "Sri Lanka Core MoH Area Extension"
Description: "an example MoH Area extension"
* ^meta.lastUpdated = "2022-06-23T16:06:30.695+09:00"
* ^url = "http://example.org/fhir/SLcore/StructureDefinition/SLMOHareaExt"
* ^version = "1.0.0"
* ^status = #draft
* ^publisher = "Alex"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://example.org/fhir/SLcore/"
* ^jurisdiction = urn:iso:std:iso:3166#SL
* ^purpose = "to define road addresses in Sri Lanka"
//The type of element the extension is based on
* . ..1
* . ^short = "Sri lanka core address"
* . ^definition = "Sri lanka core address Extension to accomodate MoH area"
//Defining new elements for the address 
* extension ^short = "the MOH area of the person or organization"
* extension 1..
* extension.value[x] only Coding
* extension.valueCoding from SLMOhareaVS
//URL is required again to define what should be put in the resource following this profile 
* url = "http://example.org/fhir/SLcore/StructureDefinition/SLMOHareaExt" (exactly)