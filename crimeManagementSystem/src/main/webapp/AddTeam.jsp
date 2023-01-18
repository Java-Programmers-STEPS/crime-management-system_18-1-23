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
function addtvalidation() {
	
	var name=document.getElementById("nameofteam").value
	var namepattern=/^[a-zA-Z]+[a-zA-Z]+$/;
	
	var lon=document.getElementById("leadingofficername").value
	var lonletters=/^[a-zA-Z]+[a-zA-Z]+$/;
	
	var ofad=document.getElementById("officeaddress").value
	var ofadletters=/^[a-zA-Z0-9\s\,\''\-]*$/;
	
	var eml=document.getElementById("email").value
	var emlpattern=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	
	if(name==''){
		alert('Please Enter Name');
		document.getElementById("nameofteam").focus();
		return false;
	}
	if(!namepattern.test(name)){
		alert('Invalid');
		document.getElementById("nameofpattern").focus();
		return false;
	}
	
	if(lon==''){
		alert('Please Enter Leading Officer Name');
		document.getElementById("leadingofficername").focus();
		return false;
	}
	
	if(!lonletters.test(lon)){
		alert('Invalid Format');
		document.getElementById("leadingofficername").focus();
		return false;
	}
	if(ofad==''){
		alert('Please Enter Office Address ');
		document.getElementById("officeaddress").focus();
		return false;
		
	if(!ofadletters.test(ofad)){
			alert('Invalid Address');
			document.getElementById("officeaddress").focus();
			return false;
		}
	}
	if(eml==''){
		alert('Please Enter Email');
		document.getElementById("email").focus();
		return false;
	}
	if(!emlpattern.test(eml)){
		alert('Invalid Email Format');
		document.getElementById("email").focus();
		return false;
	}
	
	return true;
}






</script>
</head>
<body>
<div class="content">
      <form action="admin_home_page.jsp"method=""onsubmit="return addtvalidation()">
        <div class="user-details">
          <div class="input-box">
            <span class="details">Name of Team</span>
            <input type="text"name="nameofteam"id="nameofteam"placeholder="Enter the Team Name" >
          </div>
         
           <div class="input-box">
            <span class="details">Leading Officer Name</span>
            <input type="text"name="leadingofficername"id="leadingofficername" placeholder="Enter Officer Name" >
          </div>

    <div class="input-box">
            <span class="details">Office Address</span>
            <input type="text"name="officeaddress"id="officeaddress" placeholder="Enter Office Address" >
          </div>
  
          
          <div class="input-box">
            <span class="details">Email</span>
            <input type="text"name="email"id="email" placeholder="Enter your email" >
          </div>
          
          <div class ="input-box">
          <span class="details">Select Team Members</span>
          <select name="selectteammembers" id="selectteammembers"placeholder="Select Team Members">
          <option value="select gender">Select Team Members</option>
    <option value=""></option>
    <option value=""></option>
    
    
  </select>
  <br><br>
          </div>
          
          
          
          
          
        </div>
        
    
        <div class="button">
          <input type="submit" value="Build Team">
        </div>
              </form>
    </div>

</body>
</html>