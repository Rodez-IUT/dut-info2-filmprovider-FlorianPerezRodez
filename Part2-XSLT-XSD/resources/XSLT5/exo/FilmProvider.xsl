<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/films" >
        <html>
            <head>
                <META http-equiv="Content-Type" content="text/html; charset=UTF-8" />
                <title>Films</title>
            </head>
            <body>
                <h1>Films</h1>
                <table>
                    <thead>
                        <tr>
                            <th>Titre</th>
                            <th>Résumé</th>
                            <th>Nom et prénom réalisateur</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="film">
                            <xsl:variable name="real"><xsl:value-of select="attribute::id_realisateur"/></xsl:variable>
                            <tr>
                                <td><xsl:value-of select="titre"/></td>
                                <td><xsl:value-of select="resume"/></td>
                                <td><xsl:value-of select="/films/realisateur[@id_realisateur=$real]/nom"/>&#160;<xsl:value-of select="/films/realisateur[@id_realisateur=$real]/prenom"/></td>
                                <td></td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>

    </xsl:template>
</xsl:stylesheet>