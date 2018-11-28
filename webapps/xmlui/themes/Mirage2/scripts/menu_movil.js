
$(function(){
	$("#menu_btn").bind("click",function(){
		if($("#menu").css("display")=="none"){
			$("#menu_btn").addClass("on");
			$("#menu").stop();
			$("#menu").slideDown(200)
		}else{
			$("#menu_btn").removeClass("on");
			$("#menu").stop();
			$("#menu").slideUp(200)
		}
	});
	$(document).ready(function(){
		if($("#menu_btn").hasClass("on")){
			$("#menu").stop();
			$("#menu").show()
		}
	});
	$(window).resize(function(){
		var a=window.innerWidth;
		if(a>959){
			$("#menu_btn").addClass("on");
			$("#menu").css("display","block")
		}
	})
});