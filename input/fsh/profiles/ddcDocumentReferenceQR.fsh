Profile: DigitalCertificateDocumentReferenceQR
Parent: DocumentReference
Description: "Digital Certificate DocumentReference for QR codes including the QR image and the serialized content."

* type 1..1 MS
* subject only Reference(DigitalCertificatePatient)
* authenticator 1.. MS
* authenticator only Reference(DigitalCertificateOrganization)
* content ^slicing.discriminator.type = #value
* content ^slicing.discriminator.path = "format"
* content ^slicing.rules = #closed
* content 2..* MS
* content.format from DDCQRFormatCodesVS (extensible)
* content contains qrImage 1..* MS 
    and qrContent 1..1 MS 
    and qrPDF 0..1 MS
* content[qrImage].attachment.data 1..1 MS
* content[qrImage].attachment.contentType 1..1 MS
* content[qrImage].format = DDCQRFormatCodes#image
* content[qrContent].attachment.data 1..1 MS
* content[qrContent].attachment.contentType 1..1 MS
* content[qrContent].format = DDCQRFormatCodes#serialized
* content[qrPDF].attachment.data 1..1 MS
* content[qrPDF].attachment.contentType 1..1 MS
* content[qrPDF].format = DDCQRFormatCodes#pdf

Instance: DigitalCertificateDocumentReferenceQRExample
InstanceOf: DigitalCertificateDocumentReferenceQR
Usage: #example
Title: "DigitalCertificateDocumentReferenceQRExample"
Description: "An example of a digital certificate document reference for QR codes"
* type.coding.system = "http://loinc.org"
* type.coding.code = #55107-7
* type.coding.display = "Addendum Document"
* status = #current
* subject = Reference(DigitalCertificatePatientExample)
* authenticator = Reference(DigitalCertificateOrganizationExample)
// * content.attachment.contentType = #image/png
// * content.attachment.language = #en
// * content.attachment.title = "QR Code"
// * content.attachment.data = "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"
// * content.format = DDCQRFormatCodes#image
* content[qrImage].attachment.data = "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"
* content[qrImage].attachment.contentType = #image/png
* content[qrContent].attachment.data = "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"
* content[qrContent].attachment.contentType = #image/png
* content[qrPDF].attachment.data = "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"
* content[qrPDF].attachment.contentType = #application/pdf

