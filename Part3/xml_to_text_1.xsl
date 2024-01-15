<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text"/>
    <xsl:template match="/">
        <xsl:for-each select="veterinary_clinic/staffs/staff">
            Уникален номер: <xsl:value-of select="@id"/>
            Име на служителя: <xsl:value-of select="name_s"/>
            Фамилия на служителя: <xsl:value-of select="last_name_s"/>
            Телефонен номер: <xsl:value-of select="phone_number_s"/>
            Позиция: <xsl:value-of select="position"/>
            Заплата: <xsl:value-of select="salary"/>
            Имейл: <xsl:value-of select="email_s"/>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
