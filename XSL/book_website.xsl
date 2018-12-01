<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output 
    method="html" 
    doctype-system="about:legacy-compat"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Book Shop</title>
            </head>
            <body>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="catalog">
        <h1>Library Catalog</h1>
        <ul>
            <xsl:for-each select="book">
                <xsl:sort select="@id"/>
                <xsl:apply-templates select=".">
                    <xsl:with-param select="@id" name="id"/>
                </xsl:apply-templates>
            </xsl:for-each>
        </ul>
    </xsl:template>

    <xsl:template match="book">
        <xsl:param name="id"/>
        <xsl:variable name="title" select="title"/>
        <xsl:variable name="genre" select="genre"/>
        <xsl:variable name="author" select="author"/>

        <li>
            <xsl:text>[</xsl:text>
            <a href="#">    
                <xsl:value-of select="$id"/>
            </a>
            <xsl:text>] : </xsl:text>
            <xsl:value-of select="$title"/>
            <xsl:text> (</xsl:text>
            <xsl:value-of select="$genre"/>
            <xsl:text>) FROM </xsl:text>
            <xsl:value-of select="$author"/>
        </li>
    </xsl:template>

</xsl:stylesheet>