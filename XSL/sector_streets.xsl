<?xml version="1.0" encoding="UTF-8"?> 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml"/>

    <xsl:key name="group" match="element" use="sector"/>

    <!-- around root tag -->
    <xsl:template match="/">
        <sector>
            <naam>A20</naam>
            <xsl:apply-templates/>
        </sector>
    </xsl:template>


    <!-- within root tag -->
    <!-- iterate over all elements -->
    <!-- select elements with <sector> = A20 -->
    <!-- sort -->
    <xsl:key name="group" match="element" use="sector"/>

    <xsl:template match="root">
        <xsl:for-each select="key('group', 'A20')">
            <xsl:sort select="wijkNr" data-type="number"/>
            <xsl:apply-templates select="."/>
        </xsl:for-each>
    </xsl:template> 

    <!-- display nested tag with attribute and content -->
    <xsl:template match="element">
        <xsl:variable name="street" select="straatnaam"/>
        <xsl:variable name="streetcode" select="straatcode"/>

        <street>
            <xsl:attribute name="code">
                <xsl:value-of select="$streetcode"/>
            </xsl:attribute>

            <xsl:value-of select="$street" />
        </street>
    </xsl:template>

</xsl:stylesheet>