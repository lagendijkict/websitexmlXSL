
from lxml import etree


def transform_and_store(xml_path, xsl_path):
    # read xsl file
    xsl_root = etree.fromstring(open(xsl_path).read())
    transform = etree.XSLT(xsl_root)

    # read xml
    xml_root = etree.fromstring(open(xml_path).read())

    trans_root = transform(xml_root)

    res = etree.tostring(trans_root)
    # Convert res from byte string to normal string
    res = res.decode()

    with open('templates/styled.xml', 'w+') as f:
        f.write(res)
        return "Yes"