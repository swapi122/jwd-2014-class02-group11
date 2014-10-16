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

	<!-- toàn bộ khung vẽ ở đây -->
	<section id="rappid-docs">
	<link rel="stylesheet" href="./css/joint.all.min.css">

	<script src="./js/joint.all.min.js"></script> <script
		src="./js/snaplines-style.js"></script> <script
		src="./js/commandManager-create.js"></script>

	<div>
		<div id="btn-gr">
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
			<div id="inspector-holder-create">
					<div class="inspector">
						<div class="group" data-name="labels">
							<h3 class="group-label">Labels</h3>
							
							</div>
						</div>
						<div class="group" data-name="text">
							<h3 class="group-label">Text</h3>
							<div class="field" data-field="attrs/text/text">
								<label>Text:</label>
								<textarea class="textarea" data-type="textarea"
									data-attribute="attrs/text/text">rect</textarea>
							</div>
							<div class="field" data-field="attrs/text/font-size">
								<form
									onchange="$(this).find(&#39;output&#39;).text(range.value)">
									<label>Font size: (<output>14</output>)
									</label> <input type="range" class="range" name="range"
										data-type="range" data-attribute="attrs/text/font-size"
										min="5" max="30" step="" value="14">
								</form>
							</div>
						</div>
						<div class="group" data-name="position">
							<h3 class="group-label">Position</h3>
							<div class="field" data-field="position/x">
								<label>position/x:</label> <input type="number" class="number"
									data-type="number" data-attribute="position/x" min="" max=""
									step="" value="50">
							</div>
							<div class="field" data-field="position/y">
								<label>position/y:</label> <input type="number" class="number"
									data-type="number" data-attribute="position/y" min="" max=""
									step="" value="50">
							</div>
						</div>
					</div>
				</div>
		</div>
		<link rel="stylesheet" href="./css/style1.css">
		<link rel="stylesheet" href="./css/stencil-groups.css" />
		<link rel="stylesheet" href="./css/inspector-create.css">
			

		<script src="./js/stencil-groups.js"></script>


	</div>
	</section>
</body>
</html>