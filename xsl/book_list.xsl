<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml"/>

    <xsl:template match="/">
        <books>
            <xsl:apply-templates/>
        </books>
    </xsl:template>

    <xsl:template match="catalog">
        <xsl:for-each select="book">
            <xsl:sort select="book/@isbn"/>
            <xsl:apply-templates select="."/>
        </xsl:for-each>
    </xsl:template>

    <xsl:template match="book">
        <xsl:variable name="id" select="@id"/>
        <xsl:variable name="author" select="author"/>

        <book>
            <xsl:attribute name="id">
                <xsl:value-of select="$id"/>
            </xsl:attribute>

            <xsl:attribute name="author">
                <xsl:value-of select="$author"/>
            </xsl:attribute>

            <xsl:value-of select="title"/>
        </book>
    </xsl:template>

</xsl:stylesheet>