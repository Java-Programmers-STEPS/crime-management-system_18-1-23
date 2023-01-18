<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Insert title here</title>
</head>
<style>
* {
	margin: 0;
	padding: 0;
	outline: none;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
}

body {
	height: 100vh;
	width: 100%;
	background: linear-gradient(115deg, #56d8e4 10%, #9f01ea 90%);
}

.show-btn {
	background: #fff;
	padding: 10px 20px;
	font-size: 20px;
	font-weight: 500;
	color: #3498db;
	cursor: pointer;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
}

.show-btn, .container {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

input[type="checkbox"] {
	display: none;
}

container {
	display: none;
	background: #fff;
	width: 410px;
	padding: 30px;
	box-shadow: 0 0 8px rgba(0, 0, 0, 0.1);
}

#show:checked ~ .container {
	display: block;
}

.container .close-btn {
	position: absolute;
	right: 20px;
	top: 15px;
	font-size: 18px;
	cursor: pointer;
}

.container .close-btn:hover {
	color: #3498db;
}

.container .text {
	font-size: 35px;
	font-weight: 600;
	text-align: center;
}

.container form {
	margin-top: -20px;
}

.container form .data {
	height: 45px;
	width: 100%;
	margin: 40px 0;
}

form .data label {
	font-size: 18px;
}

form .data input {
	height: 100%;
	width: 100%;
	padding-left: 10px;
	font-size: 17px;
	border: 1px solid silver;
}

form .data input:focus {
	border-color: #3498db;
	border-bottom-width: 2px;
}

form .forgot-pass {
	margin-top: -8px;
}

form .forgot-pass a {
	color: #3498db;
	text-decoration: none;
}

form .forgot-pass a:hover {
	text-decoration: underline;
}

form .btn {
	margin: 30px 0;
	height: 45px;
	width: 100%;
	position: relative;
	overflow: hidden;
}

form .btn .inner {
	height: 100%;
	width: 300%;
	position: absolute;
	left: -100%;
	z-index: -1;
	background: -webkit-linear-gradient(right, #56d8e4, #9f01ea, #56d8e4, #9f01ea);
	transition: all 0.4s;
}

form .btn:hover .inner {
	left: 0;
}

form .btn button {
	height: 100%;
	width: 100%;
	background: none;
	border: none;
	color: #fff;
	font-size: 18px;
	font-weight: 500;
	text-transform: uppercase;
	letter-spacing: 1px;
	cursor: pointer;
}

form .signup-link {
	text-align: center;
}

form .signup-link a {
	color: #3498db;
	text-decoration: none;
}

form .signup-link a:hover {
	text-decoration: underline;
}
</style>
<script type="text/javascript">
	function loginvalidation() {
		var email = document.getElementById("emailorphone").value;
		var pwd = document.getElementById("password").value;
		var emailpattern = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
		var pwdpattern = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*()-])/;//password

		if (email == '') {
			alert('Please enter your user email id');
			emailorphone.focus();

			return false;
		}

		if (!emailpattern.test(email)) {
			alert('Invalid email');
			emailorphone.focus();

			return false;

		}
		else if (pwd == '') {
			alert('Please enter Password');
			password.focus();
			return false;
		}
		else if (!pwdpattern.test(pwd)) {
			alert('Upper case, Lower case, Special character and Numeric letter are required in Password filed');
			password.focus();

			return false;

		}

		return true;

	}
</script>

<body>

	<div class="center">

		<div class="container">
			<label for="show" class="close-btn fas fa-times" title="close"></label>
			<div class="text">Login Here</div>
			<form action="login.jsp" method="post"
				onsubmit="return loginvalidation()">
				<div class="data">
					<label>Email or Phone Number</label> <input type="text"
						name="emailorphone" id="emailorphone"
						placeholder="Enter your Email or Phone Number">
				</div>
				<div class="data">
					<label>Password</label> <input type="password" id="password"
						name="password" placeholder="Enter your password">
				</div>
				<div class="forgot-pass">
					<a href="#" style="color: yellow; margin-top: 10px;">Forgot
						Password?</a>
				</div>
				<div class="btn">
					<div class="inner"></div>
					<button type="submit">login</button>
				</div>
				<div class="signup-link">
					Not a member? <a href="Registration.html" style="color: yellow;">Sign
						up now</a>
				</div>
			</form>
		</div>
	</div>





</body>
</html>