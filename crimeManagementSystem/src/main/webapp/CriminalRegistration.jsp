<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
<script type="text/javascript">
function crivalidation(){
	var name = document.getElementById("fullname").value
	var letters = /^[a-zA-Z]+[a-zA-Z]+$/;
	
	var nat=document.getElementById("nationality").value
	var natletters=/^[a-zA-Z]+[a-zA-Z]+$/;
	
	var add=document.getElementById("address").value
	var addletters=/^[a-zA-Z0-9\s\,\''\-]*$/;
	
	var occ=document.getElementById("occupation").value
    var occletters=/^[a-zA-Z]*$/;
	
	var regn=document.getElementById("firid").value
	var regnnumbers=/^[0-9]+$/;
	
	var crm=document.getElementById("crimetype").value
	var crmletters=/^[a-zA-Z0-9\s\,\''\-]*$/;
	
	var jlt=document.getElementById("jailterm").value
	var jltletters=/^[a-zA-Z0-9\s\,\''\-]*$/;
	
	
	
	
	if (name == '') {

		alert('Please enter your full name');
		document.getElementById("fullname").focus();
		return false;
	}
	if (!letters.test(name)) {
		alert('Name field required only alphabet characters')
		return false;
	}
	
	if(nat==''){
		alert('Please Enter Nationality');
		document.getElementById("nationality").focus();
		return false;
	}
	if(!natletters.test(nat)){
		alert('Invalid');
		document.getElementById("nationality").focus();
		return false;
	}
	
	if (add==''){
		alert("Enter Address")
		document.getElementById("address").focus();
		return false;
		}
	if(!addletters.test(add)){
		document.getElementById("address").focus();
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
	
	if(regn==''){
		alert("Please Enter FIR Number")
		document.getElementById("firid").focus();
		return false;
		
	}
	if (!regnnumbers.test(regn)){
		alert("Invalid Reg Number")
		document.getElementById("firid").focus();
		return false;
	}
		
	if(crm==''){
		alert("Please Enter Crime Type")
		document.getElementById("crimetype").focus();
		return false;
		
	}
	if (!crmletters.test(crm)){
		alert("Invalid Crime Type")
		document.getElementById("crimetype").focus();
		return false;
	}
	if(jlt==''){
		alert("Please Enter Jail Term")
		document.getElementById("jailterm").focus();
		return false;
		
	}
	if (!jltletters.test(jlt)){
		alert("Invalid Format")
		document.getElementById("jailterm").focus();
		return false;
	}
	
	return true;
}








</script>
</head>
<body>
<div class="content">
      <form action="officer_home_page.jsp"method=""onsubmit="return crivalidation()">
        <div class="user-details">
          <div class="input-box">
            <span class="details">Criminal Image</span>
            <input type="image"name="criminalimage"id="criminalimage"placeholder="paste image" >
          </div>

          <div class="input-box">
            <span class="details">Full Name</span>
            <input type="text"name="fullname"id="fullname" placeholder="Enter Full name" >
          </div>
          <div class="input-box">
            <span class="details">Nationality</span>
            <input type="text"name="nationality"id="nationality"placeholder="Enter the Nationality" >
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
           
            <input type="date"name="dateofbirth"id="dateofbirth">
          </div>
        
        <div class="input-box">
            <span class="details">Resident Address</span>
            <input type="text"name="address"id="address"placeholder="address" >
          </div>
        
          <div class="input-box">
            <span class="details">Occupation</span>
            <input type="occupation"name="occupation"id="occupation"placeholder="Enter occupation" >
          </div>
          <div class="input-box">
            <span class="details">FIR Id</span>
            <input type="number"name="firid" id="firid"placeholder="Enter FIR Id" >
          </div>
          <div class="input-box">
            <span class="details">Crime type</span>
            <input type="crimetype"name="crimetype"id="crimetype"placeholder="Enter the crime type" >
          </div>
          <div class="input-box">
            <span class="details">Crime Images</span>
            <input type="image"name="crimeimages"id="crimeimages"placeholder="paste crime images" >
          </div>
          <div class="input-box">
            <span class="details">Jail Term</span>
            <input type="jailterm"name="jailterm"id="jailterm"placeholder="paste the Jail Term" >
          </div>
          
          
           <div class="input-box">
           <span class="details">Most Wanted</span>
     <select name="mostwanted" id="mostwanted">
          <option value="selectmostwanted">Select MostWanted</option>
    <option value="yes">Yes</option>
    <option value="no">No</option>
    
    
  </select>
  <br><br>
          </div>
          
       
    
          </div>
       
        <div class="button">
          <input type="submit" value="Register">
        </div>
         
      </form>
    </div>


</html>