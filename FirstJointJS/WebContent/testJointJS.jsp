<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<title>JointJS Test</title>


</head>
<body>
	<header> <nav> <a>JointJS test by Group 11 - Class02
		- JWD</a></nav> </header>

	<!-- TOAN BO KHUNG VE O DAY -->
	<section id="rappid-docs">
	<link rel="stylesheet" href="./css/joint.all.min.css">
	<script src="./js/joint.all.min.js"></script>

	<div>
		<!--GROUP CAC BUTTON  -->
		<div id="btn-gr">
			<label>Snaplines</label><input type="checkbox" id="switch" checked />
			<button class="btn" id="btn-reset">Reset</button>
			<button class="btn" id="btn-undo">Undo</button>
			<button class="btn" id="btn-redo">Redo</button>
			<button class="btn" id="btn-layout3">Layout</button>
			<button class="btn" id="btn-center-content">Center content</button>
			<button class="btn" id="btn-zoomout">Zoom out</button>
			<button class="btn" id="btn-zoomin">Zoom in</button>
			<button class="btn" id="btn-zoomtofit">Zoom to fit</button>
			<button class="btn" id="btn-open-svg">Save as SVG</button>
			<button class="btn" id="btn-open-png">Save as PNG</button>
			<button class="btn" id="btn-open-jpg">Save as JPG</button>
			<button class="btn" id="btn-print">Print</button>
		</div>
		<div class="docs-demo">
			<div id="stencil-holder-groups">
				<div class="stencil">
					
					<div class="content">
						<div class="group" data-name="rectgr"></div>
						<div class="group" data-name="diamondgr"></div>
						<div class="group" data-name="circlegr"></div>
						<div class="group" data-name="othergr"></div>
					</div>
				</div>
			</div>
			<div id="paper-holder-groups" class="paper"></div>
			<div id="inspector-holder-create"></div>
		</div>
		<link rel="stylesheet" href="./css/style1.css">
		
		<script src="./js/stencil-groups.js"></script>
	</div>
	</section>
</body>
</html>