<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/class">
       
        <html>
            <style>
                table{
                    border: 1px solid red;
                    border-spacing: 0;
                    width: 80vw;
                    text-align: center;
                }
                table th{
                    font-size: 1.2rem;
                }
                table th, table td{
                    border: 1px solid red;
                    padding: 5px 5px;
                }
            </style>
            <body>
                <h2>Student List</h2>
                <table>
                    <thead>
                        <th>S.N.</th>
                        <th>Roll no</th>
                        <th>Full Name</th>
                        <th>Math</th>
                        <th>Science</th>
                        <th>Social</th>
                        <th>Total</th>
                        <th>Percentage</th>
                        <th>Result</th>
                        <th>Division</th>
                    </thead>

                    <xsl:for-each select = "student">
                        <tr>
                            <td class="sn">1</td>
                            <td><xsl:value-of select = "roll"/></td>
                            <td><xsl:value-of select = "name"/></td>
                            <td class="math"><xsl:value-of select = "marks/math"/></td>
                            <td class="science"><xsl:value-of select = "marks/science"/></td>
                            <td class="social"><xsl:value-of select = "marks/social"/></td>
                            <td class="total">300</td>
                            <td class="percentage">100%</td>
                            <td class="result">Pass</td>
                            <td class="division">Fail</td>
                        </tr>

                    </xsl:for-each>
                </table>

                <script src="result.js"></script>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>