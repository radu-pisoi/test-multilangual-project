<?xml version="1.0" encoding="UTF-8"?>
<!--
    Extension for com.oxygenxml.webhelp.xsl.dita2webhelp.
    Expands the language selector placeholder on topic pages. Each language link points
    to the same topic in the other language's output folder.
-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:html="http://www.w3.org/1999/xhtml"
    xmlns:ls="http://www.oxygenxml.com/ns/webhelp/language-selector"
    exclude-result-prefixes="#all"
    version="3.0">

    <xsl:include href="language_selector_common.xslt"/>

    <xsl:template match="html:div[@id='wh-language-selector']" mode="copy_template">
        <!-- Same computation as the 'wh-out-relpath' meta in WebHelp's commonComponentsExpander.xsl -->
        <xsl:variable name="fileNameWithoutExt" select="
            if (substring-after($FILENAME, '.') != '')
            then substring-before($FILENAME, '.')
            else $FILENAME"/>
        <xsl:variable name="outRelPath" select="
            if ($FILEDIR != '.')
            then concat($FILEDIR, '/', $fileNameWithoutExt, $OUTEXT)
            else concat($fileNameWithoutExt, $OUTEXT)"/>

        <xsl:call-template name="ls:language-selector">
            <xsl:with-param name="targetRelPath" select="replace($outRelPath, '\\', '/')"/>
        </xsl:call-template>
    </xsl:template>
</xsl:stylesheet>
