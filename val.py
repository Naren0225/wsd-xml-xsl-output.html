import xmlschema

# Load the XSD schema
schema = xmlschema.XMLSchema('employe_schema.xsd')

# Load and validate the XML file
try:
    xml_file = 'employe.xml'
    schema.validate(xml_file)
    print("XML file is valid according to the schema.")
except xmlschema.XMLSchemaValidationError as e:
    print("XML file is not valid according to the schema:")
    print(e)