<?xml version="1.0" encoding="UTF-8" ?>
<!-- 

	Developed by Ibai Sistemas <ibai@ibai.com>

 -->

<xsl:stylesheet
  xmlns:doc="http://www.lyncode.com/xoai"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  version="2.0">
  
    <xsl:output omit-xml-declaration="yes" method="xml" indent="yes"  encoding="UTF-8"/>
    <xsl:variable name="entidad">Archivo Central Consejería de la Presidencia</xsl:variable>
	

	<xsl:template match="/">	
	
			<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" 
			xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
			xmlns:wgs84_pos="http://www.w3.org/2003/01/geo/wgs84_pos#" 
			xmlns:rdaGr2="http://RDVocab.info/ElementsGr2/" 
			xmlns:foaf="http://xmlns.com/foaf/0.1/" 
			xmlns:owl="http://www.w3.org/2002/07/owl#" 
			xmlns:ore="http://www.openarchives.org/ore/terms/" 
			xmlns:edm="http://www.europeana.eu/schemas/edm/" 
			xmlns:dcterms="http://purl.org/dc/terms/" 
			xmlns:dc="http://purl.org/dc/elements/1.1/" 
			xmlns:crm="http://www.cidoc-crm.org/rdfs/cidoc_crm_v5.0.2_english_label.rdfs#" 
			xsi:schemaLocation="http://www.w3.org/1999/02/22-rdf-syntax-ns#http://www.europeana.eu/schemas/edm/EDM.xsd">
			
				<ore:Aggregation xmlns:ore="http://www.openarchives.org/ore/terms/">
				
					<xsl:attribute name="xmlns:ore">
						<xsl:text>http://www.openarchives.org/ore/terms/</xsl:text>
					 </xsl:attribute>
					 <xsl:attribute name="rdf:about">
						<xsl:value-of select="doc:metadata/doc:element[@name='dc']/doc:element[@name='identifier']/doc:element[@name='uri']/doc:element/doc:field[@name='value']"/><xsl:text>#aggregation</xsl:text>
					 </xsl:attribute>
					<edm:aggregatedCHO>
						<xsl:attribute name="rdf:resource">
							<xsl:value-of select="doc:metadata/doc:element[@name='dc']/doc:element[@name='identifier']/doc:element[@name='uri']/doc:element/doc:field[@name='value']"/>
						</xsl:attribute>
					</edm:aggregatedCHO>
					<edm:dataProvider><xsl:value-of select="$entidad"/></edm:dataProvider>
					<edm:provider><xsl:value-of select="$entidad"/></edm:provider>
					<edm:rights rdf:resource="http://creativecommons.org/publicdomain/zero/1.0/"/>
					<edm:isShownAt>
						<xsl:attribute name="rdf:resource">
							<xsl:value-of select="doc:metadata/doc:element[@name='dc']/doc:element[@name='identifier']/doc:element[@name='uri']/doc:element/doc:field[@name='value']"/>
						</xsl:attribute>
					</edm:isShownAt>
					<edm:object>
						<xsl:attribute name="rdf:resource">
							<xsl:value-of select="doc:metadata/doc:element[@name='dc']/doc:element[@name='identifier']/doc:element[@name='uri']/doc:element/doc:field[@name='value']"/>
						</xsl:attribute>
					</edm:object>	
					
				</ore:Aggregation>
				<edm:ProvidedCHO>
					<xsl:attribute name="rdf:about">
						<xsl:value-of select="doc:metadata/doc:element[@name='dc']/doc:element[@name='identifier']/doc:element[@name='uri']/doc:element/doc:field[@name='value']"/><xsl:text>#aggregation</xsl:text>
					 </xsl:attribute>
					 
					<xsl:for-each select="doc:metadata/doc:element[@name='dc']/doc:element[@name='creator']/doc:element/doc:field[@name='value']">
						<dc:creator><xsl:value-of select="." /></dc:creator>
					</xsl:for-each>
			
					<xsl:for-each select="doc:metadata/doc:element[@name='dc']/doc:element[@name='contributor']/doc:element/doc:field[@name='value']">
						<dc:contributor><xsl:value-of select="." /></dc:contributor>
					</xsl:for-each>	

					<xsl:for-each select="doc:metadata/doc:element[@name='dc']/doc:element[@name='coverage']/doc:element[@name='spatial']/doc:element/doc:field[@name='value']">
						<dcterms:spatial><xsl:value-of select="." /></dcterms:spatial>
					</xsl:for-each>	
					
					<xsl:for-each select="doc:metadata/doc:element[@name='dc']/doc:element[@name='coverage']/doc:element/doc:field[@name='value']">
						<dc:coverage><xsl:value-of select="." /></dc:coverage>
					</xsl:for-each>
					
					<xsl:choose>
						<xsl:when test="doc:metadata/doc:element[@name='dc']/doc:element[@name='date']/doc:element/doc:field[@name='value'] != ''">
							<dc:date><xsl:value-of select="doc:metadata/doc:element[@name='dc']/doc:element[@name='date']/doc:element/doc:field[@name='value']"/></dc:date>
						</xsl:when>
						<xsl:otherwise>
							<dc:date><xsl:value-of select="(doc:metadata/doc:element[@name='dc']/doc:element[@name='date']/doc:element/doc:element/doc:field[@name='value'])[3]"/></dc:date>
						</xsl:otherwise>
					</xsl:choose>
						
					<xsl:for-each select="doc:metadata/doc:element[@name='dc']/doc:element[@name='description']/doc:element/doc:field[@name='value']">
						<dc:description><xsl:value-of select="." /></dc:description>
					</xsl:for-each>
				
					<xsl:for-each select="doc:metadata/doc:element[@name='bitstreams']/doc:element[@name='bitstream']/doc:field[@name='format']">
						<dc:format><xsl:value-of select="." /></dc:format>
					</xsl:for-each>	
				
					<xsl:for-each select="doc:metadata/doc:element[@name='dc']/doc:element[@name='publisher']/doc:element/doc:field[@name='value']">
						<dc:publisher><xsl:value-of select="." /></dc:publisher>
					</xsl:for-each>
					
					<xsl:for-each select="doc:metadata/doc:element[@name='dc']/doc:element[@name='relation']/doc:element/doc:field[@name='value']">
						<dc:relation><xsl:value-of select="." /></dc:relation>
					</xsl:for-each>
					
					<xsl:for-each select="doc:metadata/doc:element[@name='dc']/doc:element[@name='rights']/doc:element/doc:field[@name='value']">
						<dc:rights><xsl:value-of select="." /></dc:rights>
					</xsl:for-each>
					
					<xsl:for-each select="doc:metadata/doc:element[@name='dc']/doc:element[@name='source']/doc:element/doc:field[@name='value']">
						<dc:source><xsl:value-of select="." /></dc:source>
					</xsl:for-each>
					
					<xsl:for-each select="doc:metadata/doc:element[@name='dc']/doc:element[@name='identifier']/doc:element[@name='isbn']/doc:element/doc:field[@name='value']">
						<dc:identifier><xsl:value-of select="." /></dc:identifier>
					</xsl:for-each>	
					
					<xsl:for-each select="doc:metadata/doc:element[@name='dc']/doc:element[@name='language']/doc:element/doc:field[@name='value']">
						<dc:language><xsl:value-of select="." /></dc:language>
					</xsl:for-each>	
				
					<xsl:for-each select="doc:metadata/doc:element[@name='dc']/doc:element[@name='subject']/doc:element/doc:field[@name='value']">
						<dc:subject><xsl:value-of select="." /></dc:subject>
					</xsl:for-each>	
				
					<xsl:for-each select="doc:metadata/doc:element[@name='dc']/doc:element[@name='title']/doc:element/doc:field[@name='value']">
						<dc:title><xsl:value-of select="." /></dc:title>
					</xsl:for-each>
					<xsl:for-each select="doc:metadata/doc:element[@name='dc']/doc:element[@name='type']/doc:element/doc:field[@name='value']">
						<dc:type><xsl:value-of select="." /></dc:type>
					</xsl:for-each>
					<!--DCTERMS-->
					<xsl:for-each select="doc:metadata/doc:element[@name='dcterms']/doc:element[@name='alternative']/doc:element/doc:field[@name='value']">
						<dcterms:alternative><xsl:value-of select="." /></dcterms:alternative>
					</xsl:for-each>
					<xsl:for-each select="doc:metadata/doc:element[@name='dcterms']/doc:element[@name='conformsTo']/doc:element/doc:field[@name='value']">
						<dcterms:conformsTo><xsl:value-of select="." /></dcterms:conformsTo>
					</xsl:for-each>
					<xsl:for-each select="doc:metadata/doc:element[@name='dcterms']/doc:element[@name='created']/doc:element/doc:field[@name='value']">
						<dcterms:created><xsl:value-of select="." /></dcterms:created>
					</xsl:for-each>
					<xsl:for-each select="doc:metadata/doc:element[@name='dcterms']/doc:element[@name='extent']/doc:element/doc:field[@name='value']">
						<dcterms:extent><xsl:value-of select="." /></dcterms:extent>
					</xsl:for-each>
					<xsl:for-each select="doc:metadata/doc:element[@name='dcterms']/doc:element[@name='hasFormat']/doc:element/doc:field[@name='value']">
						<dcterms:hasFormat><xsl:value-of select="." /></dcterms:hasFormat>
					</xsl:for-each>
					<xsl:for-each select="doc:metadata/doc:element[@name='dcterms']/doc:element[@name='hasPart']/doc:element/doc:field[@name='value']">
						<dcterms:hasPart><xsl:value-of select="." /></dcterms:hasPart>
					</xsl:for-each>
					<xsl:for-each select="doc:metadata/doc:element[@name='dcterms']/doc:element[@name='hasVersion']/doc:element/doc:field[@name='value']">
						<dcterms:hasVersion><xsl:value-of select="." /></dcterms:hasVersion>
					</xsl:for-each>
					<xsl:for-each select="doc:metadata/doc:element[@name='dcterms']/doc:element[@name='isFormatOf']/doc:element/doc:field[@name='value']">
						<dcterms:isFormatOf><xsl:value-of select="." /></dcterms:isFormatOf>
					</xsl:for-each>
					<xsl:for-each select="doc:metadata/doc:element[@name='dcterms']/doc:element[@name='isPartOf']/doc:element/doc:field[@name='value']">
						<dcterms:isPartOf><xsl:value-of select="." /></dcterms:isPartOf>
					</xsl:for-each>
					<xsl:for-each select="doc:metadata/doc:element[@name='dcterms']/doc:element[@name='isReferencedBy']/doc:element/doc:field[@name='value']">
						<dcterms:isReferencedBy><xsl:value-of select="." /></dcterms:isReferencedBy>
					</xsl:for-each>
					<xsl:for-each select="doc:metadata/doc:element[@name='dcterms']/doc:element[@name='isReplacedBy']/doc:element/doc:field[@name='value']">
						<dcterms:isReplacedBy><xsl:value-of select="." /></dcterms:isReplacedBy>
					</xsl:for-each>
					<xsl:for-each select="doc:metadata/doc:element[@name='dcterms']/doc:element[@name='isRequiredBy']/doc:element/doc:field[@name='value']">
						<dcterms:isRequiredBy><xsl:value-of select="." /></dcterms:isRequiredBy>
					</xsl:for-each>
					<xsl:for-each select="doc:metadata/doc:element[@name='dcterms']/doc:element[@name='issued']/doc:element/doc:field[@name='value']">
						<dcterms:issued><xsl:value-of select="." /></dcterms:issued>
					</xsl:for-each>
					<xsl:for-each select="doc:metadata/doc:element[@name='dcterms']/doc:element[@name='isVersionOf']/doc:element/doc:field[@name='value']">
						<dcterms:isVersionOf><xsl:value-of select="." /></dcterms:isVersionOf>
					</xsl:for-each>
					<xsl:for-each select="doc:metadata/doc:element[@name='dcterms']/doc:element[@name='medium']/doc:element/doc:field[@name='value']">
						<dcterms:medium><xsl:value-of select="." /></dcterms:medium>
					</xsl:for-each>
					<xsl:for-each select="doc:metadata/doc:element[@name='dcterms']/doc:element[@name='provenance']/doc:element/doc:field[@name='value']">
						<dcterms:provenance><xsl:value-of select="." /></dcterms:provenance>
					</xsl:for-each>
					<xsl:for-each select="doc:metadata/doc:element[@name='dcterms']/doc:element[@name='references']/doc:element/doc:field[@name='value']">
						<dcterms:references><xsl:value-of select="." /></dcterms:references>
					</xsl:for-each>
					<xsl:for-each select="doc:metadata/doc:element[@name='dcterms']/doc:element[@name='replaces']/doc:element/doc:field[@name='value']">
						<dcterms:replaces><xsl:value-of select="." /></dcterms:replaces>
					</xsl:for-each>
					<xsl:for-each select="doc:metadata/doc:element[@name='dcterms']/doc:element[@name='requires']/doc:element/doc:field[@name='value']">
						<dcterms:requires><xsl:value-of select="." /></dcterms:requires>
					</xsl:for-each>
					<xsl:for-each select="doc:metadata/doc:element[@name='dcterms']/doc:element[@name='spatial']/doc:element/doc:field[@name='value']">
						<dcterms:spatial><xsl:value-of select="." /></dcterms:spatial>
					</xsl:for-each>
					<xsl:for-each select="doc:metadata/doc:element[@name='dcterms']/doc:element[@name='tableOfContents']/doc:element/doc:field[@name='value']">
						<dcterms:tableOfContents><xsl:value-of select="." /></dcterms:tableOfContents>
					</xsl:for-each>
					<xsl:for-each select="doc:metadata/doc:element[@name='dcterms']/doc:element[@name='temporal']/doc:element/doc:field[@name='value']">
						<dcterms:temporal><xsl:value-of select="." /></dcterms:temporal>
					</xsl:for-each>
					
					<xsl:for-each select="doc:metadata/doc:element[@name='dc']/doc:element[@name='type']/doc:element/doc:field[@name='value']">
						<edm:type><xsl:value-of select="." /></edm:type>
					</xsl:for-each>

				</edm:ProvidedCHO>

			</rdf:RDF>
	</xsl:template>
</xsl:stylesheet>
