<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:functx="http://www.functx.com"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" 
    exclude-result-prefixes="xs functx"
    version="2.0">
    
    <xsl:import href="http://www.xsltfunctions.com/xsl/functx-1.0.1-doc.xsl"/>
    
    
    <xsl:template match="/">
        <xsl:for-each select="root/chapter">
            <xsl:text>#</xsl:text>
            <xsl:text> </xsl:text>
            <xsl:value-of select="title"/>
            <xsl:text>&#xa;&#xa;</xsl:text>
            
            <xsl:for-each select="item">
                <xsl:text>##</xsl:text>
                <xsl:text> </xsl:text>
                <xsl:value-of select="fname"/>
                <xsl:text>&#xa;&#xa;</xsl:text>
                
                <!--
                <xsl:text>- [</xsl:text>
                <xsl:value-of select="fname"/>
                <xsl:text> *</xsl:text>
                <xsl:value-of select="explanation"/>
                <xsl:text>*](</xsl:text>
                <xsl:value-of select="functx:replace-first(functx:replace-first(fpage, '\.xml', ''), '\.\./', '')"/>
                <xsl:text>)</xsl:text>
                <xsl:text>&#xa;{.links-list}</xsl:text>
                <xsl:text>&#xa;&#xa;</xsl:text>
                -->
                
                <xsl:text>### Tabs {.tabset}</xsl:text>
                <xsl:text>&#xa;&#xa;</xsl:text>
                
                <xsl:text>#### Links</xsl:text>
                <xsl:text>&#xa;&#xa;</xsl:text>
                
                <xsl:text>- [</xsl:text>
                <xsl:value-of select="fname"/>
                <xsl:text> *</xsl:text>
                <xsl:value-of select="explanation"/>
                <xsl:text>*](</xsl:text>
                <xsl:value-of select="functx:replace-first(functx:replace-first(fpage, '\.xml', ''), '\.\./', '')"/>
                <xsl:text>)</xsl:text>
                <xsl:text>&#xa;</xsl:text>
                
                <!--
                <xsl:text>- [</xsl:text>
                <xsl:value-of select="fname"/>
                <xsl:text> *</xsl:text>
                <xsl:value-of select="explanation"/>
                <xsl:text>*](</xsl:text>
                <xsl:value-of select="functx:replace-first(functx:replace-first(fpage, '\.xml', ''), '\.\./', '')"/>
                <xsl:text>)</xsl:text>
                -->
                <xsl:text>- </xsl:text>
                <a><xsl:attribute name="href"><xsl:value-of select="functx:replace-first(fpage, '\.\./', '/focas-api/')"/></xsl:attribute><xsl:attribute name="target"><xsl:text>_blank</xsl:text></xsl:attribute>Original</a>
                <xsl:text>&#xa;</xsl:text>
                
                <xsl:text>{.links-list}</xsl:text>
                <xsl:text>&#xa;&#xa;</xsl:text>
                
                <xsl:text>#### Ethernet</xsl:text>
                <xsl:text>&#xa;&#xa;</xsl:text>
                
                <button><xsl:attribute name="class"><xsl:value-of select="concat('focas-support-', e0ia)"/></xsl:attribute>0i-A</button>
                <button><xsl:attribute name="class"><xsl:value-of select="concat('focas-support-', e0ib)"/></xsl:attribute>0i-B</button>
                <button><xsl:attribute name="class"><xsl:value-of select="concat('focas-support-', e0id)"/></xsl:attribute>0i-D</button>
                <button><xsl:attribute name="class"><xsl:value-of select="concat('focas-support-', e0if)"/></xsl:attribute>0i-F</button>
                <button><xsl:attribute name="class"><xsl:value-of select="concat('focas-support-', e0ipd)"/></xsl:attribute>0i-D(P)</button>
                <button><xsl:attribute name="class"><xsl:value-of select="concat('focas-support-', e0ipf)"/></xsl:attribute>0i-F(P)</button>
                <button><xsl:attribute name="class"><xsl:value-of select="concat('focas-support-', e15b)"/></xsl:attribute>15-B</button>
                <button><xsl:attribute name="class"><xsl:value-of select="concat('focas-support-', e15iab)"/></xsl:attribute>15i-A/B</button>
                <button><xsl:attribute name="class"><xsl:value-of select="concat('focas-support-', e16bc)"/></xsl:attribute>16-B/C</button>
                <button><xsl:attribute name="class"><xsl:value-of select="concat('focas-support-', e16ia)"/></xsl:attribute>16i-A</button>
                <button><xsl:attribute name="class"><xsl:value-of select="concat('focas-support-', e16ib)"/></xsl:attribute>16i-B</button>
                <button><xsl:attribute name="class"><xsl:value-of select="concat('focas-support-', e16ip)"/></xsl:attribute>16i(P)</button>
                <button><xsl:attribute name="class"><xsl:value-of select="concat('focas-support-', e16il)"/></xsl:attribute>16i(L)</button>
                <button><xsl:attribute name="class"><xsl:value-of select="concat('focas-support-', e16iw)"/></xsl:attribute>16i(W)</button>
                <button><xsl:attribute name="class"><xsl:value-of select="concat('focas-support-', e30ia)"/></xsl:attribute>30i-A</button>
                <button><xsl:attribute name="class"><xsl:value-of select="concat('focas-support-', e30ib)"/></xsl:attribute>30i-B</button>
                <button><xsl:attribute name="class"><xsl:value-of select="concat('focas-support-', e30ip)"/></xsl:attribute>30i(P)</button>
                <button><xsl:attribute name="class"><xsl:value-of select="concat('focas-support-', e30il)"/></xsl:attribute>30i(L)</button>
                <button><xsl:attribute name="class"><xsl:value-of select="concat('focas-support-', e30iwa)"/></xsl:attribute>30i-A(W)</button>
                <button><xsl:attribute name="class"><xsl:value-of select="concat('focas-support-', e30iwb)"/></xsl:attribute>30i-B(W)</button>
                <button><xsl:attribute name="class"><xsl:value-of select="concat('focas-support-', epmih)"/></xsl:attribute>PMi-H</button>
                <button><xsl:attribute name="class"><xsl:value-of select="concat('focas-support-', epmid)"/></xsl:attribute>PMi-D</button>
                <button><xsl:attribute name="class"><xsl:value-of select="concat('focas-support-', epmia)"/></xsl:attribute>PMi-A</button>
                <xsl:text>&#xa;&#xa;</xsl:text>
                
                <!--
                <xsl:text>#### Original</xsl:text>
                <xsl:text>&#xa;&#xa;</xsl:text>
                <iframe><xsl:attribute name="src"><xsl:value-of select="functx:replace-first(fpage, '\.\./', '/focas-api/')"/></xsl:attribute><xsl:attribute name="width"><xsl:text>100%</xsl:text></xsl:attribute></iframe>
                <xsl:text>&#xa;&#xa;</xsl:text>
                -->
                
                <!--
                <xsl:text>#### HSSB</xsl:text>
                <xsl:text>&#xa;&#xa;</xsl:text>
                
                <button><xsl:attribute name="class"><xsl:value-of select="concat('focas-support-', h0ia)"/></xsl:attribute>0i-A</button>
                <button><xsl:attribute name="class"><xsl:value-of select="concat('focas-support-', h0ib)"/></xsl:attribute>0i-B</button>
                <button><xsl:attribute name="class"><xsl:value-of select="concat('focas-support-', h0id)"/></xsl:attribute>0i-D</button>
                <button><xsl:attribute name="class"><xsl:value-of select="concat('focas-support-', h0if)"/></xsl:attribute>0i-F</button>
                <button><xsl:attribute name="class"><xsl:value-of select="concat('focas-support-', h0ipd)"/></xsl:attribute>0i-D(P)</button>
                <button><xsl:attribute name="class"><xsl:value-of select="concat('focas-support-', h0ipf)"/></xsl:attribute>0i-F(P)</button>
                <button><xsl:attribute name="class"><xsl:value-of select="concat('focas-support-', h15b)"/></xsl:attribute>15-B</button>
                <button><xsl:attribute name="class"><xsl:value-of select="concat('focas-support-', h15iab)"/></xsl:attribute>15i-A/B</button>
                <button><xsl:attribute name="class"><xsl:value-of select="concat('focas-support-', h16bc)"/></xsl:attribute>16-B/C</button>
                <button><xsl:attribute name="class"><xsl:value-of select="concat('focas-support-', h16ia)"/></xsl:attribute>16i-A</button>
                <button><xsl:attribute name="class"><xsl:value-of select="concat('focas-support-', h16ib)"/></xsl:attribute>16i-B</button>
                <button><xsl:attribute name="class"><xsl:value-of select="concat('focas-support-', h16ip)"/></xsl:attribute>16i(P)</button>
                <button><xsl:attribute name="class"><xsl:value-of select="concat('focas-support-', h16il)"/></xsl:attribute>16i(L)</button>
                <button><xsl:attribute name="class"><xsl:value-of select="concat('focas-support-', h16iw)"/></xsl:attribute>16i(W)</button>
                <button><xsl:attribute name="class"><xsl:value-of select="concat('focas-support-', h30ia)"/></xsl:attribute>30i-A</button>
                <button><xsl:attribute name="class"><xsl:value-of select="concat('focas-support-', h30ib)"/></xsl:attribute>30i-B</button>
                <button><xsl:attribute name="class"><xsl:value-of select="concat('focas-support-', h30ip)"/></xsl:attribute>30i(P)</button>
                <button><xsl:attribute name="class"><xsl:value-of select="concat('focas-support-', h30il)"/></xsl:attribute>30i(L)</button>
                <button><xsl:attribute name="class"><xsl:value-of select="concat('focas-support-', h30iwa)"/></xsl:attribute>30i-A(W)</button>
                <button><xsl:attribute name="class"><xsl:value-of select="concat('focas-support-', h30iwb)"/></xsl:attribute>30i-B(W)</button>
                <button><xsl:attribute name="class"><xsl:value-of select="concat('focas-support-', hpmih)"/></xsl:attribute>PMi-H</button>
                <button><xsl:attribute name="class"><xsl:value-of select="concat('focas-support-', hpmid)"/></xsl:attribute>PMi-D</button>
                <button><xsl:attribute name="class"><xsl:value-of select="concat('focas-support-', hpmia)"/></xsl:attribute>PMi-A</button>
                
                <xsl:text>&#xa;&#xa;</xsl:text>
                -->
                
            </xsl:for-each>
            
            
            
            
        </xsl:for-each>
    </xsl:template>
    
    
</xsl:stylesheet>