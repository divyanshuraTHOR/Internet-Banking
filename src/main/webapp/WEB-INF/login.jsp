
<style>
form{
background-color:brown;
width:450px;
height:300px;
border-style:solid;
border-color:white;
opacity : 0.85;
color: white;
}
body
{
 background-image: url("https://images.pexels.com/photos/326311/pexels-photo-326311.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500");
}
h1
{
color: white;
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

<h1>&nbsp;Login</h1>
<div>
<form action="/login" method="post">

<div><h4>${error}</h4></div>
<div style="color:yellow;"><h3>${registerSuccess}</h3></div>
<div style="color:red;"><h3>${registrationError}</h3></div>
<br/>
<div>User Id &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="userId" value="" Required></div>
<br/>
<div>Password  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="password" value="" Required></div>
<br/><br/>
<div><input type="submit" class="button button5" value="  Login   "></div>   
<br/>
<div><input type="button" class="button button5"  onclick="goToRegister()" value="Register"></div>

</form>





</div>

<script type="text/javascript">
function goToRegister(){
	alert("going to register");
    window.location.href="/register";

}
</script>