<?xml version="1.0" encoding="UTF-8"?>
<!-- https://stackoverflow.com/questions/1134318/xslt-xslstrip-space-does-not-work -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:variable name="whitespace">&#x20;&#x9;&#xD;&#xA;</xsl:variable>
    
    <!-- Trim all whitespace at beginning of string -->
    <xsl:template name="trim-start">
        <xsl:param name="text"/>
        <xsl:variable name="first-char" select="substring($text, 1, 1)" />
        <xsl:choose>
            <xsl:when test="contains($whitespace, $first-char)">
                <xsl:call-template name="trim-start">
                    <xsl:with-param name="text" select="substring($text, 2)" />
                </xsl:call-template>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="$text" />
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <!-- Trim all whitespace at end of string -->
    <xsl:template name="trim-end">
        <xsl:param name="text"/>
        <xsl:variable name="last-char" select="substring($text, string-length($text), 1)" />
        <xsl:choose>
            <xsl:when test="contains($whitespace, $last-char)">
                <xsl:call-template name="trim-end">
                    <xsl:with-param name="text" select="substring($text, 1, string-length($text) - 1)" />           
                </xsl:call-template>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="$text" />
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template match="text()">
        <xsl:call-template name="trim-start">
            <xsl:with-param name="text">
                <xsl:call-template name="trim-end">
                    <xsl:with-param name="text" select="."/>
                </xsl:call-template>
            </xsl:with-param>
        </xsl:call-template>
    </xsl:template>
</xsl:stylesheet>