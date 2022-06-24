// based on: KR-Core https://hins.or.kr/nrc_fhir/StructureDefinition-krcore-roadnameaddress.html
Extension: SLAddressExt
Id: SLAddressExt
Title: "Sri Lanka Core Address Extension"
Description: "an example address extension which could be used in Sri Lanka"
* ^meta.lastUpdated = "2022-06-23T16:06:30.695+09:00"
* ^url = "http://example.org/fhir/SLcore/StructureDefinition/SLAddressExt"
* ^version = "1.0.0"
* ^status = #draft
* ^publisher = "Alex"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://example.org/fhir/SLcore/"
* ^jurisdiction = urn:iso:std:iso:3166#KR
* ^purpose = "to define road addresses in Sri Lanka"
//The type of element the extension is based on
* ^context.type = #element
* ^context.expression = "Address"
* . ..1
* . ^short = "Sri lanka core address"
* . ^definition = "Sri lanka core address Extension to accomodate district and road name"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
//Defining new elements for the address 
    district 1..1 and
    roadName 1..1 
* extension[district] ^short = "the district the person lives in"
* extension[district].value[x] 1..
* extension[district].value[x] only string
* extension[roadName] ^short = "the name of the road"
* extension[roadName].value[x] 1..
* extension[roadName].value[x] only string
//URL is required again to define what should be put in the resource following this profile 
* url = "http://example.org/fhir/SLcore/StructureDefinition/SLAddressExt" (exactly)