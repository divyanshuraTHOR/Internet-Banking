<style>
form{
background-color:brown;
width:500px;
height:230px;
border-style:solid;
border-color:white;
color:white;
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

<h1>Fund Transfer</h1>
<div>
<form action="/fund-user" method="post">



<br/>

<div>Sender's Account Number &nbsp;&nbsp;&nbsp;<input type="text" name="saccn" value="" Required></div>
<br/>
<div>Reciever's Account Number <input type="text" name="accn" value="" Required></div>
<br/>
<div>Amount &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="amt" value="" Required></div>
<br/>



<div><input type="submit" class="button button5" value="Pay"></div>   


</form>

<h1>Immediate Payment Service</h1>

<form action="/imps-user" method="post">

<br/>

<div>Sender's Account Number &nbsp;&nbsp;&nbsp;<input type="text" name="saccn" value="" Required></div>
<br/>
<div>Reciever's Account Number <input type="text" name="accn" value="" Required></div>
<br/>
<div>Reciever's IFSC code &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input pattern="^[A-Z]{4}0[A-Z0-9]{6}$"  type="text" name="ifsc" value="" Required></div>
<br/>
<div>Amount &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="amt" value="" Required></div>
<br/>



<div><input type="submit" class="button button5" value="Pay"></div>   


</form>


</div>