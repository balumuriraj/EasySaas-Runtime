<%@ include file="header.jsp"%>
	<div class="wrap">

		<section class="login">
				<div class="row">
					<div class="loginbox">
						<h2>
							<strong>Login</strong>
						</h2>
						<hr>
						<form:form method="post" modelAttribute="user" action="Home">
							<p style="color: #555;">
								<form:input path="username" class="inputbox" id="login"
									placeholder="username" /> 
							</p>
							<p style="color: #555;">
								<form:input path="password" class="inputbox" id="login"
									placeholder="password" type="password" />
							</p>
							<c:if test="${not empty error}">
								<p class="dberrors">${error}</p>
							</c:if>

							<br>
							<input type="submit" id="submit"
								style="text-decoration: none; display: none;" />
							<a href="#" class="bttn"
								onclick="document.getElementById('submit').click()"
								style="text-decoration: none;"><span class="icon-checkmark"></span>
								Login</a>
							<a href="${pageContext.request.contextPath}" class="bttn" style="text-decoration: none;"><span
								class="icon-x"></span> Cancel</a>
						</form:form>
					</div>
				</div>
		</section>

	</div>
	<script src="<spring:url value="/resources/js/jquery-1.9.1.min.js" />"></script>
	<script src="<spring:url value="/resources/js/bootstrap.min.js" />"></script>
	<script type="text/javascript">
		$(window).resize(function() {
			$('.login').css({
				position : 'absolute',
				left : ($(window).width() - $('.login').outerWidth()) / 2,
				top : ($(window).height() - $('.login').outerHeight()) / 2
			});
		});

		// To initially run the function:
		$(window).resize();
	</script>
<%@ include file="footer.jsp"%>