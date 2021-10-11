<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <!-- matches the existing tags -->
    <xsl:output
        encoding="UTF-8"
        doctype-system="xkb.dtd"
        indent="yes"
    />

    <!-- Identity transform -->
    <xsl:template match="@* | node()">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="/xkbConfigRegistry/layoutList">
        <xsl:copy>
            <xsl:copy-of select="@*"/>
            <xsl:copy-of select="node()"/>
            <layout>
                <configItem>
                    <name>de_sym</name>
                    <shortDescription>de_sym</shortDescription>
                    <description>German (Swapped Num/Sym)</description>
                    <languageList>
                        <iso639Id>deu</iso639Id>
                    </languageList>
                </configItem>
            </layout>
            <xsl:text>&#xA;</xsl:text>
        </xsl:copy>
    </xsl:template>
</xsl:stylesheet>