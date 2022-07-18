<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<xsl:apply-templates select="/inhoud/*"/>
</xsl:template>

<xsl:template match="h2">
    <h2><xsl:apply-templates select="text()|./*"/></h2>
</xsl:template>

<xsl:template match="tip">
    <div class="blok tip"><xsl:apply-templates select="text()|./*"/></div>
</xsl:template>
<xsl:template match="extra">
    <div class="blok extra"><xsl:apply-templates select="text()|./*"/></div>
</xsl:template>

<xsl:template match="p">
    <p><xsl:apply-templates select="text()|./*"/></p>
</xsl:template>


<xsl:template match="table">
        <table>
            <xsl:apply-templates select="./*"/>
        </table>
    </xsl:template>
    <xsl:template match="tr">
        <tr>
            <xsl:apply-templates select="./*"/>
        </tr>
    </xsl:template>
    <xsl:template match="td">
        <td colspan="{@colspan}" rowspan="{@rowspan}">
            <xsl:apply-templates select="text()|./*"/>
        </td>
    </xsl:template>
    <xsl:template match="th">
        <th>
            <xsl:apply-templates select="text()|./*"/>
        </th>
    </xsl:template>

</xsl:stylesheet>