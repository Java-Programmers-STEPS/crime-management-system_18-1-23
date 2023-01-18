<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Complaint Details</title>
<style>
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins',sans-serif;
}
body{
  height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 10px;
  background: linear-gradient(135deg, #71b7e6, #9b59b6);
}
.container{
  max-width: 700px;
  width: 100%;
  background-color: #fff;
  padding: 25px 30px;
  border-radius: 5px;
  box-shadow: 0 5px 10px rgba(0,0,0,0.15);
}
.container .title{
  font-size: 25px;
  font-weight: 500;
  position: relative;
}
.container .title::before{
  content: "";
  position: absolute;
  left: 0;
  bottom: 0;
  height: 3px;
  width: 30px;
  border-radius: 5px;
  background: linear-gradient(135deg, #71b7e6, #9b59b6);
}
.content form .user-details{
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  margin: 20px 0 12px 0;
}
form .user-details .input-box{
  margin-bottom: 15px;
  width: calc(100% / 2 - 20px);
}
form .input-box span.details{
  display: block;
  font-weight: 500;
  margin-bottom: 5px;
}
.user-details .input-box input{
  height: 45px;
  width: 100%;
  outline: none;
  font-size: 16px;
  border-radius: 5px;
  padding-left: 15px;
  border: 1px solid #ccc;
  border-bottom-width: 2px;
  transition: all 0.3s ease;
}
.user-details .input-box select{
  height: 45px;
  width: 100%;
  outline: none;
  font-size: 16px;
  border-radius: 5px;
  padding-left: 15px;
  border: 1px solid #ccc;
  border-bottom-width: 2px;
  transition: all 0.3s ease;
}
.user-details .input-box input:focus,
.user-details .input-box input:valid{
  border-color: #9b59b6;
}
 form .gender-details .gender-title{
  font-size: 20px;
  font-weight: 500;
 }
 form .category{
   display: flex;
   width: 80%;
   margin: 14px 0 ;
   justify-content: space-between;
 }
 form .category label{
   display: flex;
   align-items: center;
   cursor: pointer;
 }
 form .category label .dot{
  height: 18px;
  width: 18px;
  border-radius: 50%;
  margin-right: 10px;
  background: #d9d9d9;
  border: 5px solid transparent;
  transition: all 0.3s ease;
}
 #dot-1:checked ~ .category label .one,
 #dot-2:checked ~ .category label .two,
 #dot-3:checked ~ .category label .three{
   background: #9b59b6;
   border-color: #d9d9d9;
 }
 form input[type="radio"]{
   display: none;
 }
 form .button{
   height: 45px;
   margin: 35px 0
 }
 form .button input{
   height: 100%;
   width: 100%;
   border-radius: 5px;
   border: none;
   color: #fff;
   font-size: 18px;
   font-weight: 500;
   letter-spacing: 1px;
   cursor: pointer;
   transition: all 0.3s ease;
   background: linear-gradient(135deg, #71b7e6, #9b59b6);
 }
 form .button input:hover{
  /* transform: scale(0.99); */
  background: linear-gradient(-135deg, #71b7e6, #9b59b6);
  }
 @media(max-width: 584px){
 .container{
  max-width: 100%;
}
form .user-details .input-box{
    margin-bottom: 15px;
    width: 100%;
  }
  form .category{
    width: 100%;
  }
  .content form .user-details{
    max-height: 300px;
    overflow-y: scroll;
  }
  .user-details::-webkit-scrollbar{
    width: 5px;
  }
  }
  @media(max-width: 459px){
  .container .content .category{
    flex-direction: column;
  }
}

</style>
<script type="text/javascript" >
        function comvalidation() {
        	
        	var name = document.getElementById("petitionername").value
    		var letters = /^[a-zA-Z]+[a-zA-Z]+$/;
        	
            var add=document.getElementById("address").value
            var addletters=/^[a-zA-Z0-9\s\,\''\-]*$/;
        	
            var com=document.getElementById("complaintdetails").value
            var comletters=/^[a-zA-Z0-9\s\,\''\-]*$/;
            
            var ph=document.getElementById("phone").value
            var phnumbers=/^(?:(?:\+|0{0,2})91(\s*|[\-])?|[0]?)?([6789]\d{2}([ -]?)\d{3}([ -]?)\d{4})$/;

            var occ=document.getElementById("occupation").value
            var occletters=/^[a-zA-Z]*$/;
        	/*var date=document.getElementById("dateofbirth") .value
        	var numberpattern=/^(0[1-9]|1[012])[-/.](0[1-9]|[12][0-9]|3[01])[-/.](19|20)\\d\\d$/;*/
if(name==''){
	alert("Enter Petitioner Name")
	document.getElementById("petitionername").focus();
	return false;
}
if(!letters.test(name)){
	alert("Name field required only alphabet")
	return false;
}
/*if(date==''){
	alert("Enter Date of Birth")
	document.getElementById("dateofbirth").focus();
	return false;
}
if(!numberpattern.test(date)){
	alert("Please Enter given format")
	document.getElementById("dateofbirth").focus();
	return false;
}*/
if(add==''){
	alert("Enter Address")
	document.getElementById("address").focus();
	return false;
	}
if(!addletters.test(add)){
	document.getElementById("address").focus();
	return false;
	
	
}
if(com==''){
	alert("Enter Complaint Details")
	document.getElementById("complaintdetails").focus();
	return false;
}
if(!comletters.test(com)){
	document.getElementById("complaintdetails").focus();
	return false;
}
if (ph==''){
	alert("Enter Phone Number")
	document.getElementById("phone").focus();
	return false;
}
if (!phnumbers.test(ph)){
	alert("Invalid Numbers ")
	document.getElementById("phone").focus();
	return false;
}
if(occ==''){
	alert("Enter Occupation")
	document.getElementById("occupation").focus();
	return false;
}
if(!occletters.test(occ)){
	alert("Required only alphabet")
	document.getElementById("occupation").focus();
	return false;
}


		return true;
		}
		
		
		
		</script>
</head>
<body>

<div class="content">
      <form action="officer_home_page.jsp"method=""onsubmit="return comvalidation()">
        <div class="user-details">
          <div class="input-box">
            <span class="details">Petitioner Name</span>
            <input type="text"name="petitionername"id="petitionername"placeholder="Enter petitioner name" >
          </div>
<div class ="input-box">
          <span class="details">Gender</span>
          <select name="gender" id="gender"placeholder="Select gender">
          <option value="select gender">Select Gender</option>
    <option value="male">Male</option>
    <option value="female">Female</option>
    <option value="other">Other</option>
    
  </select>
  <br><br>
          </div>
          <div class="input-box">
            <span class="details">Date of Birth</span>
           
            <input type="date"name="dateofbirth"id="dateofbirths">
          </div>
         
        <div class="input-box">
            <span class="details">Address</span>
            <input type="text"name="address"id="address"placeholder="Enter  address" >
          </div>
          <div class="input-box">
            <span class="details">Complaint Details</span>
            <input type="text"name="complaintdetails"id="complaintdetails"placeholder="Enter complaint Details" >
          </div>
<div class="input-box">
            <span class="details">Date of Complaint</span>
           
            <input type="date"name="dateofcomplaint"id="dateofcomplaint">
          </div>
          <div class="input-box">
            <span class="details">Id proof</span>
            <input type="image"name="idproof"id="idproof"placeholder="paste id proof" >
          </div>
          <div class="input-box">
            <span class="details">Phone Number</span>
            <input type="text"name="phone"id="phone" placeholder="Enter your number" >
          </div>
          
<div class="input-box">
            <span class="details">Occupation</span>
            <input type="text"name="occupation"id="occupation"placeholder="Enter  occupation" >
          </div>
          </div>
           <div class="button">
          <input type="submit" value="Register">
          
          
           
        </div>
      </form>
    </div>
    
</body>
</html>