<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
</head>
<script type="text/javascript">
	var currentIndex = 0;
	var currentId = "camera";
	$(document).ready(function() {
		$("#nav").ferroMenu({
			position 	: "left-center",
			delay 		: 50,
			rotation 	: 720,
			margin		: 20
		});
	});
	
	var colors = {
			"camera" : {
				"background" : "#D06503",
				"index" : 0
			},
			"user" : {
				"background" : "#6884EA",
				"index" : 1
			},
			"mapmarker" : {
				"background" : "#1691BE",
				"index" : 2
			},
			"music" : {
				"background" : "#166BA2",
				"index" : 3
			},
			"commentalt" : {
				"background" : "#1B3647",
				"index" : 4
			},
			"moon" : {
				"background" : "#152836",
				"index" : 5
			}
			
	};
	
	function goTo(id){
		var obj = eval("colors."+id);
		
		$("body").css("background",obj.background);
		$("#ferromenu-controller,#nav li a").css("color",obj.background);
		if(obj.index > currentIndex){
			$(".active").addClass("off");
			$(".active").transition({
				x : -100,
				opacity : 0,
				zIndex : 0
			},600);
			
			$("#"+currentId).removeClass("active");
			
			$("#"+id).addClass("active");
			$("#"+id).transition({
				x : 400
			},0,function(){
				$("#"+id).removeClass("off");
				$("#"+id).transition({
					x : 0,
					opacity : 1,
					zIndex : 2
				},600);
			});
		}else if(obj.index < currentIndex){
			$(".active").addClass("off");
			$(".active").transition({
				x : 100,
				opacity : 0,
				zIndex : 0
			},600);
			$("#"+currentId).removeClass("active");
			
			
			$("#"+id).addClass("active");
			$("#"+id).transition({
				x : -400
			},0,function(){
				$("#"+id).removeClass("off");
				$("#"+id).transition({
					x : 0,
					opacity : 1,
					zIndex : 2
				},600);
			});
		}
		currentIndex = obj.index;
		currentId = id;
		
	}
</script>
<body>
	<ul id="nav">
		<li><a href="javascript:goTo('camera');"><i class="icon-camera"></i></a></li>
		<li><a href="javascript:goTo('user');"><i class="icon-user"></i></a></li>
		<li><a href="javascript:goTo('mapmarker');"><i class="icon-map-marker"></i></a></li>
		<li><a href="javascript:goTo('music');"><i class="icon-music"></i></a></li>
		<li><a href="javascript:goTo('commentalt');"><i class="icon-comment-alt"></i></a></li>
		<li><a href="javascript:goTo('moon');"><i class="icon-moon"></i></a></li>
	</ul>
</body>
</html>
