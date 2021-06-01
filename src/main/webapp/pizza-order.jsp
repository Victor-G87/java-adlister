<%--
  Created by IntelliJ IDEA.
  User: mono
  Date: 6/1/21
  Time: 4:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <h1 class="header">Pizza Order Form</h1>
</head>
<body>
<img
<form>
    <p class="top">
        <input type="radio" name="Type" class="pickup" >Pick-Up</input>
        <input type="radio" name="Type" class="pickup" >Delivery</input>
    </p>
    <p>
        <label>Name</label>
        <input type="text" name="Name" value="" class="text" required="required"></input>
    </p>
    <p>
        <label>Phone Number</label>
        <input type="text" name="PhoneNumber" value="" class="text" required></input>
    </p>
    <p>
        <label>Address</label>
        <input type="text" name="Address" value="" class="text" required></input>
    </p>

    <label>Size:</label>
    <input type="radio" name="Size" class="size">6"</input>
    <input type="radio" name="Size" class="size">8"</input>
    <input type="radio" name="Size" class="size">10"</input>
    <input type="radio" name="Size" class="size">12"</input>

    <p>
        <label>Toppings:</label>
    <div>
        <ul>
            <li><input type="checkbox" class="toppings">Pepperoni</input></li>
            <li><input type="checkbox" class="toppings">Ham</input></li>
            <li><input type="checkbox" class="toppings">Sausage</input></li>
            <li><input type="checkbox" class="toppings">Buffalo Chicken</input></li>
            <li><input type="checkbox" class="toppings">Pineapple</input></li>
            <li><input type="checkbox" class="toppings">Olives</input></li>
            <li><input type="checkbox" class="toppings">Peppers</input></li>
            <li><input type="checkbox" class="toppings">Mushrooms</input></li>
            <li><input type="checkbox" class="toppings">Onions</input></li>
        </ul>
    </div>
    </p>
    <p>
        <label>Additional Comments</label>
        <textarea id="comments"></textarea>
    </p>

    <div class="buttons">

        <input type="submit" value="Submit" class="submit" onclick=""></input>
        <input type="submit" value="Cancel" class="cancel"></input>
    </div>

</form>
</body>

</html>
