<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1 align="center">Ветринарна клиника</h1>
                <table border="2" align="center">
                    <tr>
                        <th>Номер на микрочип</th>
                        <th>Име на пациента</th>
                        <th>Порода</th>
                        <th>Възраст</th>
                    </tr>
                    <xsl:for-each select="veterinary_clinic/patients/patient">
                        <tr>
                            <td>
                                <xsl:call-template name="no_microchip"/>
                            </td>
                            <td>
                                <xsl:call-template name="name_p"/>
                            </td>
                            <td>
                                <xsl:call-template name="breed"/>
                            </td>
                            <td>
                                <xsl:call-template name="age"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template name="no_microchip">\
        <xsl:value-of select="@no_microchip"/>
    </xsl:template>

    <xsl:template name="name_p">
        <xsl:value-of select="name_p"/>
    </xsl:template>

    <xsl:template name="breed">
        <xsl:value-of select="breed"/>
    </xsl:template>

    <xsl:template name="age">
        <xsl:value-of select="age"/>
    </xsl:template>

</xsl:stylesheet>