<style>
form{
background-color:brown;
width:350px;
height:200px;
border-style:solid;
border-color:green;
opacity : 0.85;
}
body
{
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

<h1>Balance Enquiry</h1>
<div>
<form action="/balance-user" method="post">


<br/>
<div>User Id &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="userId" value="" Required></div>
<br/>
<div>Mobile No.  <input  maxlength="10" pattern="^[1-9]\d{9}$" title="Please enter a 10 digit valid mobile number"   type="text" name="mob" value="" Required></div>
<br/>

<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="Submit" class="button button5"></div>   


</form>





</div>