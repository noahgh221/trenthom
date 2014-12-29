<xsl:stylesheet version="2.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:xlink="http://www.w3.org/1999/xlink"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
    xmlns:ead="urn:isbn:1-931666-22-9"
    xmlns="urn:isbn:1-931666-22-9" 
    exclude-result-prefixes="ead xsi xs">

<xsl:output method="text" omit-xml-declaration="yes" encoding="utf-8"/>

<xsl:strip-space elements="*"/>

    <xsl:variable name="tab">
        <xsl:text>&#x09;</xsl:text>
    </xsl:variable>

    <xsl:variable name="newline">
        <xsl:text>&#xa;</xsl:text>
    </xsl:variable>


<xsl:template match="/">
    
<!-- Column Headers -->
    
    <xsl:text>Aleph_Number</xsl:text>
    <xsl:value-of select="$tab"/>
    
    <xsl:text>RL_Number</xsl:text>
    <xsl:value-of select="$tab"/>
    
    <xsl:text>EADID</xsl:text>
    <xsl:value-of select="$tab"/>
    
    <xsl:text>URL</xsl:text>
    <xsl:value-of select="$tab"/>
    
     
<!-- Begin Data Rows -->

<xsl:value-of select="$newline"/>
    <xsl:for-each select="collection('file:/c:/Users/nh48/documents/github/trenthom/5_AT_exports/?select=*.xml')">
    <xsl:value-of select="//ead:num[@type='aleph']"/><xsl:value-of select="$tab"/>
    <xsl:value-of select="//ead:archdesc/ead:did/ead:unitid"/><xsl:value-of select="$tab"/>
    <xsl:value-of select="//ead:eadid"/><xsl:value-of select="$tab"/>
    <xsl:value-of select="//ead:eadid/@url"/>
    <xsl:value-of select="$newline"/>
</xsl:for-each>
    
</xsl:template>


</xsl:stylesheet>