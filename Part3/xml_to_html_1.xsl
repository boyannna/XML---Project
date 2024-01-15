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
                        <th>Име на служителя </th>
                        <th>Фамилия на служителя </th>
                        <th>Позиция</th>
                    </tr>
                    <xsl:for-each select="veterinary_clinic/staffs/staff">
                        <tr>
                            <td>
                                <xsl:call-template name="id"/>
                            </td>
                            <td>
                                <xsl:call-template name="name_s"/>
                            </td>
                            <td>
                                <xsl:call-template name="last_name_s"/>
                            </td>
                            <td>
                                <xsl:call-template name="position"/>
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

    <xsl:template name="name_s">
        <xsl:value-of select="name_s"/>
    </xsl:template>

    <xsl:template name="last_name_s">
        <xsl:value-of select="last_name_s"/>
    </xsl:template>

    <xsl:template name="position">
        <xsl:value-of select="position"/>
    </xsl:template>

</xsl:stylesheet>