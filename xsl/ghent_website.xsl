<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"
            doctype-system="about:legacy-compat"/>

    <!-- basisknoop -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Street Summary</title>
            </head>
            <body>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>

    <!-- root knoop -->
    <xsl:template match="root">
        <h1>Streets in Ghent</h1>
        <ul>
            <xsl:for-each select="element">
                <xsl:sort select="straatcode" data-type="number"/>
                <xsl:apply-templates select="."/>
            </xsl:for-each>
        </ul>
    </xsl:template>

    <!-- element knoop -->
    <xsl:template match="element">
        <xsl:variable name="code" select="straatcode"/>
        <xsl:variable name="street" select="straatnaam"/>
        <xsl:variable name="part" select="stadsdeel"/>

        <li>
            <xsl:text>[</xsl:text>
            <a href="#">
                <xsl:value-of select="$code"/>
            </a>
            <xsl:text>] : </xsl:text>
            <xsl:value-of select="$street"/>
            <xsl:text> (</xsl:text>
            <xsl:value-of select="$part"/>
            <xsl:text>)</xsl:text>
        </li>
    </xsl:template>
</xsl:stylesheet>