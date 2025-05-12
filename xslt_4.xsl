<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <xsl:for-each select="gallery/images/image">
            <div class="gallery-item">
                <img>
                    <xsl:attribute name="src">
                        <xsl:value-of select="src"/>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="alt"/>
                    </xsl:attribute>
                </img>
            </div>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>