<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!doctype html>
<html lang="en">
<head>
   <meta charset="UTF-8" />
      <title>TOB</title>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
   
   <link rel="stylesheet" href="${css}/book.css" />
   <link rel="stylesheet" href="${css}/event.css" />
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
</body>
</html>
