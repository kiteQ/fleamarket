<html>
<head>
<title>Produkte</title>
<meta name="layout" content="kickstart" />
<g:set var="layout_nomainmenu" value="${true}" scope="request" />
<g:set var="layout_nosecondarymenu" value="${true}" scope="request" />
</head>

<body>

	<div class="page-header">

		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<fieldset>
			<legend>
				<h1>
					Produkte <small>Mode</small>
				</h1>
			</legend>
			<ul class="thumbnails">
			<g:each in="${productInstanceList}" status="i" var="product">
			<li class="span4">
					<div class="thumbnail">
						<img data-src="holder.js/360x270" alt="">
						<h3>${product.name}</h3>
						<p>${product.categories.name}</p>
						<p><a href="#" class="btn btn-primary">Action</a> <a href="#" class="btn">Action</a></p>
					</div>
				</li>
			</g:each>
			</ul>	

		</fieldset>

	</div>


</body>

</html>
