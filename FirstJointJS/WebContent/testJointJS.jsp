<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<title>JointJS Test</title>


</head>
<body>
	<header> <nav>
	<a>JointJS test by Group 11 - Class02 - JWD</a></nav> </header>

	<!-- toàn bộ khung vẽ ở đây -->
	<section id="rappid-docs">
	<link rel="stylesheet" href="./css/joint.all.min.css">
	
	<script src="./js/joint.all.min.js"></script>
	<script src="./js/snaplines-style.js"></script>
	<script src="./js/commandManager-create.js"></script>

	<div>
	<div id ="btn-gr">
	<button class="btn" id="btn-reset">reset</button>
	<button class="btn" id="btn-undo">undo</button>
    <button class="btn" id="btn-redo">redo</button>
	<button class="btn" id="btn-layout">layout</button>
    <button class="btn" id="btn-center-content">center content</button>
    <button class="btn" id="btn-zoomout">zoom out</button>
    <button class="btn" id="btn-zoomin">zoom in</button>
    <button class="btn" id="btn-zoomtofit">zoom to fit</button>
    </div>
		<div class="docs-demo">
			<div id="stencil-holder-groups">
				<div class="stencil">
					<div class="stencil-paper-drag"></div>
					<div class="content">
						<div class="group" data-name="simple"></div>
					</div>
				</div>
			</div>

		<div id="paper-holder-groups" class="paper"></div>
		</div>
		<link rel="stylesheet" href="./css/style1.css">
		<link rel="stylesheet" href="./css/stencil-groups.css" />
		
		
		<script src="./js/stencil-groups.js"></script>
		

	</div>
	</section>
</body>
</html>