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
                        <xsl:sort select="results/percentage" data-type="number" order="descending"/>
                            <tr>
                                
                                <td><xsl:value-of select = "roll"/></td>
                                <td><xsl:value-of select = "name"/></td>
                                <td class="math"><xsl:value-of select = "marks/math"/></td>
                                <td class="science"><xsl:value-of select = "marks/science"/></td>
                                <td class="social"><xsl:value-of select = "marks/social"/></td>
                                <td class="total"><xsl:value-of select = "results/total"/></td>
                                <td class="percentage"><xsl:value-of select = "results/percentage"/></td>
                                <td class="result"><xsl:value-of select = "results/result"/></td>
                                <td class="division"><xsl:value-of select = "results/division"/></td>
                            </tr>
                        

                    </xsl:for-each>
                </table>

            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>