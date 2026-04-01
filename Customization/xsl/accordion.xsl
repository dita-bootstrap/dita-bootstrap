<?xml version="1.0" encoding="UTF-8"?>
<!--
  This file is part of the DITA Bootstrap plug-in for DITA Open Toolkit.
  See the accompanying LICENSE file for applicable licenses.
-->
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:dita-ot="http://dita-ot.sourceforge.net/ns/201007/dita-ot"
  xmlns:xhtml="http://www.w3.org/1999/xhtml"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  version="2.0"
  exclude-result-prefixes="xs xhtml dita-ot"
>
  <!-- Customization to add Bootstrap Accordion Component -->
  <!-- https://getbootstrap.com/docs/5.3/components/accordion/ -->

  <xsl:template
    match="*[contains(@class, ' bootstrap-d/accordion ') or (contains(@class,' topic/bodydiv ') and contains(@outputclass, 'accordion'))]"
  >
    <div>
      <xsl:attribute name="id" select="dita-ot:generate-html-id(.)"/>
      <xsl:call-template name="commonattributes"/>
      <xsl:apply-templates mode="accordion"/>
    </div>
  </xsl:template>

  <xsl:template name="expand-accordion-head">
    <xsl:attribute name="aria-expanded" select="contains(@outputclass,'show') or @open='yes'"/>
    <xsl:variable name="parent-color" select="parent::*/@color"/>
    <xsl:attribute
      name="class"
      select="
        string-join((
          if (contains(@outputclass,'show') or @open='yes') then 'accordion-button' else 'accordion-button collapsed',
          if ($parent-color) then concat('bg-', $parent-color) else ()
        ), ' ')"
    />
  </xsl:template>

  <xsl:template name="expand-accordion-body">
    <xsl:attribute
      name="class"
      select="
        if (contains(@outputclass,'show') or @open='yes') then 'accordion-collapse collapse show'
        else 'accordion-collapse collapse'"
    />
  </xsl:template>

  <xsl:template match="*[contains(@class, ' topic/section ')]" mode="accordion">
    <xsl:param name="headLevel">
      <xsl:variable name="headCount" select="count(ancestor::*[contains(@class, ' topic/topic ')])+1"/>
      <xsl:choose>
        <xsl:when test="$headCount > 6">h6</xsl:when>
        <xsl:otherwise>h<xsl:value-of select="$headCount"/></xsl:otherwise>
      </xsl:choose>
    </xsl:param>

    <xsl:variable name="index" select="count(preceding-sibling::*[contains(@class, ' topic/section ')])"/>
    <xsl:variable name="id" select="dita-ot:generate-html-id(.)"/>
    <xsl:variable name="parent" select="dita-ot:generate-html-id(..)"/>

    <div class="accordion-item">
       <xsl:if test="parent::*/@color">
          <xsl:attribute name="class" select="concat('accordion-item bg-', parent::*/@color, '-subtle')"/>
       </xsl:if>
      <xsl:element name="{$headLevel}">
        <xsl:attribute name="type" select="'accordion-header'"/>
        <xsl:attribute name="id" select="concat('heading_' ,$id)"/>
        <button class="accordion-button" type="button" data-bs-toggle="collapse">
          <xsl:call-template name="expand-accordion-head"/>
          <xsl:attribute name="data-bs-target" select="concat('#collapse_' ,$id)"/>
          <xsl:attribute name="aria-controls" select="concat('collapse_' ,$id)"/>
          <xsl:value-of select="*[contains(@class, ' topic/title ')]"/>
        </button>
      </xsl:element>
      <div>
        <xsl:call-template name="expand-accordion-body"/>
        <xsl:attribute name="id" select="concat('collapse_' ,$id)"/>
        <xsl:attribute name="aria-labelledby" select="concat('heading_' ,$id)"/>
        <xsl:choose>
          <xsl:when test="contains(../@outputclass,'accordion-open') or ../@open = 'yes'"/>
          <xsl:otherwise>
            <xsl:attribute name="data-bs-parent" select="concat('#', $parent)"/>
          </xsl:otherwise>
        </xsl:choose>
        <div class="accordion-body">
          <xsl:call-template name="gen-toc-id"/>
          <xsl:call-template name="setidaname"/>
          <xsl:apply-templates select="*[contains(@class, ' ditaot-d/ditaval-startprop ')]" mode="out-of-line"/>
          <xsl:apply-templates
            select="*[not(contains(@class, ' topic/title '))] | text() | comment() | processing-instruction()"
          />
          <xsl:apply-templates select="*[contains(@class, ' ditaot-d/ditaval-endprop ')]" mode="out-of-line"/>
        </div>
      </div>
    </div>
  </xsl:template>
</xsl:stylesheet>
