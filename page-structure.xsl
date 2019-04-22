<!--

    The contents of this file are subject to the license and copyright
    detailed in the LICENSE and NOTICE files at the root of the source
    tree and available online at

    http://www.dspace.org/license/

-->

<!--
    Main structure of the page, determines where
    header, footer, body, navigation are structurally rendered.
    Rendering of the header, footer, trail and alerts

    Author: art.lowel at atmire.com
    Author: lieven.droogmans at atmire.com
    Author: ben at atmire.com
    Author: Alexey Maslov

-->

<xsl:stylesheet xmlns:i18n="http://apache.org/cocoon/i18n/2.1"
                xmlns:dri="http://di.tamu.edu/DRI/1.0/"
                xmlns:mets="http://www.loc.gov/METS/"
                xmlns:xlink="http://www.w3.org/TR/xlink/"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
                xmlns:dim="http://www.dspace.org/xmlns/dspace/dim"
                xmlns:xhtml="http://www.w3.org/1999/xhtml"
                xmlns:mods="http://www.loc.gov/mods/v3"
                xmlns:dc="http://purl.org/dc/elements/1.1/"
                xmlns:confman="org.dspace.core.ConfigurationManager"
                xmlns:url="https://docs.oracle.com/javase/7/docs/api/java/net/java.net.URLEncoder"
                xmlns:urldecode="https://docs.oracle.com/javase/7/docs/api/java/net/java.net.URLDecoder"
                exclude-result-prefixes="i18n dri mets xlink xsl dim xhtml mods dc confman">

    <xsl:output method="xml" encoding="UTF-8" indent="yes"/>

    <!--
        Requested Page URI. Some functions may alter behavior of processing depending if URI matches a pattern.
        Specifically, adding a static page will need to override the DRI, to directly add content.
    -->
    <xsl:variable name="request-uri" select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='URI']"/>
    <xsl:variable name="submission" select="contains($request-uri,'submit')"/>
    <xsl:variable name="discovery" select="contains($request-uri,'discover')"/>
    <xsl:variable name="handle-uri" select="contains($request-uri,'handle')"/>
    <xsl:variable name="restricted-resource" select="contains($request-uri,'restricted-resource')"/>
    <xsl:variable name="dspaceUrl" select="confman:getProperty('dspace.url')" />
    <xsl:variable name="containerType" select="contains(/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='focus'][@qualifier='containerType'][1], 'type:collection')"/>

    <!--
        The starting point of any XSL processing is matching the root element. In DRI the root element is document,
        which contains a version attribute and three top level elements: body, options, meta (in that order).

        This template creates the html document, giving it a head and body. A title and the CSS style reference
        are placed in the html head, while the body is further split into several divs. The top-level div
        directly under html body is called "ds-main". It is further subdivided into:
            "ds-header"  - the header div containing title, subtitle, trail and other front matter
            "ds-body"    - the div containing all the content of the page; built from the contents of dri:body
            "ds-options" - the div with all the navigation and actions; built from the contents of dri:options
            "ds-footer"  - optional footer div, containing misc information

        The order in which the top level divisions appear may have some impact on the design of CSS and the
        final appearance of the DSpace page. While the layout of the DRI schema does favor the above div
        arrangement, nothing is preventing the designer from changing them around or adding new ones by
        overriding the dri:document template.
    -->
    <xsl:template match="dri:document">

        <xsl:choose>
            <xsl:when test="not($isModal)">


            <xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;
            </xsl:text>
            <xsl:text disable-output-escaping="yes">&lt;!--[if lt IE 7]&gt; &lt;html class=&quot;no-js lt-ie9 lt-ie8 lt-ie7&quot; lang=&quot;en&quot;&gt; &lt;![endif]--&gt;
            &lt;!--[if IE 7]&gt;    &lt;html class=&quot;no-js lt-ie9 lt-ie8&quot; lang=&quot;en&quot;&gt; &lt;![endif]--&gt;
            &lt;!--[if IE 8]&gt;    &lt;html class=&quot;no-js lt-ie9&quot; lang=&quot;en&quot;&gt; &lt;![endif]--&gt;
            &lt;!--[if gt IE 8]&gt;&lt;!--&gt; &lt;html class=&quot;no-js&quot; lang=&quot;en&quot;&gt; &lt;!--&lt;![endif]--&gt;
            </xsl:text>

                <!-- First of all, build the HTML head element -->

                <xsl:call-template name="buildHead"/>

                <!-- Then proceed to the body -->
               
		<body>
		    <xsl:if test="$request-uri = ''">
                        <xsl:attribute name="class">home</xsl:attribute>
                    </xsl:if>
                    <!-- Prompt IE 6 users to install Chrome Frame. Remove this if you support IE 6.
                   chromium.org/developers/how-tos/chrome-frame-getting-started -->
                    <!--[if lt IE 7]><p class=chromeframe>Your browser is <em>ancient!</em> <a href="http://browsehappy.com/">Upgrade to a different browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to experience this site.</p><![endif]-->
                    <xsl:choose>
                        <xsl:when
                                test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='framing'][@qualifier='popup']">
                            <xsl:apply-templates select="dri:body/*"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:call-template name="buildHeader"/>
                            <xsl:call-template name="buildTrail"/>
                            <!--javascript-disabled warning, will be invisible if javascript is enabled-->
                            <div id="no-js-warning-wrapper" class="hidden">
                                <div id="no-js-warning">
                                    <div class="notice failure">
                                        <xsl:text>JavaScript is disabled for your browser. Some features of this site may not work without it.</xsl:text>
                                    </div>
                                </div>
                            </div>

                            <div id="main-container" class="container">
                                <div><div class="row-offcanvas row-offcanvas-right">
                                    <div class="row horizontal-slider clearfix">
										<xsl:choose>
                                            <xsl:when test="/dri:document/dri:meta/dri:userMeta/@authenticated='yes'">
												<div class="col-xs-12 col-sm-12 col-md-9 main-content">

						                          <!-- IMAGEN DE PORTADA -->
                                            	    <xsl:if test="$request-uri = ''">

                                                          <div class="container">
                                                            <div id="slides">
                                                                <img src="{concat($context-path, '/themes/Mirage2/images/slider/slide1.png')}" alt="" />
																<img src="{concat($context-path, '/themes/Mirage2/images/slider/slide2.png')}" alt="" />
																<img src="{concat($context-path, '/themes/Mirage2/images/slider/slide3.png')}" alt="" />
																<img src="{concat($context-path, '/themes/Mirage2/images/slider/slide4.png')}" alt="" />
																<img src="{concat($context-path, '/themes/Mirage2/images/slider/slide5.png')}" alt="" />
								
                                                            </div>
                                                          </div>

                                            	    </xsl:if>

                                            	    <!--xsl:apply-templates select="*[not(self::dri:options)]"/-->

		                                            <xsl:choose>
		                                                <xsl:when test="$request-uri = ''">
		                                                    <!-- Cuando estamos en la Home mostraremos el mensaje de bienvenida y las colecciones destacadas). No mostraremos el resto de apartados -->
		                                                    <xsl:call-template name="welcome-grupos"/>
								    						<xsl:apply-templates select="*[not(self::dri:options)]"/>
		                                                </xsl:when>
		                                                <xsl:otherwise>
		                                                    <!-- En el resto de casos mostraremos la apariencia normal de DSpace -->
		                                                    <xsl:apply-templates select="*[not(self::dri:options)]"/>
		                                                </xsl:otherwise>
		                                            </xsl:choose>

	                                        	</div>

												<div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar" role="navigation">
	                                                <xsl:apply-templates select="dri:options"/>
	                                        	</div>
					    					</xsl:when>
					   						<xsl:otherwise>
					    						<xsl:choose>
                                            	    <xsl:when test="$request-uri = ''">
                                                		<div class="col-xs-12 col-sm-12 col-md-9 main-content" style="width: 100%">


                                                        <!-- IMAGEN DE PORTADA -->
														<div class="container">
															<div id="slides">
																<img src="{concat($context-path, '/themes/Mirage2/images/slider/slide1.png')}" alt="" />
																<img src="{concat($context-path, '/themes/Mirage2/images/slider/slide2.png')}" alt="" />
																<img src="{concat($context-path, '/themes/Mirage2/images/slider/slide3.png')}" alt="" />
																<img src="{concat($context-path, '/themes/Mirage2/images/slider/slide4.png')}" alt="" />
																<img src="{concat($context-path, '/themes/Mirage2/images/slider/slide5.png')}" alt="" />
															</div>
														</div>

														<xsl:call-template name="welcome-grupos"/>
														<xsl:apply-templates select="*[not(self::dri:options)]"/>

                                                	</div>
											    </xsl:when>
											    <xsl:otherwise>
                                                        <div class="col-xs-12 col-sm-12 col-md-9 main-content">
                                                            <xsl:apply-templates select="*[not(self::dri:options)]"/>
                                                        </div>

                                                        <div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar" role="navigation">
                                                            <xsl:apply-templates select="dri:options"/>
                                                        </div>

						   						</xsl:otherwise>
					    					</xsl:choose>
									    </xsl:otherwise>
									</xsl:choose>
                                    </div>
                                </div></div>
                         	</div>

                            <!-- The footer div, dropping whatever extra information is needed on the page. It will
                            most likely be something similar in structure to the currently given example. -->
                            
                            <xsl:call-template name="buildFooter"/>


                        </xsl:otherwise>
                    </xsl:choose>
                    <!-- Javascript at the bottom for fast page loading -->
                    <xsl:call-template name="addJavascript"/>

		    		<!-- MOFIDICACIONES EN EL FORMULARIO DE DEPOSITO -->
                    <xsl:if test="$submission">
                        <script type="text/javascript">
                            
                            <!-- CÓDIGO SETEA EL AÑO CPAL -->
                            $('#aspect_submission_StepTransformer_field_cpal_annio').attr('readonly', true);

                            
                            $('#aspect_submission_StepTransformer_field_dc_date_issued_year').change(function(){
                                
                                var yearIssued = $('#aspect_submission_StepTransformer_field_dc_date_issued_year').val();
                                if(yearIssued != ""){
                                    $('#aspect_submission_StepTransformer_field_cpal_annio').val(yearIssued);
                                }
                            });

                            <!-- OCULTA AÑO CPAL -->
                            $('#aspect_submission_StepTransformer_field_cpal_annio').parents("div").eq(0).css("display", "none");

                            <!-- OCULTA AÑO CPAL al REVISAR datos -->
	                        $('#aspect_submission_StepTransformer_list_submit-review').children().eq(0).children().eq(1).children().eq(2).css("display", "none");

                        </script>
			
            			<!-- SUGGESTION BOX -->
            			<script src="{concat($theme-path, 'scripts/selectize.min.js')}" type="text/javascript"></script>
            			<script type="text/javascript">
			                // Formato digital
                            if ($('#aspect_submission_StepTransformer_field_dc_format_digital').length) {
                                var options = $('#aspect_submission_StepTransformer_field_dc_format_digital').val();
                                $('#aspect_submission_StepTransformer_field_dc_format_digital').selectize({
                                    items: options
                                });
                            }

			                 // Formato original
                            if ($('#aspect_submission_StepTransformer_field_dc_format_origin').length) {
				                var options = $('#aspect_submission_StepTransformer_field_dc_format_origin').val();
                                $('#aspect_submission_StepTransformer_field_dc_format_origin').selectize({
                                    items: options
                                });
                            }

			                 // Lugares geográficos
                            if ($('#aspect_submission_StepTransformer_field_dc_coverage_geographic').length) {
                                var options = $('#aspect_submission_StepTransformer_field_dc_coverage_geographic').val();
                                $('#aspect_submission_StepTransformer_field_dc_coverage_geographic').selectize({
                                    items: options
                                });
			                 }

			                 if ($('#aspect_submission_StepTransformer_field_dc_coverage_physicalplace').length) {
                                var options = $('#aspect_submission_StepTransformer_field_dc_coverage_physicalplace').val();
                                $('#aspect_submission_StepTransformer_field_dc_coverage_physicalplace').selectize({
                                    items: options
                                });
                            }


                            // Personas JA
                            if ($('#aspect_submission_StepTransformer_field_dc_contributor_ja').length) {
                                var options = $('#aspect_submission_StepTransformer_field_dc_contributor_ja').val();
                                $('#aspect_submission_StepTransformer_field_dc_contributor_ja').selectize({
                                    items: options
                                });
                            }

			                 // Personas NO JA
                            if ($('#aspect_submission_StepTransformer_field_dc_contributor_extern').length) {
                                var options = $('#aspect_submission_StepTransformer_field_dc_contributor_extern').val();
                                $('#aspect_submission_StepTransformer_field_dc_contributor_extern').selectize({
                                    items: options
                                });
                            }

                            // Organismos
                            if ($('#aspect_submission_StepTransformer_field_dc_contributor_institution').length) {
                                var options = $('#aspect_submission_StepTransformer_field_dc_contributor_institution').val();
                                $('#aspect_submission_StepTransformer_field_dc_contributor_institution').selectize({
                                    items: options
                                });
                            }

                            // Temático funcional
                            if ($('#aspect_submission_StepTransformer_field_dc_subject_function').length) {
                                var options = $('#aspect_submission_StepTransformer_field_dc_subject_function').val();
                                $('#aspect_submission_StepTransformer_field_dc_subject_function').selectize({
                                    items: options
                                });
                            }

                            // Materias
                            if ($('#aspect_submission_StepTransformer_field_dc_subject').length) {
                                var options = $('#aspect_submission_StepTransformer_field_dc_subject').val();
                                $('#aspect_submission_StepTransformer_field_dc_subject').selectize({
                                    items: options
                                });
                            }

         

                            // Legislatura
                            if ($('#aspect_submission_StepTransformer_field_dc_coverage_legislatura').length) {
                                var options = $('#aspect_submission_StepTransformer_field_dc_coverage_legislatura').val();
                                $('#aspect_submission_StepTransformer_field_dc_coverage_legislatura').selectize();
                            }

                            // Idioma
                            if ($('#aspect_submission_StepTransformer_field_dc_language').length) {
                                var options = $('#aspect_submission_StepTransformer_field_dc_language').val();
                                var $select = $('#aspect_submission_StepTransformer_field_dc_language').selectize({
                                    items: options
                                });
                				var selectize = $select[0].selectize;
                				var value = $select[0].value;
                				if (!value) {
                                                    selectize.setValue('es', true);
                				}
                            }

            			    // Publicador
            			    if ($('#aspect_submission_StepTransformer_field_dc_publisher').length) {
                                var options = $('#aspect_submission_StepTransformer_field_dc_publisher').val();
                                var $select = $('#aspect_submission_StepTransformer_field_dc_publisher').selectize({
                                    items: options
                                });
                                var selectize = $select[0].selectize;
                                var value = $select[0].value;
                                if (!value) {
                                    selectize.setValue('Junta de Andalucía', true);
                                }
                            }

                            // Tipo de recurso
                            if ($('#aspect_submission_StepTransformer_field_dc_type').length) {
                                var options = $('#aspect_submission_StepTransformer_field_dc_type').val();
                                var $select = $('#aspect_submission_StepTransformer_field_dc_type').selectize();
                				var selectize = $select[0].selectize;
                				var value = $select[0].value;
                				if (!value) {
                				    selectize.setValue('IMAGE', true);
                				}
                            }

                        </script>
                    </xsl:if>

                    <xsl:if test="$discovery">
                        <script type="text/javascript">

                            var wrapper = $('#aspect_discovery_SimpleSearch_div_discovery-filters-wrapper');
                            if(wrapper.parent().find('.discovery-filters-wrapper-head').css("display") !== "block"){
                                wrapper.parent().find('.discovery-filters-wrapper-head').hide().removeClass('hidden').fadeIn(200);
                                wrapper.hide().removeClass('hidden').slideDown(200);
                            }

                            <!--Borramos mensaje de Use filtros para refinar resultados -->
			                <!-- $('.ds-paragraph').each(function( index ) {
					           if($(this).text().startsWith('Use')){
                					$(this).remove();
              				    }
            			    }); -->

                            <!-- Cambiamos el botón "Ir" por una lupa -->
                            var searchButton = $("#aspect_discovery_SimpleSearch_field_submit");
                            searchButton.attr("title", "Buscar");
                            searchButton.addClass("btn-primary").removeClass("btn-default").removeClass("search-icon").text("");
                            searchButton.append('<span aria-hidden="true" class="glyphicon glyphicon-search"></span>');

                            <!--Añadimos un mensaje de Filtros Aplicados -->
                            if(DSpace.discovery.filters.length > 0){
                                $('#filters-overview-wrapper-squared').removeClass("col-sm-offset-3");
                                $('#filters-overview-wrapper-squared').before('<div id="filtrosAplicadosDiv" class="col-sm-3"></div>');
                                $('#filtrosAplicadosDiv').append('<p>Filtros Aplicados: </p>');
                            }

                            <!--Añadimos botón de Nueva Búsqueda -->
                            $('#aspect_discovery_SimpleSearch_list_primary-search').children()[0].children[1].classList.remove("col-sm-9");
                            $('#aspect_discovery_SimpleSearch_list_primary-search').children()[0].children[1].classList.add("col-sm-8");

                            var nodeDiv = document.createElement("div");
                            nodeDiv.setAttribute("class", "col-sm-1");
                            var nodeA = document.createElement("a");
                            nodeA.setAttribute("href", DSpace.context_path + "/discover");
                            nodeA.setAttribute("title", "Nueva Búsqueda");
                            var nodeSpan = document.createElement("span");
                            nodeSpan.setAttribute("class", "btn btn-default glyphicon glyphicon-repeat ds-select-field form-control");
                            nodeSpan.setAttribute("aria-hidden", "true");
                            nodeA.appendChild(nodeSpan);
                            nodeDiv.appendChild(nodeA);
                            $('#aspect_discovery_SimpleSearch_list_primary-search').children()[0].append(nodeDiv);

                            <!--Añadimos tooltip en la botonera de filtros -->
                            $('#aspect_discovery_SimpleSearch_field_submit_reset_filter').attr("title", "Restaurar filtros aplicados");
                            $('#aspect_discovery_SimpleSearch_field_submit_apply_filter').attr("title", "Aplicar filtros");

                        </script>
                    </xsl:if>

                    <xsl:if test="$handle-uri">

                        <script type="text/javascript">
                            // Oculta el buscador browser en las vistas de comunidades y colecciones por javascript
                            //$('#aspect_artifactbrowser_CommunityViewer_div_community-search-browse').remove();
                            //$('#aspect_artifactbrowser_CollectionViewer_div_collection-search-browse').remove();
			
			    			// Cambia el comportamiento del check de busqueda por javascript
                            //$("#ds-search-form-scope-all").attr("checked", false);
                            //$("#ds-search-form-scope-container").attr("checked", true);
                            //$("#ds-search-form-scope-all")[0].checked=false;
                            //$("#ds-search-form-scope-container")[0].checked=true;

                            var urlBase = '<xsl:value-of select="confman:getProperty('dspace.baseUrl')"/>'; 
                            var hostDspace = urlBase.substring(urlBase.indexOf("://") + 3);
                            var urlItem = '<xsl:value-of select="$request-uri" />'.substring(7);
                            

                            var elementoMetadatos = $('.simple-item-view-show-full');

                             if(elementoMetadatos.length &gt; 0){

                                var elementoMetadatos = elementoMetadatos[0];
                                var nodeBR1 = document.createElement("br");
                                elementoMetadatos.appendChild(nodeBR1);

                                var sufijo1 = '/request?verb=GetRecord&amp;metadataPrefix=oai_dc&amp;identifier=oai:' + hostDspace + ":" + urlItem;
                                var nodeA1 = document.createElement("a");
                                nodeA1.setAttribute("href", DSpace.context_path.replace("xmlui", "oai") + sufijo1);
                                nodeA1.setAttribute("target", "_blank");
                                var textNodeA1 = document.createTextNode("Dublin Core");
                                nodeA1.appendChild(textNodeA1);
                                elementoMetadatos.appendChild(nodeA1);

                                var sufijo2 = "/request?verb=GetRecord&amp;metadataPrefix=mets&amp;identifier=oai:" + hostDspace + ":" + urlItem;
                                var nodeA2 = document.createElement("a");
                                nodeA2.setAttribute("href", DSpace.context_path.replace("xmlui", "oai") + sufijo2);
                                nodeA2.setAttribute("target", "_blank");
                                var textNodeA2 = document.createTextNode("Mets");
                                nodeA2.appendChild(textNodeA2);
                                var nodeBR3 = document.createElement("br");
                                elementoMetadatos.appendChild(nodeBR3);
                                elementoMetadatos.appendChild(nodeA2);

                                var sufijo3 = "/request?verb=GetRecord&amp;metadataPrefix=edm&amp;identifier=oai:" + hostDspace + ":" + urlItem;
                                var nodeA3 = document.createElement("a");
                                nodeA3.setAttribute("href", DSpace.context_path.replace("xmlui", "oai") + sufijo3);
                                nodeA3.setAttribute("target", "_blank");
                                var textNodeA3 = document.createTextNode("Europeana");
                                nodeA3.appendChild(textNodeA3);
                                var nodeBR4 = document.createElement("br");
                                elementoMetadatos.appendChild(nodeBR4);
                                elementoMetadatos.appendChild(nodeA3);

                            }

                        </script>
                    </xsl:if>

                    <xsl:if test="$containerType">

                        <!-- Recuperamos la imagen del primer ítem de la coleccion -->
                        <xsl:variable name="itemMetadataURL">
                            <xsl:value-of select="substring-before(substring-after((/dri:document/dri:body/dri:div[@id='aspect.artifactbrowser.CollectionViewer.div.collection-home']/dri:div[@id='aspect.discovery.CollectionRecentSubmissions.div.collection-recent-submission']/dri:referenceSet/dri:reference)[1]/@url, '/metadata/'), '/mets.xml')"/>
                        </xsl:variable>
                        <div id="primeraImagen" style="display: none;">
                            <img src="{urldecode:decode(document(concat($dspaceUrl,'/DRI/',$itemMetadataURL))//dri:document//dri:meta//dri:pageMeta//dri:metadata[@element='citation_pdf_url'])}">
                                <xsl:attribute name="alt">xmlui.dri2xhtml.METS-1.0.collection-logo-alt</xsl:attribute>
                                <xsl:attribute name="attr" namespace="http://apache.org/cocoon/i18n/2.1">alt</xsl:attribute>
                            </img>
                        </div>

                        <script type="text/javascript">
                            
                            var logoWrapper = $('.ds-logo-wrapper')[0];
                            var nodeDivParent = document.createElement("div");
                            nodeDivParent.setAttribute("class", "col-sm-4");
                            nodeDivParent.setAttribute("id", "leftMetadataDiv");

                            if (logoWrapper == undefined) {

                                var nodeDiv = document.createElement("div");
                                nodeDiv.setAttribute("class", "ds-logo-wrapper");
                                
                                var nodeImg = document.createElement("img");
                                var src = $('#primeraImagen')[0].firstElementChild.src;
                                $('#primeraImagen')[0].firstElementChild.src = encodeURI(src);
				                nodeImg.setAttribute("class", "logo img-responsive img-thumbnail");
								nodeImg.setAttribute("style", "margin-bottom: 25px");
                                nodeImg.setAttribute("src", encodeURI(src));
                                nodeImg.setAttribute("alt", "Logo del reportaje");
                                nodeDiv.appendChild(nodeImg);
                                nodeDivParent.appendChild(nodeDiv);


                            }else{
                                nodeDivParent.appendChild(logoWrapper);
                            }

                            var detailView = $('.detail-view')[0];
                            detailView.appendChild(nodeDivParent);

                            // Pone el numero de imagenes al final de los metadatos de la plantilla
                    	    var nimagenes = $('#nimagenes')[0].children[1].value;
                    	    var nodeDiv = document.createElement("div");
    	                    nodeDiv.setAttribute("class", "simple-item-view-uri item-page-field-wrapper table");

                            var nodeH5 = document.createElement("h5");
                            var nodeStrong = document.createElement("strong");
                            var textNodeH5 = document.createTextNode("Nº de imágenes");
                            nodeStrong.appendChild(textNodeH5);
                            nodeH5.appendChild(nodeStrong);

                            var nodeSPAN = document.createElement("span");
                            nodeSPAN.setAttribute("type", "raw");
                            var textNodeSPAN = document.createTextNode(nimagenes);
                            nodeSPAN.appendChild(textNodeSPAN);

                            nodeDiv.appendChild(nodeH5);
                            nodeDiv.appendChild(nodeSPAN);

    	                    var metadataTemplateList = $('#rigthMetadataDiv')[0];
                            if(metadataTemplateList == undefined){
                                metadataTemplateList = $('#aspect_discovery_CollectionRecentSubmissions_div_collection-recent-submission')[0];
								if(metadataTemplateList == undefined){
									metadataTemplateList = $('#aspect_artifactbrowser_CollectionViewer_div_collection-home')[0];
									metadataTemplateList.insertAdjacentElement("afterend", nodeDiv);
								}else{
									metadataTemplateList.insertAdjacentElement("afterbegin", nodeDiv);
								}
	                            
                            }else{
    			    			metadataTemplateList.appendChild(nodeDiv);
                            }
			    
						    if($("h3.ds-div-head:contains('Metadatos')")[0]!=undefined){
                                var childMetadata = $("h3.ds-div-head:contains('Metadatos')")[0];
			                    $("h3.ds-div-head:contains('Metadatos')")[0].parentNode.removeChild(childMetadata); //Eliminamos la cabecera de metadatos
						    }

                            var childImage = $('#nimagenes')[0];
                            $('#nimagenes')[0].parentNode.removeChild(childImage); //Eliminamos el número de imagenes

                            //Ponemos las imágenes abajo
                            var nodeParent = $('#aspect_browseArtifacts_CollectionBrowse_div_collection-template')[0];
                            if(nodeParent == undefined){
                                nodeParent = $('#aspect_artifactbrowser_CollectionViewer_div_collection-view')[0];
                            }
                            var nodeDivImagenes = document.createElement("div");
                            nodeDivImagenes.setAttribute("class", "col-sm-12");
						    var imagenesCollectionDiv = $("h3.ds-div-head:contains('Imágenes')")[0];
						    if(imagenesCollectionDiv!== undefined){
                                imagenesCollectionDiv.setAttribute("class","page-header-recentsubmission");
								nodeDivImagenes.appendChild(imagenesCollectionDiv);
						    }
                            nodeParent.appendChild(nodeDivImagenes);

                            //Modificamos el div de descriptores para ponerlos a la izquierda
                            var descriptoresDiv = $('#divDescriptoresColeccion')[0];
                            var leftMetadataDiv = $('#leftMetadataDiv')[0];
                            if(descriptoresDiv!=undefined &amp;&amp; leftMetadataDiv!=undefined){
                                leftMetadataDiv.appendChild(descriptoresDiv);
                            }

                            var pSendItem = $('p.ds-paragraph')[0];
                            if(pSendItem!=undefined){
                                var parentDivInicial = $('#aspect_artifactbrowser_CollectionViewer_div_collection-home')[0];
								parentDivInicial.classList.add("row");
                                parentDivInicial.insertAdjacentElement("afterbegin", pSendItem);
                                pSendItem.classList.add("col-sm-12");
                            }


                            //Vista de imágenes en cuadrículas
                            var nodeDivBotones = document.createElement("div");
                            nodeDivBotones.setAttribute("class", "btn-group-recentsubmission");
                            
                            var nodeABoton1 = document.createElement("a");
                            nodeABoton1.setAttribute("class", "btn btn-default btn-sm");
                            nodeABoton1.setAttribute("onclick", "changeToGridImages('list')");
                            var nodeSpan1 = document.createElement("span");
                            nodeSpan1.setAttribute("class", "glyphicon glyphicon-th-list");
                            var textNodeSPAN1 = document.createTextNode("Lista");
                            nodeABoton1.appendChild(nodeSpan1);
                            nodeABoton1.appendChild(textNodeSPAN1);

                            var nodeABoton2 = document.createElement("a");
                            nodeABoton2.setAttribute("class", "btn btn-default btn-sm");
                            nodeABoton2.setAttribute("onclick", "changeToGridImages('grid')");
                            var nodeSpan2 = document.createElement("span");
                            nodeSpan2.setAttribute("class", "glyphicon glyphicon-th");
                            var textNodeSPAN2 = document.createTextNode("Grid");
                            nodeABoton2.appendChild(nodeSpan2);
                            nodeABoton2.appendChild(textNodeSPAN2);

                            var nodeABoton3 = document.createElement("a");
                            nodeABoton3.setAttribute("class", "btn btn-default btn-sm");
                            nodeABoton3.setAttribute("onclick", "changeToGridImages('gallery')");
                            var nodeSpan3 = document.createElement("span");
                            nodeSpan3.setAttribute("class", "glyphicon glyphicon-stop");
                            var textNodeSPAN3 = document.createTextNode("Galería");
                            nodeABoton3.appendChild(nodeSpan3);
                            nodeABoton3.appendChild(textNodeSPAN3);

                            nodeDivBotones.appendChild(nodeABoton1);
                            nodeDivBotones.appendChild(nodeABoton2);
                            nodeDivBotones.appendChild(nodeABoton3);
                            nodeDivImagenes.appendChild(nodeDivBotones);
			    
                            //Por defecto, se establece la vista de Grid
			                function changeToGridImages(typeView){
                                
				                $("a.btn.btn-default.btn-sm").css("background-color", "white");
                                if(typeView === 'grid'){
                                    
                                    //Volvemos a poner las imágenes en modo lista
                                    $("ul.ds-artifact-list.list-unstyled").attr("style", "display:none");
                                    $("#divImagenesGallery").attr("style", "display:none");

                                    var divGridImagenes = $("#divImagenesGrid");
                                    if(divGridImagenes[0] !== undefined){
                                        divGridImagenes.attr("style", "display:block");
                                    } else{
                                        createImagesGrid();
                                    }
				                    $("a.btn.btn-default.btn-sm")[1].style = 'background-color: lightgray';

                                }else if(typeView === 'list'){

                                    //Volvemos a poner las imágenes en modo lista
                                    $("ul.ds-artifact-list.list-unstyled").attr("style", "display:block");
                                    $("#divImagenesGallery").attr("style", "display:none");
                                    $("#divImagenesGrid").attr("style", "display:none");
				                    $("a.btn.btn-default.btn-sm")[0].style = 'background-color: lightgray';

                                }else if(typeView === 'gallery'){

                                    //Volvemos a poner las imágenes en modo lista
                                    $("ul.ds-artifact-list.list-unstyled").attr("style", "display:none");
                                    $("#divImagenesGrid").attr("style", "display:none");

                                    var divGalleryImagenes = $("#divImagenesGallery");
                                    if(divGalleryImagenes[0] !== undefined){
                                        divGalleryImagenes.attr("style", "display:block");
                                    } else{
                                        createImagesGallery();
                                    }

                                    $("#divImagenesGallery").lightGallery({
                                        thumbnail:true
                                    });
                                    $("#divImagenesGallery a")[0].click();
				                    $("a.btn.btn-default.btn-sm")[2].style = 'background-color: lightgray';
                                }
                            }

                            function createImagesGrid(){

                                var misEnlaces = $('a.image-link');
                                var divImagenesCuadricula = $('#aspect_discovery_CollectionRecentSubmissions_div_collection-recent-submission')[0];
                                $("ul.ds-artifact-list.list-unstyled").attr("style", "display:none");

                                var divImagenes = document.createElement("div");
                                divImagenes.setAttribute("id", "divImagenesGrid");
                                divImagenes.setAttribute("class", "page-header col-sm-12");
                                divImagenesCuadricula.appendChild(divImagenes);

                                for(i=0; i&lt;misEnlaces.length; i++) {

                                    var miEnlaceGrid = misEnlaces[i].cloneNode(true);
                                    miEnlaceGrid.setAttribute("class", "col-xs-3 col-lg-3 thumbnail-recentsubmission");
                                    miEnlaceGrid.setAttribute("target", "_blank");
                                    miEnlaceGrid.children[0].setAttribute("class","img-thumbnail-recentsubmission");
                                    divImagenes.appendChild(miEnlaceGrid);
                                }

                            }

                            function createImagesGallery(){

                                var misImagenes = $('img.img-responsive.img-thumbnail').not(".logo");
                                var divImagenesCuadricula = $('#aspect_discovery_CollectionRecentSubmissions_div_collection-recent-submission')[0];
                                $("ul.ds-artifact-list.list-unstyled").attr("style", "display:none");

                                var divImagenes = document.createElement("div");
                                divImagenes.setAttribute("id", "divImagenesGallery");
                                divImagenes.setAttribute("class", "page-header col-sm-12");
                                divImagenesCuadricula.appendChild(divImagenes);

                                for(i=0; i&lt;misImagenes.length; i++) {

                                    var miAelement = document.createElement("a");
                                    miAelement.setAttribute("class", "col-xs-3 col-lg-3 thumbnail-recentsubmission");

                                    var miImagen = misImagenes[i].cloneNode(true);
                                    miImagen.setAttribute("class", "img-thumbnail-recentsubmission");
                                    miImagen.setAttribute("alt", "");

                                    var srcImagen = miImagen.src;
                                    miAelement.setAttribute("href", srcImagen.substring(0, srcImagen.indexOf("?")-4));
                                    miAelement.appendChild(miImagen);
                                    divImagenes.appendChild(miAelement);
                                }

                            }


            		  </script>

                    </xsl:if>

                    <xsl:if test="$restricted-resource">

                        <script type="text/javascript">
                            
                            console.log("Metiendo políticas de privacidad");
			    $('*[id^="aspect_artifactbrowser_ItemRequestForm_div"]')[0].parentNode.className = "contact-page";
                            
			    var div = $('*[id^="aspect_artifactbrowser_ItemRequestForm_p"]')[0];
                            var newH3_1 = document.createElement('h3');
                            newH3_1.appendChild(document.createTextNode('Política de privacidad: '));
                            
                            var newP_1 = document.createElement('p');
                            newP_1.appendChild(document.createTextNode('La Junta de Andalucía no recopila datos personales por visitar este portal. Los datos recogidos en el presente formulario no se almacenan en base de datos alguna, únicamente se guardan en un documento de texto lineal para utilizarlo con el fin de dar respuesta a los mensajes recibidos. Los textos lineales donde se guardan lo datos de las personas que contactan con el Portal de la Junta de Andalucía son borrados regularmente. La Junta de Andalucía no revelará ni transferirá bajo ningún concepto a terceras personas datos personales de quienes se comuniquen mediante el formulario '));

                            var newB_1 = document.createElement('b');
                            newB_1.appendChild(document.createTextNode('Contacto'));
                            newP_1.appendChild(newB_1);

                            var newH3_2 = document.createElement('h3');
                            newH3_2.appendChild(document.createTextNode('Cláusula de Protección de Datos para el Archivo Fotográfico apartado Contacto'));

                            var newP_2 = document.createElement('p');
                            newP_2.appendChild(document.createTextNode('En cumplimiento de lo dispuesto en el Reglamento General de Protección de Datos le informamos que:'));

                            var newUL_1 = document.createElement('ul');
                            newUL_1.className = "contact-list";

                            var newLI_1 = document.createElement('li');
                            newLI_1.appendChild(document.createTextNode('El Responsable del tratamiento de sus datos personales es la Secretaría General Técnica de la Consejería de la Presidencia, Administración Local y Memoria Democrática cuya dirección es  Avenida de Roma s/n cp 41004 SEVILLA'));

                            var newLI_2 = document.createElement('li');
                            newLI_2.appendChild(document.createTextNode('Podrá contactar con el Delegado de Protección de Datos en  la  dirección <b>dpd.cpalmd@juntadeandalucia.es</b>. '));

                            var newLI_3 = document.createElement('li');
                            newLI_3.appendChild(document.createTextNode('Los datos personales que nos proporciona son necesarios para mantener comunicación acerca del Archivo Fotográfico de Presidencia. Base Jurídica: artículo 6.1.e) del Reglamento General de Protección de Datos (UE) 2016/679'));

                            var newLI_4 = document.createElement('li');
                            newLI_4.appendChild(document.createTextNode('Puede usted ejercer sus derechos de acceso, rectificación, supresión, portabilidad de sus datos, y la limitación u oposición a su tratamiento, como se explica en la información adicional. La información adicional detallada, así como el formulario para reclamación y/o ejercicio de  derechos  se encuentra  disponible en la siguiente dirección electrónica: '));

                            var newA_1 = document.createElement('a');
                            newA_1.target = "_blank";
                            newA_1.href = "www.juntadeandalucia.es/protecciondedatos";
                            newA_1.appendChild(document.createTextNode('www.juntadeandalucia.es/protecciondedatos'));
                            newLI_4.appendChild(newA_1);
                            
                            newUL_1.appendChild(newLI_1);
                            newUL_1.appendChild(newLI_2);
                            newUL_1.appendChild(newLI_3);
                            newUL_1.appendChild(newLI_4);                            

                            div.insertAdjacentElement("afterend", newH3_1);
                            newH3_1.insertAdjacentElement("afterend", newP_1);
                            newP_1.insertAdjacentElement("afterend", newH3_2);
                            newH3_2.insertAdjacentElement("afterend", newP_2);
                            newP_2.insertAdjacentElement("afterend", newUL_1);

                        </script>

                    </xsl:if>

                </body>



  <!-- Slide and Slick Required: Link to jquery.slides.min.js and slick.min.js -->
  <script src="{concat($theme-path, 'scripts/jquery.slides.min.js')}" type="text/javascript"></script>  
  <script src="{concat($theme-path, 'scripts/slick.min.js')}" type="text/javascript"></script> 
  <script src="{concat($theme-path, 'scripts/lightgallery.js')}" type="text/javascript"></script>
  <script src="{concat($theme-path, 'scripts/lg-thumbnail.min.js')}" type="text/javascript"></script>
  <script src="{concat($theme-path, 'scripts/lg-fullscreen.min.js')}" type="text/javascript"></script>
  <!-- End SlidesJS and Slick Required -->

  <!-- SlidesJS Required: Initialize SlidesJS with a jQuery doc ready -->
  <script>
    $(function() {
      $('#slides').slidesjs({
        width: 940,
        height: 528,
        effect: {
          slide: {
            // Slide effect settings.
            speed: 2000
              // [number] Speed in milliseconds of the slide animation.
          },
          fade: {
            speed: 300,
              // [number] Speed in milliseconds of the fade animation.
            crossfade: true
              // [boolean] Cross-fade the transition.
          }
        },
        play: {
          active: true,
          auto: true,
          interval: 4000,
          swap: true
        }
      });
    });
  </script>


  <!-- Para el funcionamiento del menú en móvil -->
  <script src="{concat($theme-path, 'scripts/jquery.mydropdown.js')}" type="text/javascript"></script>
  <script src="{concat($theme-path, 'scripts/menu_movil.js')}" type="text/javascript"></script>
  <!-- Para el funcionamiento del menú en móvil -->


  <!-- ENLACES de CABECERA -->
  <script type="text/javascript">
  		
  		document.getElementById("menu_cabe_busc").href = DSpace.context_path + "/discover";
  		document.getElementById("menu_cabe_comu").href = DSpace.context_path + "/community-list";
  		document.getElementById("menu_cabe_recu").href = DSpace.context_path + "/handle/20.500.12388/285";
  		document.getElementById("menu_cabe_expo").href = DSpace.context_path + "/handle/20.500.12388/621";
	 	document.getElementById("menu_cabe_cont").href = DSpace.context_path + "/pages/contacta";

  		//Eliminamos la miga de pan en la home
  		if ( window.location.pathname === DSpace.context_path + "/") {
			$("div#miga.trail-wrapper")[0].style.visibility = "hidden";
			
			//Enlaces del menú central
            document.getElementById("menu_central_actos").href = DSpace.context_path + "/browse?type=function";
	        document.getElementById("menu_central_tema").href = DSpace.context_path + "/handle/20.500.12388/482";
        	document.getElementById("menu_central_legi").href = DSpace.context_path + "/handle/20.500.12388/481";

            //Carrusel para "Añadidos recientemente"
            $(".ds-artifact-list.list-unstyled").slick({
                infinite: true,
                slidesToShow: 4,
                slidesToScroll: 4
            });
  		}
		
		//Logo 
		document.getElementsByClassName("sublogo")[0].href = DSpace.context_path;
		
		//Enlace a actos institucionales desde la comunidad creada
		var urlActosInstitucionales = DSpace.context_path + '/handle/20.500.12388/681';
		var urlBrowseFunction =  DSpace.context_path + "/browse?type=function";
		$("[href='" + urlActosInstitucionales + "']").attr("href", urlBrowseFunction);
		if ( $("[href='" + urlBrowseFunction + "']")[0] !== undefined ) {
			if ( window.location.pathname !== DSpace.context_path + "/") {
				$("[href='" + urlBrowseFunction + "']")[0].parentElement.childNodes[2].remove();
			}
		}

  </script>

            <xsl:text disable-output-escaping="yes">&lt;/html&gt;</xsl:text>

            </xsl:when>
            <xsl:otherwise>
                <!-- This is only a starting point. If you want to use this feature you need to implement
                JavaScript code and a XSLT template by yourself. Currently this is used for the DSpace Value Lookup -->
                <xsl:apply-templates select="dri:body" mode="modal"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <!-- The HTML head element contains references to CSS as well as embedded JavaScript code. Most of this
    information is either user-provided bits of post-processing (as in the case of the JavaScript), or
    references to stylesheets pulled directly from the pageMeta element. -->
    <xsl:template name="buildHead">
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>

            <!-- Use the .htaccess and remove these lines to avoid edge case issues.
             More info: h5bp.com/i/378 -->
            <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>

            <!-- Mobile viewport optimized: h5bp.com/viewport -->
            <meta name="viewport" content="width=device-width,initial-scale=1"/>

            <link rel="shortcut icon">
                <xsl:attribute name="href">
                    <xsl:value-of select="$theme-path"/>
                    <xsl:text>images/favicon.ico</xsl:text>
                </xsl:attribute>
            </link>
            <link rel="apple-touch-icon">
                <xsl:attribute name="href">
                    <xsl:value-of select="$theme-path"/>
                    <xsl:text>images/apple-touch-icon.png</xsl:text>
                </xsl:attribute>
            </link>

            <meta name="Generator">
                <xsl:attribute name="content">
                    <xsl:text>DSpace</xsl:text>
                    <xsl:if test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='dspace'][@qualifier='version']">
                        <xsl:text> </xsl:text>
                        <xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='dspace'][@qualifier='version']"/>
                    </xsl:if>
                </xsl:attribute>
            </meta>

            <xsl:if test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='ROBOTS'][not(@qualifier)]">
                <meta name="ROBOTS">
                    <xsl:attribute name="content">
                        <xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='ROBOTS']"/>
                    </xsl:attribute>
                </meta>
            </xsl:if>

            <!-- Add stylesheets -->
            <!--TODO figure out a way to include these in the concat & minify-->
            <xsl:for-each select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='stylesheet']">
                <link rel="stylesheet" type="text/css">
                    <xsl:attribute name="media">
                        <xsl:value-of select="@qualifier"/>
                    </xsl:attribute>
                    <xsl:attribute name="href">
                        <xsl:value-of select="$theme-path"/>
                        <xsl:value-of select="."/>
                    </xsl:attribute>
                </link>
            </xsl:for-each>

            <link rel="stylesheet" href="{concat($theme-path, 'styles/selectize.bootstrap3.css')}"/>
            <link rel="stylesheet" href="{concat($theme-path, 'styles/selectize.legacy.css')}"/>

            <link rel="stylesheet" href="{concat($theme-path, 'styles/main.css')}"/>
            <link rel="stylesheet" href="{concat($theme-path, 'styles/slick.css')}"/>
            <link rel="stylesheet" href="{concat($theme-path, 'styles/slick-theme.css')}"/>
            <link rel="stylesheet" href="{concat($theme-path, 'styles/lightgallery.css')}"/>

            <!-- Cabecera de la Junta -->
            <link rel="stylesheet" type="text/css" href="{concat($theme-path, 'junta/estructura.css')}"/>
            <link rel="stylesheet" type="text/css" href="{concat($theme-path, 'junta/estilos_jda.css')}"/>
            <link rel="stylesheet" type="text/css" href="{concat($theme-path, 'junta/menu.css')}"/>
            <!-- Fin Cabecera de la Junta -->

            <link rel="stylesheet" href="{concat($theme-path, 'styles/custom-theme.css')}"/>

            <!-- Add syndication feeds -->
            <xsl:for-each select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='feed']">
                <link rel="alternate" type="application">
                    <xsl:attribute name="type">
                        <xsl:text>application/</xsl:text>
                        <xsl:value-of select="@qualifier"/>
                    </xsl:attribute>
                    <xsl:attribute name="href">
                        <xsl:value-of select="."/>
                    </xsl:attribute>
                </link>
            </xsl:for-each>

            <!--  Add OpenSearch auto-discovery link -->
            <xsl:if test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='opensearch'][@qualifier='shortName']">
                <link rel="search" type="application/opensearchdescription+xml">
                    <xsl:attribute name="href">
                        <xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='scheme']"/>
                        <xsl:text>://</xsl:text>
                        <xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='serverName']"/>
                        <xsl:text>:</xsl:text>
                        <xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='serverPort']"/>
                        <xsl:value-of select="$context-path"/>
                        <xsl:text>/</xsl:text>
                        <xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='opensearch'][@qualifier='autolink']"/>
                    </xsl:attribute>
                    <xsl:attribute name="title" >
                        <xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='opensearch'][@qualifier='shortName']"/>
                    </xsl:attribute>
                </link>
            </xsl:if>

            <!-- The following javascript removes the default text of empty text areas when they are focused on or submitted -->
            <!-- There is also javascript to disable submitting a form when the 'enter' key is pressed. -->
            <script>
                //Clear default text of empty text areas on focus
                function tFocus(element)
                {
                if (element.value == '<i18n:text>xmlui.dri2xhtml.default.textarea.value</i18n:text>'){element.value='';}
                }
                //Clear default text of empty text areas on submit
                function tSubmit(form)
                {

                if(document.getElementById("idErrorFormatoFecha")!=null){
                    return false;
                }
                
                var defaultedElements = document.getElementsByTagName("textarea");
                for (var i=0; i != defaultedElements.length; i++){
                if (defaultedElements[i].value == '<i18n:text>xmlui.dri2xhtml.default.textarea.value</i18n:text>'){
                defaultedElements[i].value='';}}
                }
                //Disable pressing 'enter' key to submit a form (otherwise pressing 'enter' causes a submission to start over)
                function disableEnterKey(e)
                {
                var key;

                if(window.event)
                key = window.event.keyCode;     //Internet Explorer
                else
                key = e.which;     //Firefox and Netscape

                if(key == 13)  //if "Enter" pressed, then disable!
                return false;
                else
                return true;
                }
   		
		var urlReportaje = '<xsl:value-of select="confman:getProperty('dspace.module.reportage')"/>';

            </script>

            <xsl:text disable-output-escaping="yes">&lt;!--[if lt IE 9]&gt;
                &lt;script src="</xsl:text><xsl:value-of select="concat($theme-path, 'vendor/html5shiv/dist/html5shiv.js')"/><xsl:text disable-output-escaping="yes">"&gt;&#160;&lt;/script&gt;
                &lt;script src="</xsl:text><xsl:value-of select="concat($theme-path, 'vendor/respond/dest/respond.min.js')"/><xsl:text disable-output-escaping="yes">"&gt;&#160;&lt;/script&gt;
                &lt;![endif]--&gt;</xsl:text>

            <!-- Modernizr enables HTML5 elements & feature detects -->
            <script src="{concat($theme-path, 'vendor/modernizr/modernizr.js')}">&#160;</script>

            <!-- Add the title in -->
            <xsl:variable name="page_title" select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='title'][last()]" />
            <title>
                <xsl:choose>
                    <xsl:when test="starts-with($request-uri, 'page/about')">
                        <i18n:text>xmlui.mirage2.page-structure.aboutThisRepository</i18n:text>
                    </xsl:when>
                    <xsl:when test="not($page_title)">
                        <xsl:text>  </xsl:text>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:copy-of select="$page_title/node()" />
                    </xsl:otherwise>
                </xsl:choose>
            </title>

            <!-- Head metadata in item pages -->
            <xsl:if test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='xhtml_head_item']">
                <xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='xhtml_head_item']"
                              disable-output-escaping="yes"/>
            </xsl:if>

            <!-- Add all Google Scholar Metadata values -->
            <xsl:for-each select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[substring(@element, 1, 9) = 'citation_']">
                <meta name="{@element}" content="{.}"></meta>
            </xsl:for-each>

            <!-- Add MathJAX JS library to render scientific formulas-->
            <xsl:if test="confman:getProperty('webui.browse.render-scientific-formulas') = 'true'">
                <script type="text/x-mathjax-config">
                    MathJax.Hub.Config({
                      tex2jax: {
                        inlineMath: [['$','$'], ['\\(','\\)']],
                        ignoreClass: "detail-field-data|detailtable|exception"
                      },
                      TeX: {
                        Macros: {
                          AA: '{\\mathring A}'
                        }
                      }
                    });
                </script>
                <script type="text/javascript" src="//cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML">&#160;</script>
            </xsl:if>

        </head>
    </xsl:template>


    <!-- The header (distinct from the HTML head element) contains the title, subtitle, login box and various
        placeholders for header images -->
    <xsl:template name="buildHeader">
		<!-- Cabecera de la Junta -->
	    <div id="cabecera">
	        <div class="container">
	            <div id="logo">
	                <h1>
	                    <a class="logotipo" accesskey="0" href="http://www.juntadeandalucia.es/index.html" title="Portada de la Web oficial de la Junta de Andalucía">
	                        <img alt="" src="{concat($context-path, 'junta/themes/images/logo_bg_movil.png')}" />
	                        <span class="h1-junta">Junta de Andalucía</span>
	                    </a>
	                    <a href="#" class="sublogo"><img src="{concat($context-path, '/themes/Mirage2/images/logo.png')}" alt="Archivo fotográfico" i18n:attr="alt"/></a>
	                </h1>
	                <div class="clearlogo"> </div>
	                <div class="oculto">
	                    <ul>
	                        <li>
	                            <a accesskey="1" title="Saltar el menú de navegación, e ir directamente a los contenidos del Portal Oficial de la Junta de Andalucía" href="http://www.juntadeandalucia.es/#contenidos">Saltar al contenido del Portal</a>
	                        </li>
	                    </ul>
	                </div>
	            </div>

                <xsl:if test="$request-uri != '' or ($request-uri = '' and /dri:document/dri:meta/dri:userMeta/@authenticated='yes')">
                    <button type="button" class="navbar-toggle" data-toggle="offcanvas">
                        <span class="sr-only">
                            <i18n:text>xmlui.mirage2.page-structure.toggleNavigation</i18n:text>
                        </span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </xsl:if>

	            <div class="herramienta">
	                <div id="ubicacion">
	                    <img width="275" height="40" alt="Portal de la Junta de Andalucía" src="{concat($theme-path, 'junta/themes/images/cabecera_ubicacion.gif')}" />
	                </div>
	            </div>
	            <div class="buscador">
	                <form action="http://www.juntadeandalucia.es/buscar.html" method="get" class="floatright" target="_self">
	                    <fieldset>
	                        <legend>Buscador general</legend>
	                        <label for="busquedaCabecera" class="l_oculto">Buscar</label>
	                        <input id="busquedaCabecera" name="busquedageneral" type="text" class="input_text defaultTextActive" title="Buscar" style="position:relative; z-index:99999;" placeholder="Buscar"/>
	                        <input alt="Buscar" title="Buscar" type="submit" value="Buscar" class="input_submit" name="buscargeneral" />
	                        <p>p. ej. <a title="ofertas de empleo" href="http://www.juntadeandalucia.es/buscar.html?busquedageneral=ofertas+de+empleo&amp;buscar=Buscar">ofertas de empleo</a>, <a title="ayudas" href="http://www.juntadeandalucia.es/buscar.html?busquedageneral=ayudas&amp;buscar=Buscar">ayudas</a>, <a title="escolarización" href="http://www.juntadeandalucia.es/buscar.html?busquedageneral=escolarización&amp;buscar=Buscar">escolarización</a>...</p>
	                    </fieldset>
	                </form>
	            </div>
	            <div class="clear"> </div>
	        </div>
	    </div>

	    <div id="navegacion">
	        <div id="menu_btn" class="on">
	            <div class="img"></div>
	            <span class="menutxt">Menú principal</span>
	        </div>
	        <ul id="menu" class="menu_principal main-nav-horizontal">
	            <li class="main-nav li_inicio">
	                <a id="menu_cabe_busc" title="Buscar" href="#" class="drop" accesskey="3">Buscar</a>
	            </li>
	            <li class="main-nav">
	                <a id="menu_cabe_comu" title="Comunidades &amp; Reportajes" href="#" class="drop" accesskey="4">Comunidades &amp; Reportajes</a>
	            </li>
	            <li class="main-nav">
	                <a id="menu_cabe_recu" title="Recursos de Información" href="#" class="drop" accesskey="5">Recursos de Información</a>
	            </li>
	            <li class="main-nav">
	                <a id="menu_cabe_expo" title="Exposiciones Virtuales" href="#" class="drop" accesskey="6">Exposiciones Virtuales</a>
	            </li>
 		    <li class="main-nav">
                        <a id="menu_cabe_cont" title="Contacto" href="#" class="drop" accesskey="6">Contacto</a>
                    </li>
	        </ul>
	    </div>
		<!-- Fin Cabecera de la Junta -->

    </xsl:template>


    <!-- The header (distinct from the HTML head element) contains the title, subtitle, login box and various
        placeholders for header images -->
    <xsl:template name="buildTrail">
        <div id="miga" class="trail-wrapper hidden-print hidden-xs">
            <div class="container">
                <div class="row">
                    <!--TODO-->
                    <div class="col-xs-12">
                        <xsl:choose>
                            <xsl:when test="count(/dri:document/dri:meta/dri:pageMeta/dri:trail) > 1">
                                <div class="breadcrumb dropdown visible-xs">
                                    <a id="trail-dropdown-toggle" href="#" role="button" class="dropdown-toggle"
                                       data-toggle="dropdown">
                                        <xsl:variable name="last-node"
                                                      select="/dri:document/dri:meta/dri:pageMeta/dri:trail[last()]"/>
                                        <xsl:choose>
                                            <xsl:when test="$last-node/i18n:*">
                                                <xsl:apply-templates select="$last-node/*"/>
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <xsl:apply-templates select="$last-node/text()"/>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                        <xsl:text>&#160;</xsl:text>
                                        <b class="caret"/>
                                    </a>
                                    <ul class="dropdown-menu" role="menu" aria-labelledby="trail-dropdown-toggle">
                                        <xsl:apply-templates select="/dri:document/dri:meta/dri:pageMeta/dri:trail"
                                                             mode="dropdown"/>
                                    </ul>
                                </div>
                                <ul class="breadcrumb hidden-xs">
                                    <xsl:apply-templates select="/dri:document/dri:meta/dri:pageMeta/dri:trail"/>
                                </ul>
                            </xsl:when>
                            <xsl:otherwise>
                                <ul class="breadcrumb">
                                    <xsl:apply-templates select="/dri:document/dri:meta/dri:pageMeta/dri:trail"/>
                                </ul>
                            </xsl:otherwise>
                        </xsl:choose>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>

    <!--The Trail-->
    <xsl:template match="dri:trail">
        <!--put an arrow between the parts of the trail-->
        <li>
            <xsl:if test="position()=1">
		<img src="{concat($context-path, '/themes/Mirage2/images/miga_ico.gif')}" alt="" />
            </xsl:if>
            <!-- Determine whether we are dealing with a link or plain text trail link -->
            <xsl:choose>
                <xsl:when test="./@target">
                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="./@target"/>
                        </xsl:attribute>
                        <xsl:apply-templates />
                    </a>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:attribute name="class">active</xsl:attribute>
                    <xsl:apply-templates />
                </xsl:otherwise>
            </xsl:choose>
        </li>
    </xsl:template>

    <xsl:template match="dri:trail" mode="dropdown">
        <!--put an arrow between the parts of the trail-->
        <li role="presentation">
            <!-- Determine whether we are dealing with a link or plain text trail link -->
            <xsl:choose>
                <xsl:when test="./@target">
                    <a role="menuitem">
                        <xsl:attribute name="href">
                            <xsl:value-of select="./@target"/>
                        </xsl:attribute>
                        <xsl:if test="position()=1">
                            <i class="glyphicon glyphicon-home" aria-hidden="true"/>&#160;
                        </xsl:if>
                        <xsl:apply-templates />
                    </a>
                </xsl:when>
                <xsl:when test="position() > 1 and position() = last()">
                    <xsl:attribute name="class">disabled</xsl:attribute>
                    <a role="menuitem" href="#">
                        <xsl:apply-templates />
                    </a>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:attribute name="class">active</xsl:attribute>
                    <xsl:if test="position()=1">
                        <i class="glyphicon glyphicon-home" aria-hidden="true"/>&#160;
                    </xsl:if>
                    <xsl:apply-templates />
                </xsl:otherwise>
            </xsl:choose>
        </li>
    </xsl:template>


    <!--Welcome grupos-->
    <xsl:template name="welcome-grupos">
    	<div class="grupos">
            <a id="menu_central_actos" href="#">
                <div class="g-actos">
                    <div class="icono"></div>
                    <div class="titulo">Actos Institucionales</div>
                    <div class="descripcion">Acceso directo a Browser temático funcional</div>
                </div>
            </a>
            <a id="menu_central_tema" href="#">
                <div class="g-tematicos">
                    <div class="icono"></div>
                    <div class="titulo">Temáticos sobre Andalucía</div>
                    <div class="descripcion">Acceso a subcomunidad</div>
                </div>
            </a>
            <a id="menu_central_legi" href="#">
                <div class="g-legislaturas">
                    <div class="icono"></div>
                    <div class="titulo">Legislaturas</div>
                    <div class="descripcion">Acceso a subcomunidad</div>
                </div>
            </a>
        </div>
    </xsl:template>

    <!--The License-->
    <xsl:template name="cc-license">
        <xsl:param name="metadataURL"/>
        <xsl:variable name="externalMetadataURL">
            <xsl:text>cocoon:/</xsl:text>
            <xsl:value-of select="$metadataURL"/>
            <xsl:text>?sections=dmdSec,fileSec&amp;fileGrpTypes=THUMBNAIL</xsl:text>
        </xsl:variable>

        <xsl:variable name="ccLicenseName"
                      select="document($externalMetadataURL)//dim:field[@element='rights']"
                />
        <xsl:variable name="ccLicenseUri"
                      select="document($externalMetadataURL)//dim:field[@element='rights'][@qualifier='uri']"
                />
        <xsl:variable name="handleUri">
            <xsl:for-each select="document($externalMetadataURL)//dim:field[@element='identifier' and @qualifier='uri']">
                <a>
                    <xsl:attribute name="href">
                        <xsl:copy-of select="./node()"/>
                    </xsl:attribute>
                    <xsl:copy-of select="./node()"/>
                </a>
                <xsl:if test="count(following-sibling::dim:field[@element='identifier' and @qualifier='uri']) != 0">
                    <xsl:text>, </xsl:text>
                </xsl:if>
            </xsl:for-each>
        </xsl:variable>

        <xsl:if test="$ccLicenseName and $ccLicenseUri and contains($ccLicenseUri, 'creativecommons')">
            <div about="{$handleUri}" class="row">
            <div class="col-sm-3 col-xs-12">
                <a rel="license"
                   href="{$ccLicenseUri}"
                   alt="{$ccLicenseName}"
                   title="{$ccLicenseName}"
                        >
                    <xsl:call-template name="cc-logo">
                        <xsl:with-param name="ccLicenseName" select="$ccLicenseName"/>
                        <xsl:with-param name="ccLicenseUri" select="$ccLicenseUri"/>
                    </xsl:call-template>
                </a>
            </div> <div class="col-sm-8">
                <span>
                    <i18n:text>xmlui.dri2xhtml.METS-1.0.cc-license-text</i18n:text>
                    <xsl:value-of select="$ccLicenseName"/>
                </span>
            </div>
            </div>
        </xsl:if>
    </xsl:template>

    <xsl:template name="cc-logo">
        <xsl:param name="ccLicenseName"/>
        <xsl:param name="ccLicenseUri"/>
        <xsl:variable name="ccLogo">
             <xsl:choose>
                  <xsl:when test="starts-with($ccLicenseUri,
                                           'http://creativecommons.org/licenses/by/')">
                       <xsl:value-of select="'cc-by.png'" />
                  </xsl:when>
                  <xsl:when test="starts-with($ccLicenseUri,
                                           'http://creativecommons.org/licenses/by-sa/')">
                       <xsl:value-of select="'cc-by-sa.png'" />
                  </xsl:when>
                  <xsl:when test="starts-with($ccLicenseUri,
                                           'http://creativecommons.org/licenses/by-nd/')">
                       <xsl:value-of select="'cc-by-nd.png'" />
                  </xsl:when>
                  <xsl:when test="starts-with($ccLicenseUri,
                                           'http://creativecommons.org/licenses/by-nc/')">
                       <xsl:value-of select="'cc-by-nc.png'" />
                  </xsl:when>
                  <xsl:when test="starts-with($ccLicenseUri,
                                           'http://creativecommons.org/licenses/by-nc-sa/')">
                       <xsl:value-of select="'cc-by-nc-sa.png'" />
                  </xsl:when>
                  <xsl:when test="starts-with($ccLicenseUri,
                                           'http://creativecommons.org/licenses/by-nc-nd/')">
                       <xsl:value-of select="'cc-by-nc-nd.png'" />
                  </xsl:when>
                  <xsl:when test="starts-with($ccLicenseUri,
                                           'http://creativecommons.org/publicdomain/zero/')">
                       <xsl:value-of select="'cc-zero.png'" />
                  </xsl:when>
                  <xsl:when test="starts-with($ccLicenseUri,
                                           'http://creativecommons.org/publicdomain/mark/')">
                       <xsl:value-of select="'cc-mark.png'" />
                  </xsl:when>
                  <xsl:otherwise>
                       <xsl:value-of select="'cc-generic.png'" />
                  </xsl:otherwise>
             </xsl:choose>
        </xsl:variable>
        <img class="img-responsive">
             <xsl:attribute name="src">
                <xsl:value-of select="concat($theme-path,'/images/creativecommons/', $ccLogo)"/>
             </xsl:attribute>
             <xsl:attribute name="alt">
                 <xsl:value-of select="$ccLicenseName"/>
             </xsl:attribute>
        </img>
    </xsl:template>

    <!-- Like the header, the footer contains various miscellaneous text, links, and image placeholders -->
    <xsl:template name="buildFooter">
      <!--
    	<div class="feeds">
    		<xsl:call-template name="addRSSLinks"/>
            
            <a href="#">
            	<img src="{concat($context-path, '/static/icons/feed.png')}" class="btn-xs" alt="xmlui.mirage2.navigation.rss.feed" i18n:attr="alt"/> RSS 1.0</a>
            <a href="#">
            	<img src="{concat($context-path, '/static/icons/feed.png')}" class="btn-xs" alt="xmlui.mirage2.navigation.rss.feed" i18n:attr="alt"/> RSS 2.0</a>
            <a href="#">
            	<img src="{concat($context-path, '/static/icons/feed.png')}" class="btn-xs" alt="xmlui.mirage2.navigation.rss.feed" i18n:attr="alt"/> Atom</a>
           
        </div>
        -->
        <div class="clear"></div>
        <div id="pie">
            <div class="container">
                <div class="grid_6 social">
                    <h2>El portal de la Junta en:</h2>
                    <ul class="listado_social">
                        <li>
                            <a href="https://twitter.com/serviciosand" title="El portal de la Junta en Twitter" class="ico_social_30 twitter">
                                <img src="{concat($theme-path, 'junta/themes/images/social/30_g_twitter.png')}" alt="" />
                                <span>Twitter</span>
                            </a>
                        </li>
                        <li>
                            <a href="https://www.facebook.com/juntainforma/" title="El portal de la Junta en Facebook" class="ico_social_30 facebook">
                                <img src="{concat($theme-path, 'junta/themes/images/social/30_g_facebook.png')}" alt="" />
                                <span>Facebook</span>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.juntadeandalucia.es/informacion/fuentesweb.html" title="El portal de la Junta en Fuentes Web" class="ico_social_30 rss">
                                <img src="{concat($theme-path, 'junta/themes/images/social/30_g_rss.png')}" alt="" />
                                <span>Rss</span>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.juntadeandalucia.es/datosabiertos/portal.html" title="El portal de la Junta de Datos abiertos" class="ico_social_30 da">
                                <img src="{concat($theme-path, 'junta/themes/images/social/30_g_da.png')}" alt="" />
                                <span>Datos abiertos</span>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="grid_5 enlaces">
                    <ul>
                        <li>
                            <a href="http://www.juntadeandalucia.es/informacion/lista.html" title="Lista de correos">Lista de correos</a>
                        </li>
                        <li>
                            <a href="http://www.juntadeandalucia.es/informacion/fuentesweb.html" title="Fuentes web">Fuentes web</a>
                        </li>
                        <li>
                            <a href="http://www.juntadeandalucia.es/informacion/legal.html" title="Información legal">Legal</a>
                        </li>
                        <li>
                            <a href="http://www.juntadeandalucia.es/informacion/mapaweb.html" title="Mapa del sitio" accesskey="0">Mapa del sitio</a>
                        </li>
                        <li>
                            <a href="http://www.juntadeandalucia.es/informacion/contacto.html" title="Contacto" accesskey="9">Contacto</a>
                        </li>
                    </ul>
                </div>
                <div class="grid_5 enlaces-accesibilidad">
                    <ul>
                        <li>
                            <a href="http://www.juntadeandalucia.es/informacion/accesibilidad.html" class="aa">Accesibilidad</a>
                        </li>
                        <li>
                            <a id="accesibleLink" href="https://accesible.juntadeandalucia.es/index.html" class="universal">Activar herramientas de apoyo a la navegación</a>
                        </li>
                    </ul>
                </div>
            </div>

            <noscript>
                <iframe title="Google Tag Manager" src="https://www.googletagmanager.com/ns.html?id=GTM-WH72PV6" height="0" width="0" style="display:none;visibility:hidden" />
            </noscript>
        </div>

    </xsl:template>


    <!--
            The meta, body, options elements; the three top-level elements in the schema
    -->




    <!--
        The template to handle the dri:body element. It simply creates the ds-body div and applies
        templates of the body's child elements (which consists entirely of dri:div tags).
    -->
    <xsl:template match="dri:body">
        <div>
            <xsl:if test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='alert'][@qualifier='message']">
                <div class="alert alert-warning">
                    <button type="button" class="close" data-dismiss="alert">&#215;</button>
                    <xsl:copy-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='alert'][@qualifier='message']/node()"/>
                </div>
            </xsl:if>

            <!-- Check for the custom pages -->
            <xsl:choose>
                <xsl:when test="starts-with($request-uri, 'page/about')">
                    <div class="hero-unit">
                        <h1><i18n:text>xmlui.mirage2.page-structure.heroUnit.title</i18n:text></h1>
                        <p><i18n:text>xmlui.mirage2.page-structure.heroUnit.content</i18n:text></p>
                    </div>
                </xsl:when>
                <!-- Otherwise use default handling of body -->
                <xsl:otherwise>
                    <xsl:apply-templates />
                </xsl:otherwise>
            </xsl:choose>

        </div>
    </xsl:template>

    <xsl:template match="/dri:document/dri:body/dri:div[@id='aspect.artifactbrowser.CommunityBrowser.div.comunity-browser']">
    	<xsl:choose>
            <xsl:when test="$request-uri = ''">
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates />
            </xsl:otherwise>
    	</xsl:choose>
	</xsl:template>

    <!-- Oculta el buscador browser en las vistas de comunidades y colecciones por plantilla xsl -->
    <xsl:template match="dri:body//dri:div[@id='aspect.artifactbrowser.CommunityViewer.div.community-home' or @id='aspect.artifactbrowser.CollectionViewer.div.collection-home']//dri:div[@id='aspect.artifactbrowser.CommunityViewer.div.community-search-browse' or @id='aspect.artifactbrowser.CollectionViewer.div.collection-search-browse']">
        <!-- NO PINTA NADA -->
    </xsl:template>

    <!-- Oculta el conjunto de metadatos de la plantilla de ítem de la colección -->
    <xsl:template match="dri:body//dri:list[@id='aspect.browseArtifacts.CollectionBrowse.list.metadataTemplateList']">

        <div id="rigthMetadataDiv" class="col-sm-8">

            <!-- DESCRIPCION -->
            <xsl:if test="./dri:item/dri:field[@n='dc_description_abstract']">
                <div class="simple-item-view-description item-page-field-wrapper table">
                    <h5>
                        <strong>Descripción</strong>
                    </h5>
                    <div id="abstract-halftwo" style="display: block">
                        <xsl:choose>
                            <xsl:when test="./dri:item/dri:field[@n='dc_description_abstract']">
                                <xsl:choose>
                                    <xsl:when test="string-length(./dri:item/dri:field[@n='dc_description_abstract']) &gt; 450">

                                        <xsl:copy-of select="concat(substring(./dri:item/dri:field[@n='dc_description_abstract'],1,150),'...')"/>&#160;
                                        <a href="#"><xsl:attribute name="onclick">javascript:show()</xsl:attribute>Ver más</a>

                                        <script type="text/javascript">
                                            function show() {
                                                var item = document.getElementById('abstract-fulltwo');
                                                item.style.display = "block";

                                                var ele = document.getElementById('abstract-halftwo');
                                                ele.style.display = "none";
                                            }

                                            function hide() {
                                                var ele = document.getElementById('abstract-halftwo');
                                                ele.style.display = "block";

                                                var item = document.getElementById('abstract-fulltwo');
                                                item.style.display = "none";
                                            }
                                        </script>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:copy-of select="./dri:item/dri:field[@n='dc_description_abstract'][1]/node()"/>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </xsl:when>                            
                        </xsl:choose>
                    </div>
                    <xsl:if test="string-length(./dri:item/dri:field[@n='dc_description_abstract']) &gt; 450">
                        <div id="abstract-fulltwo" style="display: none">
                            <xsl:copy-of select="./dri:item/dri:field[@n='dc_description_abstract']"/>&#160;
                            <a href="#"><xsl:attribute name="onclick">javascript:hide()</xsl:attribute>Ver menos</a>
                        </div>
                    </xsl:if>
                </div>
            </xsl:if>

            <!-- FECHA -->
            <xsl:if test="./dri:item/dri:field[@n='dc_date_issued']">
                <div class="simple-item-view-date word-break item-page-field-wrapper table">
                    <h5>
                        <strong>
                            <i18n:text>xmlui.dri2xhtml.METS-1.0.item-date</i18n:text>
                        </strong>
                    </h5>
                    <div>
                        <xsl:value-of select="./dri:item/dri:field[@n='dc_date_issued']" />
                    </div>
                </div>
            </xsl:if>

            <!--LEGISLATURA -->
            <xsl:if test="./dri:item/dri:field[@n='dc_coverage_legislatura']">
                <div class="simple-item-view-uri item-page-field-wrapper table">
                    <span>
                        <xsl:for-each select="./dri:item/dri:field[@n='dc_coverage_legislatura']">
                            <xsl:copy-of select="./node()"/>
                            <br/>
                        </xsl:for-each>
                    </span>
                </div>
            </xsl:if>

            <!--LUGAR -->
            <xsl:if test="./dri:item/dri:field[@n='dc_coverage_geographic'] or ./dri:item/dri:field[@n='dc_coverage_physicalplace']">
                <div class="simple-item-view-uri item-page-field-wrapper table">
                    <h5><strong>Lugar</strong></h5>
                    <xsl:for-each select="./dri:item/dri:field[@n='dc_coverage_geographic']">
                        <xsl:variable name="coverageText">
                            <xsl:copy-of select="./node()" />
                        </xsl:variable>
                        <a href="{concat(concat($context-path, '/browse?value='), concat(translate(url:encode($coverageText, 'UTF-8'), ' ', '+'), '&amp;type=coverage'))}" target="_blank">
                            <xsl:copy-of select="$coverageText"/>
                        </a>
                        <br/>
                    </xsl:for-each>
		            <xsl:for-each select="./dri:item/dri:field[@n='dc_coverage_physicalplace']">
                        <xsl:variable name="coverageText">
                            <xsl:copy-of select="./node()" />
                        </xsl:variable>
                        <a href="{concat(concat($context-path, '/browse?value='), concat(translate(url:encode($coverageText, 'UTF-8'), ' ', '+'), '&amp;type=coverage'))}" target="_blank">
                            <xsl:copy-of select="$coverageText"/>
                        </a>
                        <br/>
                    </xsl:for-each>
                </div>
            </xsl:if>

            <!--AUTOR -->
            <xsl:if test="./dri:item/dri:field[@n='dc_creator']">
                <div class="simple-item-view-authors item-page-field-wrapper table">
                    <h5><strong>Autor</strong></h5>
                    <xsl:for-each select="./dri:item/dri:field[@n='dc_creator']">
                        <xsl:variable name="authorText">
                            <xsl:copy-of select="./node()" />
                        </xsl:variable>
                        <a href="{concat(concat($context-path, '/browse?value='), concat(translate(url:encode($authorText, 'UTF-8'), ' ', '+'), '&amp;type=author'))}" target="_blank">
                            <xsl:copy-of select="$authorText"/>
                        </a>
                        <br/>
                    </xsl:for-each>
                </div>
            </xsl:if>

            <!-- FORMATO ORIGINAL --> 
            <xsl:if test="./dri:item/dri:field[@n='dc_format_origin']">
                <div class="simple-item-view-uri item-page-field-wrapper table">
                    <h5><strong>Formato original</strong></h5>
                    <span>
                        <xsl:for-each select="./dri:item/dri:field[@n='dc_format_origin']">
                            <xsl:copy-of select="./node()"/>
                            <br/>
                        </xsl:for-each>
                    </span>
                </div>
            </xsl:if>            

            <!-- SIGNATURA DIGITAL -->
            <xsl:if test="./dri:item/dri:field[@n='dc_identifier']">
                <div class="simple-item-view-uri item-page-field-wrapper table">
                    <h5><strong>Signatura digital</strong></h5>
                    <span>
                        <xsl:for-each select="./dri:item/dri:field[@n='dc_identifier']">
			    <xsl:value-of select="confman:getProperty('dspace.metadata.prefijo.signatura')" />
                            <xsl:copy-of select="./node()"/>
                            <br/>
                        </xsl:for-each>
                    </span>
                </div>
            </xsl:if>

            <!-- DESCRIPTORES -->
            <div id="divDescriptoresColeccion">
                <xsl:if test="./dri:item/dri:field[@n='dc_subject_function'] or ./dri:item/dri:field[@n='dc_contributor_ja'] or ./dri:item/dri:field[@n='dc_contributor_extern'] or ./dri:item/dri:field[@n='dc_contributor_institution'] and ./dri:item/dri:field[@n='dc_subject']">
                    <h5 class="verde"><strong>Descriptores: </strong></h5>
                </xsl:if>
                <xsl:if test="./dri:item/dri:field[@n='dc_subject_function']">
                    <div class="simple-item-view-uri item-page-field-wrapper table">
                        <h5><strong>Temático funcional</strong></h5>
                        <xsl:for-each select="./dri:item/dri:field[@n='dc_subject_function']">
                            <xsl:variable name="functionText">
                                <xsl:copy-of select="./node()" />
                            </xsl:variable>
                            <a href="{concat(concat($context-path, '/browse?value='), concat(translate(url:encode($functionText, 'UTF-8'), ' ', '+'), '&amp;type=function'))}" target="_blank">
                                <xsl:copy-of select="$functionText"/>
                            </a>
                            <br/>
                        </xsl:for-each>
                    </div>
                </xsl:if>
                <xsl:if test="./dri:item/dri:field[@n='dc_contributor_ja'] or ./dri:item/dri:field[@n='dc_contributor_extern']">
                    <div class="simple-item-view-uri item-page-field-wrapper table">
                        <h5><strong>Personas</strong></h5>
                        <xsl:for-each select="./dri:item/dri:field[@n='dc_contributor_ja']">
                            <xsl:variable name="contributorText">
                                <xsl:copy-of select="./node()" />
                            </xsl:variable>
                            <a href="{concat(concat($context-path, '/browse?value='), concat(translate(url:encode($contributorText, 'UTF-8'), ' ', '+'), '&amp;type=contributor'))}" target="_blank">
                                <xsl:copy-of select="$contributorText"/>
                            </a>
                            <br/>
                        </xsl:for-each>
                        <xsl:for-each select="./dri:item/dri:field[@n='dc_contributor_extern']">
                            <xsl:variable name="contributorText">
                                <xsl:copy-of select="./node()" />
                            </xsl:variable>
                            <a href="{concat(concat($context-path, '/browse?value='), concat(translate(url:encode($contributorText, 'UTF-8'), ' ', '+'), '&amp;type=contributor'))}" target="_blank">
                                <xsl:copy-of select="$contributorText"/>
                            </a>
                            <br/>
                        </xsl:for-each>
                    </div>
                </xsl:if>
                <xsl:if test="./dri:item/dri:field[@n='dc_contributor_institution']">
                    <div class="simple-item-view-uri item-page-field-wrapper table">
                        <h5><strong>Organismos</strong></h5>
                        <xsl:for-each select="./dri:item/dri:field[@n='dc_contributor_institution']">
                            <xsl:variable name="institutionText">
                                <xsl:copy-of select="./node()" />
                            </xsl:variable>
                            <a href="{concat(concat($context-path, '/browse?value='), concat(translate(url:encode($institutionText, 'UTF-8'), ' ', '+'), '&amp;type=institution'))}" target="_blank">
                                <xsl:copy-of select="$institutionText"/>
                            </a>
                            <br/>
                        </xsl:for-each>
                    </div>
                </xsl:if>
                <xsl:if test="./dri:item/dri:field[@n='dc_subject']">
                    <div class="simple-item-view-uri item-page-field-wrapper table">
                        <h5><strong>Materias</strong></h5>
                        <xsl:for-each select="./dri:item/dri:field[@n='dc_subject']">
                            <xsl:variable name="subjectText">
                                <xsl:copy-of select="./node()" />
                            </xsl:variable>
                            <a href="{concat(concat($context-path, '/browse?value='), concat(translate(url:encode($subjectText, 'UTF-8'), ' ', '+'), '&amp;type=subject'))}" target="_blank">
                                <xsl:copy-of select="$subjectText"/>
                            </a>
                            <br/>
                        </xsl:for-each>
                    </div>
                </xsl:if>
            </div>

        </div>
        
    </xsl:template>

    <!-- Currently the dri:meta element is not parsed directly. Instead, parts of it are referenced from inside
        other elements (like reference). The blank template below ends the execution of the meta branch -->
    <xsl:template match="dri:meta">
    </xsl:template>

    <!-- Meta's children: userMeta, pageMeta, objectMeta and repositoryMeta may or may not have templates of
        their own. This depends on the meta template implementation, which currently does not go this deep.
    <xsl:template match="dri:userMeta" />
    <xsl:template match="dri:pageMeta" />
    <xsl:template match="dri:objectMeta" />
    <xsl:template match="dri:repositoryMeta" />
    -->

    <xsl:template name="addJavascript">

        <script type="text/javascript">
        	<xsl:text>
                         if(typeof window.publication === 'undefined'){
                            window.publication={};
                          };
                        window.publication.contextPath= '</xsl:text><xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='contextPath'][not(@qualifier)]"/><xsl:text>';</xsl:text>
            <xsl:text>window.publication.themePath= '</xsl:text><xsl:value-of select="$theme-path"/><xsl:text>';</xsl:text>

        </script>
        <!--TODO concat & minify!-->

        <script>
            <xsl:text>if(!window.DSpace){window.DSpace={};}window.DSpace.context_path='</xsl:text><xsl:value-of select="$context-path"/><xsl:text>';window.DSpace.theme_path='</xsl:text><xsl:value-of select="$theme-path"/><xsl:text>';</xsl:text>
        </script>

        <!--inject scripts.html containing all the theme specific javascript references
        that can be minified and concatinated in to a single file or separate and untouched
        depending on whether or not the developer maven profile was active-->
        <xsl:variable name="scriptURL">
            <xsl:text>cocoon://themes/</xsl:text>
            <!--we can't use $theme-path, because that contains the context path,
            and cocoon:// urls don't need the context path-->
            <xsl:value-of select="$pagemeta/dri:metadata[@element='theme'][@qualifier='path']"/>
            <xsl:text>scripts-dist.xml</xsl:text>
        </xsl:variable>
        <xsl:for-each select="document($scriptURL)/scripts/script">
            <script src="{$theme-path}{@src}">&#160;</script>
        </xsl:for-each>

        <!-- Add javascript specified in DRI -->
        <xsl:for-each select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='javascript'][not(@qualifier)]">
            <script>
                <xsl:attribute name="src">
                    <xsl:value-of select="$theme-path"/>
                    <xsl:value-of select="."/>
                </xsl:attribute>&#160;</script>
        </xsl:for-each>

        <!-- add "shared" javascript from static, path is relative to webapp root-->
        <xsl:for-each select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='javascript'][@qualifier='static']">
            <!--This is a dirty way of keeping the scriptaculous stuff from choice-support
            out of our theme without modifying the administrative and submission sitemaps.
            This is obviously not ideal, but adding those scripts in those sitemaps is far
            from ideal as well-->
            <xsl:choose>
                <xsl:when test="text() = 'static/js/choice-support.js'">
                    <script>
                        <xsl:attribute name="src">
                            <xsl:value-of select="$theme-path"/>
                            <xsl:text>js/choice-support.js</xsl:text>
                        </xsl:attribute>&#160;</script>
                </xsl:when>
                <xsl:when test="not(starts-with(text(), 'static/js/scriptaculous'))">
                    <script>
                        <xsl:attribute name="src">
                            <xsl:value-of
                                    select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='contextPath'][not(@qualifier)]"/>
                            <xsl:text>/</xsl:text>
                            <xsl:value-of select="."/>
                        </xsl:attribute>&#160;</script>
                </xsl:when>
            </xsl:choose>
        </xsl:for-each>

        <!-- add setup JS code if this is a choices lookup page -->
        <xsl:if test="dri:body/dri:div[@n='lookup']">
            <xsl:call-template name="choiceLookupPopUpSetup"/>
        </xsl:if>

        <xsl:call-template name="addJavascript-google-analytics" />
    </xsl:template>

    <xsl:template name="addJavascript-google-analytics">
        <!-- Add a google analytics script if the key is present -->
        <xsl:if test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='google'][@qualifier='analytics']">
            <script><xsl:text>
                (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
                (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
                m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
                })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

                ga('create', '</xsl:text><xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='google'][@qualifier='analytics']"/><xsl:text>', '</xsl:text><xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='serverName']"/><xsl:text>');
                ga('send', 'pageview');
            </xsl:text></script>
        </xsl:if>
    </xsl:template>

    <!--The Language Selection
        Uses a page metadata curRequestURI which was introduced by in /xmlui-mirage2/src/main/webapp/themes/Mirage2/sitemap.xmap-->
    <xsl:template name="languageSelection">
        <xsl:variable name="curRequestURI">
            <xsl:value-of select="substring-after(/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='curRequestURI'],/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='URI'])"/>
        </xsl:variable>

        <xsl:if test="count(/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='page'][@qualifier='supportedLocale']) &gt; 1">
            <li id="ds-language-selection" class="dropdown">
                <xsl:variable name="active-locale" select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='page'][@qualifier='currentLocale']"/>
                <a id="language-dropdown-toggle" href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">
                    <span class="hidden-xs">
                        <xsl:value-of
                                select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='supportedLocale'][@qualifier=$active-locale]"/>
                        <xsl:text>&#160;</xsl:text>
                        <b class="caret"/>
                    </span>
                </a>
                <ul class="dropdown-menu pull-right" role="menu" aria-labelledby="language-dropdown-toggle" data-no-collapse="true">
                    <xsl:for-each
                            select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='page'][@qualifier='supportedLocale']">
                        <xsl:variable name="locale" select="."/>
                        <li role="presentation">
                            <xsl:if test="$locale = $active-locale">
                                <xsl:attribute name="class">
                                    <xsl:text>disabled</xsl:text>
                                </xsl:attribute>
                            </xsl:if>
                            <a>
                                <xsl:attribute name="href">
                                    <xsl:value-of select="$curRequestURI"/>
                                    <xsl:call-template name="getLanguageURL"/>
                                    <xsl:value-of select="$locale"/>
                                </xsl:attribute>
                                <xsl:value-of
                                        select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='supportedLocale'][@qualifier=$locale]"/>
                            </a>
                        </li>
                    </xsl:for-each>
                </ul>
            </li>
        </xsl:if>
    </xsl:template>

    <!-- Builds the Query String part of the language URL. If there already is an existing query string
like: ?filtertype=subject&filter_relational_operator=equals&filter=keyword1 it appends the locale parameter with the ampersand (&) symbol -->
    <xsl:template name="getLanguageURL">
        <xsl:variable name="queryString" select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='queryString']"/>
        <xsl:choose>
            <!-- There allready is a query string so append it and the language argument -->
            <xsl:when test="$queryString != ''">
                <xsl:text>?</xsl:text>
                <xsl:choose>
                    <xsl:when test="contains($queryString, '&amp;locale-attribute')">
                        <xsl:value-of select="substring-before($queryString, '&amp;locale-attribute')"/>
                        <xsl:text>&amp;locale-attribute=</xsl:text>
                    </xsl:when>
                    <!-- the query string is only the locale-attribute so remove it to append the correct one -->
                    <xsl:when test="starts-with($queryString, 'locale-attribute')">
                        <xsl:text>locale-attribute=</xsl:text>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="$queryString"/>
                        <xsl:text>&amp;locale-attribute=</xsl:text>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>?locale-attribute=</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

</xsl:stylesheet>
