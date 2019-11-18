function initializeStreetView() {
  bryantPark = new google.maps.LatLng(0,0);
  panoramaOptions = {
    position: bryantPark,
    pov: {
      heading: 165,
      pitch: 0
    },
    zoom: 1
  };
  myPano = new google.maps.StreetViewPanorama(
      document.getElementById('streetview-canvas'),
      panoramaOptions);
  sv = new google.maps.StreetViewService();
}

google.maps.event.addDomListener(window, 'load', initializeStreetView);


function closeStreetView(){
	document.getElementById("streetview-canvas").style.visibility = "hidden";
	myPano.setVisible(false);
}

Mapea.Control.StreetViewCDAU = OpenLayers.Class(OpenLayers.Control, {
    
		lastActiveControl: null,
		displayClass: "streetViewControl",
		id: "streetViewControl",
	/**
	    * Constructor: Mapea.Control.GetLayersInfo
	    *
	    * Parameters:
	    * options - {Object} An optional object whose properties will be set on
	    *                    the control
	    * requestFormat - {String} Format of the expected server response
	    *
	    */
	    initialize: function(options) {
	        this.handlers = {};
	        OpenLayers.Control.prototype.initialize.apply(this, [options]);
	        if (!Mapea.Util.isMobile) {
	        	this.handler = new OpenLayers.Handler.Click(this, {click: this.openStreetView});
	        }else{
	        	this.handler = new OpenLayers.Handler.Click(this, {click: this.openStreetView});
	        }
	        
	    },
	    
	    openStreetView: function (evt){
	    	
	        if (evt.clientX && evt.clientY) {
	            // gets the x and y of the event
	            var pixelX = this.handler.evt.xy.x;
	            var pixelY = this.handler.evt.xy.y;

	            var previousPopupPixel = Mapea.Util.getPopupInPixelXY(this.map, pixelX, pixelY, Mapea.Control.GetLayersInfo.SHOW_INFO_BUFFER);
	            if (previousPopupPixel) {
	                this.previousPoup = previousPopupPixel;
	            }
	            var lonlat = map.getLonLatFromPixel(new OpenLayers.Pixel(pixelX,pixelY));
	            var point = new OpenLayers.Geometry.Point(lonlat.lon,lonlat.lat);
	            var newPoint = OpenLayers.Projection.transform(point,map.projection,new OpenLayers.Projection("EPSG:4326"));
	            var newPointGoogle = new google.maps.LatLng(newPoint.y,newPoint.x);
	            var t = sv.getPanoramaByLocation(newPointGoogle, 50, processSVData);
	  		  	this.deactivate();
		  		if (this.lastActiveControl != null) {
		  			this.lastActiveControl.activate();
				}
	        }
	    },
	    
	    activate: function() {
	    	this.lastActiveControl = getLastActiveControl();
	    	if (this.lastActiveControl != null) {
	    		this.lastActiveControl.deactivate();
	    	}
	    	if (!this.active) {
	    		initializeStreetView();
		    	//Desactiva touchcontrol si es version movil
	            if (Mapea.Util.isMobile) {
		    		var touchcontrols = map.getControlsByClass('Mapea.Control.TouchNavigation');
		    		for (var i=0;i<touchcontrols.length;i++){
		    			if (touchcontrols[i].active){
		    				touchcontrols[i].deactivate();
		    			}
		    		}
	            }
	    	   	return OpenLayers.Control.prototype.activate.apply(this, arguments);
	    	}else{
	    		return this.deactivate();
	    	}
	    	
	    },
	    
	    deactivate: function() {
	    	//Activa touchcontrol si es version movil
	        if (Mapea.Util.isMobile) {
	    		var touchcontrols = map.getControlsByClass('Mapea.Control.TouchNavigation');
	    		for (var i=0;i<touchcontrols.length;i++){
	    			if (!touchcontrols[i].active){
	    				touchcontrols[i].activate();
	    			}
	    		}
	        }
	    	return OpenLayers.Control.prototype.deactivate.apply(this, arguments);
	    },
	    
	    CLASS_NAME: "Mapea.Control.StreetViewCDAU"
});

function createSViewPanel(sView, map) {
	$('.streetViewControl').draggable({helper: 'clone',
	      start: function() {
		    	$('.streetViewControl').css("background-image", "url(javascriptVisor/Mapea/theme/cdau/images/streetview-des.png)");  
	      },
	      stop: function(e) {
	    	  sView.openStreetView(e);
	    	  $('.streetViewControl').css("background-image", "url(javascriptVisor/Mapea/theme/cdau/images/streetview.png)");
	        },
	      helper: function( event ) {
	          return $( "<div class='streetViewControlSel'></div>" );
	        }
	});
    map.addControl(sView);
    map.div.childNodes[0].appendChild($('.streetViewControl')[0]);
}

function getLastActiveControl(){
	var panelList =	map.getControlsByClass("OpenLayers.Control.Panel");
	var controlActive = null;
	for ( var j = 0, pLen = panelList.length; j < pLen; j++) {
		var currPanel = panelList[j];
		for ( var i = 0, len = currPanel.controls.length; i < len; i++) {
			if (currPanel.controls[i].active) {
				controlActive = currPanel.controls[i];
			}
		}
	}
	if (controlActive == null){
		var navToolbarPanel = map.getControlsByClass("Mapea.Control.NavToolbar");
		for ( var j = 0, pLen = navToolbarPanel.length; j < pLen; j++) {
			var currPanel = navToolbarPanel[j];
			for ( var i = 0, len = currPanel.controls.length; i < len; i++) {
				if (currPanel.controls[i].active) {
					controlActive = currPanel.controls[i];
				}
			}
		}
	}
	return controlActive;
}
function processSVData(data, status) {
	  if (status == google.maps.StreetViewStatus.OK) {
		  myPano.setPosition(data.location.latLng);
		  var dialogHeightRatio = (Mapea.Util.isMobile? 100 : 88);
		  var posTop = (Mapea.Util.isMobile? 0 : 98);
		  var dialogWidth = jQuery(window).width();
		  document.getElementById("streetview-canvas").style.visibility = "visible";
		  document.getElementById("streetview-canvas").style.position = "absolute";
		  document.getElementById("streetview-canvas").style.width= "100%";
		  document.getElementById("streetview-canvas").style.height = dialogHeightRatio + "%";
		  document.getElementById("streetview-canvas").style.top = posTop + "px";
		  myPano.setVisible(true);
	  }else{
		  Mapea.Util.showInfoMessage("No hay ninguna vista disponible en la zona seleccionada");
	  }
}
