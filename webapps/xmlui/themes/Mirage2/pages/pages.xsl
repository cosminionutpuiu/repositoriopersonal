<xsl:stylesheet
  xmlns:dri="http://di.tamu.edu/DRI/1.0/"
  xmlns="http://di.tamu.edu/DRI/1.0/"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  exclude-result-prefixes="dri xsl xs">

  <xsl:param name="page" />
  <xsl:variable name="pagexml">
    <xsl:value-of select="$page"/>
    <xsl:text>.xml</xsl:text>
  </xsl:variable>

  <xsl:output method="xml" encoding="UTF-8" indent="yes"/>

  <xsl:template match="@*|node()">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="dri:body">
    <!-- Los fichero xml son cacheados internamente, para forzar una recargar se debe
         modificar cualqueir fichero xls o cambiar su fecha de modificacion usando por
         ejemplo el comando: touch pages.xsl -->
    <xsl:copy-of select="document($pagexml)/dri:document/dri:body"/>
  </xsl:template>

  <xsl:template match="dri:pageMeta/dri:trail[2]">
    <trail><xsl:value-of select="document($pagexml)/dri:document/dri:body/dri:div/dri:head/text()"/></trail>
  </xsl:template>

  <xsl:template match="dri:pageMeta/dri:metadata[@element='title']">
    <metadata element="title"><xsl:value-of select="document($pagexml)/dri:document/dri:body/dri:div/dri:head/text()"/></metadata>
  </xsl:template>

  <xsl:template match="dri:pageMeta/dri:metadata[@element='request'][@qualifier='URI']">
    <metadata element="request" qualifier="URI"><xsl:value-of select="$page"/></metadata>
  </xsl:template>

</xsl:stylesheet>
