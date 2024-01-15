<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1 align="center">Ветринарна клиника</h1>
                <table border="2" align="center">
                    <tr>
                        <th>ID</th>
                        <th>Име на собственик</th>
                        <th>Фамилия на собственик</th>
                        <th>Телефонен номер</th>
                    </tr>
                    <xsl:for-each select="veterinary_clinic/owners/owner">
                        <tr>
                            <td>
                                <xsl:call-template name="id"/>
                            </td>
                            <td>
                                <xsl:call-template name="name_o"/>
                            </td>
                            <td>
                                <xsl:call-template name="last_name_o"/>
                            </td>
                            <td>
                                <xsl:call-template name="phone_number_o"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template name="id">
        <xsl:value-of select="@id"/>
    </xsl:template>

    <xsl:template name="name_o">
        <xsl:value-of select="name_o"/>
    </xsl:template>

    <xsl:template name="last_name_o">
        <xsl:value-of select="last_name_o"/>
    </xsl:template>

    <xsl:template name="phone_number_o">
        <xsl:value-of select="phone_number_o"/>
    </xsl:template>

</xsl:stylesheet>