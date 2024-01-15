<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1 align="center">Ветринарна клиника</h1>
                <table border="2" align="center">
                    <tr>
                        <th>Анастезия</th>
                        <th>Име на манипулацията</th>
                        <th>Цена на манипулацията</th>
                        <th>Продължителност</th>
                    </tr>
                    <xsl:for-each select="veterinary_clinic/manipulations/manipulation">
                        <tr>
                            <td>
                                <xsl:call-template name="anesthesia"/>
                            </td>
                            <td>
                                <xsl:call-template name="name_m"/>
                            </td>
                            <td>
                                <xsl:call-template name="price"/>
                            </td>
                            <td>
                                <xsl:call-template name="duration"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template name="anesthesia">
        <xsl:value-of select="@anesthesia"/>
    </xsl:template>

    <xsl:template name="name_m">
        <xsl:value-of select="name_m"/>
    </xsl:template>

    <xsl:template name="price">
        <xsl:value-of select="price"/>
    </xsl:template>

    <xsl:template name="duration">
        <xsl:value-of select="duration"/>
    </xsl:template>

</xsl:stylesheet>