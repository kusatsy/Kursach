Promise.all([
    fetch('xml_4.xml').then(r => r.text()),
    fetch('xslt_4.xsl').then(r => r.text())
]).then(([xmlString, xslString]) => {
    const parser = new DOMParser();
    const xml = parser.parseFromString(xmlString, 'text/xml');
    const xsl = parser.parseFromString(xslString, 'text/xml');
    const xsltProcessor = new XSLTProcessor();
    xsltProcessor.importStylesheet(xsl);
    const resultDocument = xsltProcessor.transformToFragment(xml, document);
    document.getElementById('gallery-content').appendChild(resultDocument);
});
