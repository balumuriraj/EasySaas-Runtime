<%@ include file="header.jsp"%>
	<div class="wrap">

		<section class="login">
			<div class="animated fadeInDown">
				<div class="row">
					<div class="loginbox">
						<span class="icon icon-user3 icon-effect"></span>

						<h2>
							<strong>Login</strong>
						</h2>
						<hr>
						<form:form method="post" modelAttribute="user" action="Home">
							<p>
								<form:input path="name" class="inputbox" id="login"
									placeholder="username" /> 
							</p>
							<p>
								<form:input path="password" class="inputbox" id="login"
									placeholder="password" />
							</p>

							<br>
							<input type="submit" id="submit"
								style="text-decoration: none; display: none;" />
							<a href="#" class="bttn"
								onclick="document.getElementById('submit').click()"
								style="text-decoration: none;"><span class="icon-checkmark"></span>
								Login</a>
							<a href="login" class="bttn" style="text-decoration: none;"><span
								class="icon-x"></span> Cancel</a>
						</form:form>
					</div>
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