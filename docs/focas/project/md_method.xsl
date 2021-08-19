<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:functx="http://www.functx.com"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" 
    exclude-result-prefixes="xs functx"
    version="2.0">
    
    <xsl:import href="http://www.xsltfunctions.com/xsl/functx-1.0.1-doc.xsl"/>
    
    <xsl:template match="/">
        <xsl:text>&#xa;&#xa;</xsl:text>
        
        <xsl:text># Function Name</xsl:text>
        <xsl:text>&#xa;&#xa;</xsl:text>
        <xsl:apply-templates select="root/func/title"/>
        
        <xsl:text>## Declaration</xsl:text>
        <xsl:text>&#xa;&#xa;</xsl:text>
        <xsl:apply-templates select="root/func/declare/vc/prottype"/>
        
        <xsl:text>## Description</xsl:text>
        <xsl:text>&#xa;&#xa;</xsl:text>
        <xsl:apply-templates select="root/func/doc"/>
        
        <xsl:text>## Arguments</xsl:text>
        <xsl:text>&#xa;&#xa;</xsl:text>
        <xsl:text>| Name | Direction | Description |&#xa;</xsl:text>
        <xsl:text>|---|---|---|&#xa;</xsl:text>
        <xsl:apply-templates select="root/func/argument/*/*/item"/>
    
    </xsl:template>
    
    <xsl:template match="root/func/title">
        <xsl:value-of select="."/>
        <xsl:text>&#xa;&#xa;</xsl:text>
    </xsl:template>
    
    <xsl:template match="root/func/declare/vc/prottype">
        <xsl:text>```c&#xa;</xsl:text>
        <xsl:value-of select="."/>
        <xsl:text>&#xa;```</xsl:text>
        <xsl:text>&#xa;&#xa;</xsl:text>
    </xsl:template>
    
    <xsl:template match="root/func/doc">
        <xsl:copy-of select="cmn"/>
        <xsl:text>&#xa;&#xa;</xsl:text>
    </xsl:template>
    
    <xsl:template match="root/func/argument/*/*/item">
        <xsl:text>| </xsl:text>
        <xsl:value-of select="name"/>
        <xsl:text> | </xsl:text>
        <xsl:value-of select="type"/>
        <xsl:text> | </xsl:text>
        <xsl:copy-of select="normalize-space(content)"/>
        <xsl:text> |&#xa;</xsl:text>
    </xsl:template>
    
</xsl:stylesheet>