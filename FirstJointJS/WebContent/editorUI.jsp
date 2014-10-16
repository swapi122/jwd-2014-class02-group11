<!DOCTYPE html>
<!-- saved from url=(0047)http://www.jointjs.com/rappid/docs/ui/inspector -->
<html>
<head>

<link rel="stylesheet" href="./css/style2.css">

<title>Rappid toolkit - Documentation</title>

</head>
<body>
	<header>
		<nav></nav>
	</header>


	<section id="rappid-docs">

		<link rel="stylesheet" href="./css/joint.all.min.css">
		<script src="./js/joint.all.min.js"></script>

		<div class="content-container">
			<div class="docs-demo">
				<div id="paper-holder-create" class="paper">
					
				</div>
				<div id="inspector-holder-create">
					<div class="inspector">
						<div class="group" data-name="mydata">
							<h3 class="group-label">My Data</h3>
							<div class="field" data-field="myproperty">
								<label>myproperty:</label> <input type="number" class="number"
									data-type="number" data-attribute="myproperty" min="" max=""
									step="" value="5">
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
			<link rel="stylesheet" href="./css/inspector-create.css">
			<script src="./js/inspector-create.js"></script>
</div>
	</section>

</body>
</html>