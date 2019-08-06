<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"
            doctype-system="about:legacy-compat"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Pokédex</title>
                <link rel="stylesheet" type="text/css" href="bootstrap/bootstrap.min.css"/>
                <link rel="stylesheet" type="text/css" href="css/types.css"/>
            </head>            
            <body>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="pokedex">
        <h2>Pokédex</h2>

        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Name</th>
                    <th scope="col">Type</th>
                    <th scope="col">Evolution</th>
                    <th scope="col">HP</th>
                    <th scope="col">ATT</th>
                    <th scope="col">DEF</th>
                    <th scope="col">SPD</th>
                    <th scope="col">SATT</th>
                    <th scope="col">SDEF</th>
                </tr>
            </thead>
            <tbody>
                <xsl:for-each select="pokemon">
                    <xsl:sort select="@id" data-type="number"/>
                    <xsl:apply-templates select="."/>
                </xsl:for-each>
            </tbody>
        </table>
    </xsl:template>

    <xsl:template match="pokemon">
        <xsl:variable name="index" select="@id"/>
        <xsl:variable name="name" select="name"/>
        <xsl:variable name="hp" select="stats/HP"/>
        <xsl:variable name="att" select="stats/ATK"/>
        <xsl:variable name="def" select="stats/DEF"/>
        <xsl:variable name="spd" select="stats/SPD"/>
        <xsl:variable name="satt" select="stats/SAT"/>
        <xsl:variable name="sdef" select="stats/SDF"/>

        <xsl:variable name="lowercase" select="'abcdefghijklmnopqrstuvwxyz'" /> 
        <xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'" /> 

        <tr>
            <td>
                <xsl:value-of select="$index"/>
            </td>
            <td>
                <xsl:value-of select="translate($name, $uppercase, $lowercase)"/>
            </td>
            <td>
                <xsl:apply-templates select="type"/>
            </td>
            <td>
                <xsl:attribute name="class">
                    <xsl:text>small</xsl:text>
                </xsl:attribute>
                <xsl:apply-templates select="evolutions">
                    <xsl:with-param select="$index" name="id"/>
                </xsl:apply-templates>
            </td>
            <td>
                <xsl:attribute name="class">
                    <xsl:text>small gray</xsl:text>
                </xsl:attribute>
                <xsl:value-of select="$hp"/>
            </td>
            <td>
                <xsl:attribute name="class">
                    <xsl:text>small gray</xsl:text>
                </xsl:attribute>
                <xsl:value-of select="$att"/>
            </td>
            <td>
                <xsl:attribute name="class">
                    <xsl:text>small gray</xsl:text>
                </xsl:attribute>
                <xsl:value-of select="$def"/>
            </td>
            <td>
                <xsl:attribute name="class">
                    <xsl:text>small gray</xsl:text>
                </xsl:attribute>
                <xsl:value-of select="$spd"/>
            </td>
            <td>
                <xsl:attribute name="class">
                    <xsl:text>small gray</xsl:text>
                </xsl:attribute>
                <xsl:value-of select="$satt"/>
            </td>
            <td>
                <xsl:attribute name="class">
                    <xsl:text>small gray</xsl:text>
                </xsl:attribute>
                <xsl:value-of select="$sdef"/>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="type">
        <xsl:variable name="type" select="text()"/>
        <xsl:variable name="lowercase" select="'abcdefghijklmnopqrstuvwxyz'" /> 
        <xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'" /> 

        <span>
            <xsl:attribute name="class">
                <xsl:value-of select="translate($type, $uppercase, $lowercase)"/>
            </xsl:attribute>
            <xsl:value-of select="$type"/>
        </span>
    </xsl:template>

    <xsl:template match="evolutions">
        <xsl:param name="id"/>

        <xsl:for-each select="evolution">
            <xsl:if test="@id=$id+1">
                <xsl:value-of select="name"/>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
