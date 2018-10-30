<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml"/>

    <xsl:template match="/">
        <gent>
            <xsl:apply-templates/>
        </gent>
    </xsl:template>

    <xsl:template match="root">
        <xsl:for-each select="element">
            <xsl:sort select="stadsdeel"/>
            <xsl:apply-templates select="."/>
        </xsl:for-each>
    </xsl:template>

    <xsl:template match="element">
        <xsl:variable name="city" select="stadsdeel"/>

        <xsl:if test="not(preceding-sibling::element[stadsdeel=$city])">
            <city_part>
                <xsl:value-of select="$city"/>
            </city_part>
        </xsl:if>
    </xsl:template>

</xsl:stylesheet>