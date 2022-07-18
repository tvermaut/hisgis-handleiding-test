<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<xsl:apply-templates select="/inhoud/*"/>
</xsl:template>

<xsl:template match="h2">
    <h2><xsl:apply-templates/></h2>
</xsl:template>

<xsl:template match="tip">
    <div class="blok tip"><xsl:apply-templates/></div>
</xsl:template>
<xsl:template match="extra">
    <div class="blok extra"><xsl:apply-templates/></div>
</xsl:template>

<xsl:template match="p">
    <p><xsl:apply-templates/></p>
</xsl:template>

</xsl:stylesheet>