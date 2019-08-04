<?xml version="1.0" encoding="UTF-8"?> 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml"/>

    <xsl:template match="/">
        <streets_per_citypart>
            <xsl:apply-templates/>
        </streets_per_citypart>
    </xsl:template>

    <xsl:key name="group" match="element" use="stadsdeel"/>
    <xsl:template match="root">
        <!-- Count is 1 WHEN element . (self) IS EQUAL TO the first element of group -->
        <xsl:for-each select="element[count(. | key('group', stadsdeel)[1]) = 1]">
                <xsl:sort select="stadsdeel" />
                <xsl:apply-templates select="." />
        </xsl:for-each>
    </xsl:template> 

    <xsl:template match="element">
        <city_part>
            <xsl:value-of select="stadsdeel" />
        </city_part>

        <xsl:for-each select="key('group', stadsdeel)">
            <xsl:sort select="straatnaam" />
            <street>
                <xsl:value-of select="straatnaam" />
            </street>
        </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>