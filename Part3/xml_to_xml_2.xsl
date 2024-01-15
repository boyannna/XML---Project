<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="xml" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <veterinary_clinic>
            <staffs>
                <xsl:for-each select="veterinary_clinic/staffs/staff">
                    <staff>
                        <xsl:call-template name="id"/>
                        <name_s>
                            <xsl:call-template name="name_s"/>
                        </name_s>
                        <last_name_s>
                            <xsl:call-template name="last_name_s"/>
                        </last_name_s>
                        <phone_number_s>
                            <xsl:call-template name="phone_number_s"/>
                        </phone_number_s>
                        <position>
                            <xsl:call-template name="position"/>
                        </position>
                        <salary>
                            <xsl:call-template name="salary"/>
                        </salary>
                        <email_s>
                            <xsl:call-template name="email_s"/>
                        </email_s>
                    </staff>
                </xsl:for-each>
            </staffs>
            <patients>
                <xsl:for-each select="veterinary_clinic/patients/patient">
                    <patient>
                        <xsl:call-template name = "presence_of_castration"/>
                        <xsl:call-template name = "no_microchip"/>
                        <name_p>
                            <xsl:call-template name="name_p"/>
                        </name_p>
                        <type>
                            <xsl:call-template name="type"/>
                        </type>
                        <breed>
                            <xsl:call-template name="breed"/>
                        </breed>
                        <gender>
                            <xsl:call-template name="gender"/>
                        </gender>
                        <age>
                            <xsl:call-template name="age"/>
                        </age>
                        <weight>
                            <xsl:call-template name="weight"/>
                        </weight>
                    </patient>
                </xsl:for-each>
            </patients>
        </veterinary_clinic>
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

    <xsl:template name="phone_number_s">
        <xsl:value-of select="phone_number_s"/>
    </xsl:template>

    <xsl:template name="position">
        <xsl:value-of select="position"/>
    </xsl:template>

    <xsl:template name="salary">
        <xsl:value-of select="salary"/>
    </xsl:template>

    <xsl:template name="email_s">
        <xsl:value-of select="email_s"/>
    </xsl:template>

    <xsl:template name="type">
        <xsl:value-of select="type"/>
    </xsl:template>

    <xsl:template name="presence_of_castration">
        <xsl:value-of select="@presence_of_castration"/>
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

    <xsl:template name="gender">
        <xsl:value-of select="gender"/>
    </xsl:template>

    <xsl:template name="age">
        <xsl:value-of select="age"/>
    </xsl:template>

    <xsl:template name="weight">
        <xsl:value-of select="weight"/>
    </xsl:template>

</xsl:stylesheet>