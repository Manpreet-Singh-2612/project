<%-- 
    Document   : newjsp2
    Created on : Oct 25, 2018, 2:40:27 PM
    Author     : Ashish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body background="data:image/png;base64,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">
        

<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}

/* Full-width input fields */
input[type=text], input[type=password] 
{
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

button:hover {
    opacity: 0.8;
}


.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}


.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
    position: relative;
}

img.avatar {
    width: 40%;
    border-radius: 50%;
}


.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    padding-top: 60px;
}


.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto;
    border: 2px solid #888;
    width: 40%;
}


.close {
    position: absolute;
    right: 25px;
    top: 0;
    color: #000;
    font-size: 35px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: red;
    cursor: pointer;
}

.animate {
    -webkit-animation: animatezoom 0.6s;
    animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
    from {-webkit-transform: scale(0)} 
    to {-webkit-transform: scale(1)}
}
    
@keyframes animatezoom {
    from {transform: scale(0)} 
    to {transform: scale(1)}
}


@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
</style>
</

<h2>User Login Form</h2>

<button onclick="document.getElementById('id02').style.display='block'" style="width:auto;">Login</button>
<button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Sign up</button>
<div id="id01" class="modal">
  
  <form class="modal-content animate" action="signupServlet1">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="data:image/jpeg;base64,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" alt="Avatar" class="avatar">
    </div>

    <div class="container">
        <label for="usrname"><b>Username</b></label>
      <input type="text" placeholder="Enter Firstname" name="usrname" required>`
      
      <label for="fname"><b>Firstname</b></label>
      <input type="text" placeholder="Enter Firstname" name="fname" required>`
      
      <label for="lname"><b>Lastname</b></label>
      <input type="text" placeholder="Enter Lastname" name="lname" required>`

      <label for="pswd"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="pswd" required>
      
        <label for="mno"><b>Mob_no</b></label>
      <input type="text" placeholder="Enter Lastname" name="mno" required>
      
      <label for="add"><b>Address</b></label>
      <input type="text" placeholder="Enter Address" name="add" required>`
      
      <button type="submit">Signup</button>
      
      <label>
        <input type="checkbox" checked="checked" name="remember"> Remember me
      </label>
    </div>
      
    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
      <span class="psw">Forgot <a href="#">password?</a></span>
    </div>
  </form>
</div>
<!-- Login Up-->
<div id="id02" class="modal">
  
  <form class="modal-content animate" action="NewServlet">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="data:image/jpeg;base64,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" alt="Avatar" class="avatar">
    </div>

    <div class="container">
      <label for="uname"><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="uname" required>

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="psw" required>
        
      <button formaction="inde.html" type="submit">Login</button>
      <button type="submit">Login With Facebook</button>
      <button type="submit">Login With Google</button>
      
      <label>
        <input type="checkbox" checked="checked" name="remember"> Remember me
      </label>
    </div>

    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Cancel</button>
      <span class="psw">Forgot <a href="#">password?</a></span>
    </div>
  </form>
</div>


<script>
// Get the modal
var modal = document.getElementById('id02');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}

var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}

</script>
    </body>
</html>
