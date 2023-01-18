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
function pmvalidation() {
	
	var name=document.getElementById("fullname").value
	var letters=/^[a-zA-Z]+[a-zA-Z]+$/;
	
	var add=document.getElementById("address").value
	var letters=/^[a-zA-Z0-9\s\,\''\-]*$/;
	
	var firid=document.getElementById("firid").value
	var firpattern=/^[0-9]+$/;
	
	var doc=document.getElementById("doctorsname").value
	var docletters=/^Dr.[a-z\s]+/;
	
	var hos=document.getElementById("hospitaladdress").value
	var hosletters=/^[a-zA-Z0-9\s\,\''\-]*$/;
	
	var des=document.getElementById("descriptionofcase").value
	var desletters=/^[a-zA-Z0-9\s\,\''\-]*$/;
	
	
	
	if (name==''){
		alert('Please Enter Your Full Name');
		document.getElementById("fullname").focus();
		return false;
	}
	if(!letters.test(name)){
		alert('Name field required only alphabet characters')
		document.getElementByID("fullname").focus();
		return false;
	}
	
	if(add==''){
		alert('Please Enter Address');
		document.getElementById("address").focus();
		return false;
	}
	if(!letters.test(name)){
		alert('Invalid address')
		document.getElementById("address").focus();
		return false;
	}
	
	
	
	if(firid==''){
		alert('Please Enter FIR ID')
		document.getElementById("firid").focus();
		return false;
	}
	if(!firpattern.test(firid)){
		alert('Invalid Id')
		document.getElementById("firid").focus();
		return false;
	}
	if(doc==''){
		alert('Please Enter Doctor Name')
		document.getElementById("doctorsname").focus();
		return false;
		}
	if(!docletters.test(doc)){
		alert('Invalid Name')
		document.getElementById("doctorsname").focus();
		return false;
	}
	if(hos==''){
		alert('Please Enter Hospital Address')
		document.getElementById("hospitaladdress").focus();
		return false;
	}
	if(!hosletters.test(hos)){
		alert('Invalid Hospital Address')
		document.getElementById("hospitaladdress").focus();
		return false;
	}
	if(des==''){
		alert('Please Enter Case  Description')
		document.getElementById("descriptionofcase").focus();
		return false;
	}
	if(!desletters.test(des)){
		alert('Invalid Format')
		document.getElementById("descriptionofcase").focus();
		return false;
	}
	
	
	
	
	
	
	return true;
}

	
	



</script>
</head>
<body>
<div class="content">

      <form action="officer_home_page.jsp"method=""onsubmit="return pmvalidation()">
        <div class="user-details">
          <div class="input-box">
            <span class="details">Full Name</span>
            <input type="text"name="fullname"id="fullname"placeholder="Enter Full Name" >
          </div>

          <div class="input-box">
            <span class="details">Image</span>
            <input type="image"name="image"id="image" placeholder="Paste Image" >
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
           
            <input type="date"name="dateofbith"id="dateofbith">
          </div>
          <div class="input-box">
            <span class="details">ID Proof</span>
            <input type="image"name="idproof"id="idproof" placeholder="paste id proof" >
          </div>
          
        
        <div class="input-box">
            <span class="details">Resident Address</span>
            <input type="text"name="address"id="address"placeholder="address" >
          </div>
        
        <div class="input-box">
            <span class="details">FIR ID</span>
            <input type="text"name="firid"id="firid" placeholder="Enter FIR ID" >
          </div>
        
          <div class="input-box">
            <span class="details">Post-Mortum Report</span>
            <input type="image"name="postmortum"id="postmortum">
          </div>
           <div class="input-box">
            <span class="details">Date of Post-Mortum</span>
           
            <input type="date"name="dateofpostmortum"id="dateofpostmortum">
          </div>
          
          <div class="input-box">
            <span class="details">Doctor's Name</span>
            <input type="text"name="doctorsname"id="doctorsname"placeholder="Enter the Doctor Name" >
          </div>
       <div class="input-box">
            <span class="details">Hospital Address</span>
            <input type="text"name="hospitaladdress"id="hospitaladdress"placeholder="Enter the Hospital Address" >
          </div>
       <div class="input-box">
            <span class="details">Description of case</span>
            <input type="text"name="descriptionofcase"id="descriptionofcase"placeholder="Enter the Description" >
          </div>
    
          </div>
       
        <div class="button">
          <input type="submit" value="Register">
        </div>
      </form>
    </div>


          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
</body>






















</html>