<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/class">
        <html>
            <body>
                <h2>Student List</h2>

                <table border="1" style="border-spacing: 0; border:2px solid black; text-align: center; width: 350px">
                    <tr>
                        <th>Roll Number</th>
                        <th>First Name</th>
                        <th>Last name</th>
                    </tr>

                    <xsl:for-each select = "student">
                        <tr>
                            <td><xsl:value-of select = "rollnum"/></td>
                            <td><xsl:value-of select = "firstname"/></td>
                            <td><xsl:value-of select = "lastname"/></td>
                        </tr>

                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>