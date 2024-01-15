# XML-Project

This project will look at an example structure and organization of a veterinary clinic.

* VeterinaryClinic.dtd – The DTD file that describes the XML elements and attributes that the documents in the project will contain.
* VeterinaryClinic_X.xml – 5 XML documents valid against VeterinaryClinic.dtd. The last “X” in the file name is the document number (1..5).
* VeterinaryClinicDOM.js - JavaScript file using DOM to generate valid XML.
* xml_to_html_X.xsl – A file that transforms a valid XML document into a valid HTML document. Again, the last “X” is the document number (1..4).
* xml_to_html_X.htm – Create from the above transformation files, a “X” takes values (1..4).
* xml_to_xml_X.xsl – A file that transforms a valid XML document into another valid XML document. “X” takes values 1 or 2.
* xml_to_xml_X.xsl – Create from the above transformation files, a “X” takes values 1 or 2.
* xml_to_text_X.xsl – A file that transforms a valid XML document into a text document. "X" takes values 1 or 2.
* xml_to_text_X.txt – Create from the above file transformation with “X” taking values 1 or 2.
