<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/films" >
    <html>
        <head>
            <META http-equiv="Content-Type" content="text/html; charset=UTF-8" />
            <title>Film Provider</title>
        </head>
        <body>
            <h1>Liste des films</h1>
            <xsl:for-each select="film">
                <xsl:variable name="real"><xsl:value-of select="attribute::id_realisateur"/></xsl:variable>
                <table width="60%">
                    <tr>
                        <td colspan="2"><b><xsl:value-of select="titre"/></b><i> (<xsl:value-of select="/films/realisateur[@id_realisateur=$real]/prenom"/>, <xsl:value-of select="/films/realisateur[@id_realisateur=$real]/nom"/>)</i></td>
                    </tr>
                    <tr>
                        <xsl:if test="image=false()"><td colspan="2"><xsl:value-of select="resume"/></td></xsl:if>
                    </tr>
                </table>
                <hr/>
            </xsl:for-each>
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>