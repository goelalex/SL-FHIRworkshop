Profile: SLCorePatient
Parent: Patient
Id: SLCorePatient
Description: "Defines the LK Core constraints and extensions on the Patient resource for the minimal set of data to query and retrieve an individual’s demographic information."
* ^meta.lastUpdated = "2020-12-24T10:03:51.220+00:00"
* ^url = "http://example.org/fhir/SLcore/StructureDefinition/SLCorePatient"
* ^version = "0.1"
* ^status = #draft
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    PHN 1..* and
    NIC 0..1 and
    PPN 0..*
* identifier[PHN].type 1..
* identifier[PHN] ^short = "this is the patient's PHN"
* identifier[PHN] ^definition = "this is the longer description patient's PHN that appears in the tool tip"
* identifier[PHN].type = http://terminology.hl7.org/CodeSystem/v2-0203#JHN (exactly)
* identifier[PHN].system 1..
* identifier[PHN].system = "http://fhir.health.gov.lk/ns/phn" (exactly)
* identifier[PHN].value 1..
//this value should not be set exactly since this is the profile 
//* identifier[PHN].value = "123456" (exactly)
* identifier[NIC].type 1..
* identifier[NIC].type = http://terminology.hl7.org/CodeSystem/v2-0203#NI (exactly)
* identifier[NIC].system 1..
* identifier[NIC].system = "http://fhir.health.gov.lk/ns/nic" (exactly)
* identifier[NIC].value 1..
// Commented identifer[NIC] out because it should not be set exactly
//* identifier[NIC].value = "123456" (exactly)
* identifier[PPN] ^short = "An Passport number for this patient"
* identifier[PPN] ^definition = "An passport number for this patient."
* identifier[PPN].type = http://terminology.hl7.org/CodeSystem/v2-0203#PPN (exactly)
* identifier[PPN].system = "http://fhir.health.gov.lk/ns/ppn" (exactly)
* name 1..
* contact.organization obeys ref-1
* contact.organization ^constraint[1].source = "http://hl7.org/fhir/StructureDefinition/Encounter"
* contact.period obeys per-1
* contact.period ^constraint[1].source = "http://hl7.org/fhir/StructureDefinition/Encounter"
* generalPractitioner obeys ref-1
* generalPractitioner ^constraint[1].source = "http://hl7.org/fhir/StructureDefinition/Encounter"
* managingOrganization obeys ref-1
* managingOrganization ^constraint[1].source = "http://hl7.org/fhir/StructureDefinition/Encounter"
* link.other obeys ref-1
* link.other ^constraint[1].source = "http://hl7.org/fhir/StructureDefinition/Encounter"
//Putting the address extension under the address element 
* address.extension contains $SLAddressExt named SLAddressExt 0..*
* address.extension[SLAddressExt] ^short = "SL address example extension"
* address.extension[SLAddressExt] ^min = 0

Invariant: ref-1
Description: "SHALL have a contained resource if a local reference is provided"
Severity: #error

Invariant: per-1
Description: "If present, start SHALL have a lower value than end"
Severity: #error