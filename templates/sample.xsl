<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/instantieRegister">
        <html>
            <body>
                <h2 style="margin-left:8rem">Toezicht nodig augustus 2022</h2>
                <table border="1" style="text-align:center">
                    <tr font="bold">
                        <th>Naam instantie</th>
                        <th>Plaats instantie</th>
                        <th>Reden voor toezicht</th>
                    </tr>
                    
                    <xsl:for-each select="instantieOnderToezicht">
                        <tr>
                            <td><xsl:value-of select="instantieNaam"/></td>
                            <td><xsl:value-of select="instantiePlaats"/></td>
                            <td><xsl:value-of select="toezichtReden"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>