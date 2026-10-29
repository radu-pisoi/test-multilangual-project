<?xml version="1.0" encoding="UTF-8"?>
<!--
    Extension for com.oxygenxml.webhelp.xsl.createMainPage.
    Expands the language selector placeholder on the main page (index.html).
-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:html="http://www.w3.org/1999/xhtml"
    xmlns:ls="http://www.oxygenxml.com/ns/webhelp/language-selector"
    exclude-result-prefixes="#all"
    version="3.0">

    <xsl:include href="language_selector_common.xslt"/>

    <xsl:template match="html:div[@id='wh-language-selector']" mode="copy_template">
        <xsl:call-template name="ls:language-selector">
            <xsl:with-param name="targetRelPath" select="concat('index', $OUTEXT)"/>
        </xsl:call-template>
    </xsl:template>
</xsl:stylesheet>
