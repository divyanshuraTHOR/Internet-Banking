
<style>
form{
background-color:brown;
width:500px;
height:350px;
border-style:solid;
border-color:white;
color:white;
opacity : 0.85;
align : center;
}
body{

background-image: url("https://images.pexels.com/photos/326311/pexels-photo-326311.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500");
}
h1
{
color : white;
}


.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 8px 16px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
}
.button5 {
  background-color: white;
  color: black;
  border: 2px solid #555555;
}

.button5:hover {
  background-color: #555555;
  color: white;
}




</style>

<h1>Account Creation</h1>
<div>
<form action="/set-user" method="post">



<br/>
<div>User Id &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="userId" value="" Required></div>
<br/>
<div>Account Number &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="accn" value="" Required></div>
<br/>
<div>Mobile Number &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input maxlength="10" pattern="^[1-9]\d{9}$" title="Please enter a 10 digit valid mobile number" type="text" name="mob" value="" Required></div>
<br/>

<div>Amount &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="amt" value="" Required></div>
<br/>

<div>Password &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input   pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{4,8}$" title="Please enter a password of length 4 to 8 which contains minimum 1 special, 1 lower and 1 upper case character along with minimum 1 numeric character"   type="password" name="password1" value="" Required></div>
<br/>
<div>Confirm Password &nbsp;&nbsp;<input  pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{4,8}$"  title="Please enter a password of length 4 to 8 which contains minimum 1 special, 1 lower and 1 upper case character along with minimum 1 numeric character"  type="password" name="password2" value="" Required></div>
<br/>
<div><input type="submit" class="button button5" value="Register"></div>   


</form>

</div>