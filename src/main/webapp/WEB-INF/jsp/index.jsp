<%@ include file="header.jsp"%>

<div class="container page">
	<div class="title">
		<h1>
			<strong>ASU EasySaaS Runtime Application</strong>
		</h1>
		<br>
	</div>
	<div class="row">
		<div style="padding:2em; background:#47a3da; color:white;">
			<p>ASU Easy SaaS is an application which is based on the idea of
				Easy SaaS Runtime concept. Execution of infrastructure with key
				supporting services are included in the EasySaaS runtime. It is an
				event-driven and data-centric architecture. Execution is driven by
				the events and executions are dependent on data. The Easy SaaS
				runtime idea covers the following important points.</p>
			<ul>
				<li>User of tenant interacts with the access control service for
					authentication.</li>
				<li>Both the user and the tenant profiles are retrieved and
					verified.</li>
				<li>Tenants publish the requirements which are well defined
					templates.</li>
				<li>Requests are distributed by the scheduling services using
					the BRTree index algorithm based on the problem description and
					tenant profiles.</li>
				<li>Now the service providers will take up the request, create
					an application.</li>
				<li>After creation, he tests the application with the test cases
					given by the user.</li>
				<li>If the tests are passed then the application url will be
					sent to the user.</li>
				<li>Then the application data will be populated in the browser
					based on the user logged in.</li>
			</ul>
		</div>
		<div class="row" style="padding:1em 1em 0 1em;">
			<div class="col-sm-4" style="padding:2em; background:orange; color:white">
				<strong>Group 16</strong>
				<ul>
					<li>Aniket Patil</li>
					<li>MohanRaj Balumuri</li>
					<li>Priyanka Rupani</li>
				</ul>
			</div>
			<div class="col-sm-4" style="padding:2.5em; text-align:center; font-size:1.5em;">
				<strong>Developed by</strong>
			</div>
			<div class="col-sm-4" style="padding:2em; background:#FC4457; color:white">
				<strong>Group 24</strong>
				<ul>
					<li>Ramya Meruva</li>
					<li>Sai Harinya Turaga</li>
					<li>Tejaswini Kantheti</li>
				</ul>
			</div>
		</div>
		<hr>
		<p style="text-align:center;"> <a href="Login" class="bttn btn-primary">click here to login</a></p>
	</div>
</div>

<%@ include file="footer.jsp"%>