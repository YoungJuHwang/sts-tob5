<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!doctype html>
<html lang="en">

	
<head>
   <meta charset="UTF-8" />
      <title>TOB</title>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
   	
</head>
<body>
	<div id="wrap">
		<div id="header">
			<tiles:insertAttribute name="header" />
		</div>
		<div id="content">
			<section class="sectionClass">
				<div class="mainView">
					<tiles:insertAttribute name="content" />
				</div>
			</section>
		</div>
		<div id="footer">
			<tiles:insertAttribute name="footer" />
		</div>
	</div>
<script src="${js}/purchase.js"></script> 
<script src="${js}/cart.js"></script> 
<script src="${js}/Book.js"></script>
<script src="${js}/event.js"></script>
<script src="${js}/member.js"></script>
<!-- Scripts -->
	<script src="${normal}/js2/jquery-1.11.1.min.js"></script>
	<script src="${normal}/js2/owl.carousel.min.js"></script>
	<script src="${normal}/js2/bootstrap.min.js"></script>
	<script src="${normal}/js2/wow.min.js"></script>
	<script src="${normal}/js2/typewriter.js"></script>
	<script src="${normal}/js2/jquery.onepagenav.js"></script>
	<script src="${normal}/js2/main.js"></script>
   <!-- Normalize -->
	
</body>
</html>
