<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text"/>
    <xsl:template match="/">
        <xsl:for-each select="veterinary_clinic/manipulations/manipulation">
            Анастезия: <xsl:value-of select="@anesthesia"/>
            Име на манипулацията: <xsl:value-of select="name_m"/>
            Цена на манипулацията: <xsl:value-of select="price"/>
            Продължителност: <xsl:value-of select="duration"/>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>