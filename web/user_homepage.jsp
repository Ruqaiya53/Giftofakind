<%-- 
    Document   : user_homepage
    Created on : 26-Apr-2018, 1:13:40 AM
    Author     : ruqaiya arif
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>User Home</title>
		<link rel="icon" href="images/icon1.ico"/>
		<link rel="shortcuticon" href="images/icon1.ico"/>
		<link rel="stylesheet" href="css/customize.css"/>
		<link rel="stylesheet" href="css/w3.css"/>
		<link rel="stylesheet" href="css/fontawesome-all.min.css">
		<link rel="stylesheet" href="css/fontawesome-all.css">
		<link rel="stylesheet" href="css/fa-brands.min.css">
		<link rel="stylesheet" href="css/fa-brands.css">
	</head>
	<body>
            <%
                response.setHeader("Cache-Control","no-cache,no-store, must-revalidate");//HTTP 1.1
                response.setHeader("Pragma","no-cache");//old versions of HTTP
                response.setHeader("Expires","0");//Proxy Server
                if(session.getAttribute("username")==null){
                    response.sendRedirect("login.html");
                }
            %><!--get the username-->
		<div id="wrapper">
			<!--header of homepage-->
			<div id="header">
				<div id="main_header">
					<!--logo-->					
					<div id="logo">
						<a href="index.html"><img src="images/mainlogo.jpg" alt="Company Logo"></a>
					</div>
					<!--search_box-->
					<div id="search">
						<form action="">
							<input class="search-box" type="text" name="search" placeholder="Search entire store here&hellip;">
							<button class="search-btn" type="submit"><i class="fa fa-search"></i></button>
						</form>
					</div>
					<!--user menu-->
					<div id="user-menu">
						<li><a href="login.html"><i class="fa fa-lock"></i>&nbsp;Login</a></li>
						<li><a href="registration.html"><i class="fa fa-user"></i>&nbsp;Register</a></li>		
						<li><a href="checkout.html"><i class="fa fa-shopping-cart"></i>&nbsp;Items</a></li>
					</div>
				</div>
			</div>
			<div id="navigation">
				<nav class="navigate">
					<a href="index.html">Home</a>
					<div class="dropdown">
						<button class="dropbtn">Categories&nbsp;<i class="fa fa-angle-down"></i></button>
						<div class="dropdown-content">
							<a href="categories/cakes/cake.html">Cakes</a>
							<a href="categories/flowers/flowers.html">Flowers</a>
							<a href="categories/bouquets/bouquet.html">Bouquets</a>
							<a href="categories/garden/garden.html">Garden Gifts</a>
							<a href="categories/unique/unique.html">Unique Gifts</a>
							<a href="categories/chocolates/chocolate.html">Chocolates</a>
						</div>
					</div>
					<div class="dropdown">
						<button class="dropbtn">Birthday&nbsp;<i class="fa fa-angle-down"></i></button>
						<div class="dropdown-content">
							<a href="categories/cakes/cake.html"> Birthday Cakes</a>
							<a href="categories/birthday_cards/bd.html"> Birthday Cards</a>
							<a href="categories/chocolates/chocolate.html"> Chocolates</a>
							<a href="#"> Giftcards</a>
						</div>
					</div>
					<div class="dropdown">
						<button class="dropbtn">Anniversary&nbsp;<i class="fa fa-angle-down"></i></button>
						<div class="dropdown-content">
							<div class="row">
								<div class="column">
									<h4>GIFT BY CATEGORIES</h4>
									<a href="#">Anniversary Cake</a>
									<a href="#">Anniversary Gifts</a>
									<a href="#">Bouquets</a>
								</div>
								<div class="column">
									<h4>GIFT BY RECIPIENT</h4>
									<a href="#">Husband</a>
									<a href="#">Wife</a>
								</div>
							</div>
						</div>
					</div>
					<div class="dropdown">
						<button class="dropbtn">Recipient&nbsp;<i class="fa fa-angle-down"></i></button>
						<div class="dropdown-content">
							<div class="row">
								<div class="column">
									<a href="#"> Men</a>
									<a href="#"> Women</a>
									<a href="#"> Teens</a>
									<a href="#"> Kids</a>
									<a href="#"> Babies</a>
									<a href="#"> Husband</a>
								</div>
								<div class="column">
									<a href="#"> Wife</a>
									<a href="#"> Friend</a>
									<a href="#"> Mom</a>
									<a href="#"> Dad</a>
									<a href="#"> Brother</a>
									<a href="#"> Sister</a>
								</div>
							</div>
						</div>
					</div>
					<div class="dropdown">
						<button class="dropbtn">Occasions&nbsp;<i class="fa fa-angle-down"></i></button>
						<div class="dropdown-content">
							<div class="row">
								<div class="column">
									<h4>GIFT BY OCCASIONS</h4>
									<a href="#">Anniversary</a>
									<a href="#">Baby Shower</a>
									<a href="#">Baby Naming Day</a>
									<a href="#">Birthday</a>
									<a href="#">Retirement</a>
									<a href="#">Wedding</a>
									<a href="#">more&hellip;</a>
								</div>
								<div class="column">
									<h4>EVENTS &amp; SENTIMENTS</h4>
									<a href="#">Cheer up&#33;</a>
									<a href="#">Just Because</a>
									<a href="#">Get Well Soon</a>
									<a href="#">You're the best</a>
									<a href="#">Farewell</a>
									<a href="#">Welcome Home</a>
									<a href="#">Thank You&#33;</a>
									<a href="#">more&hellip;</a>
								</div>
							</div>
						</div>
					</div>
				</nav>
			</div>
			<div class="user-home">
				<div class="user-slider">
					<img src="images/userpage.jpg">
				</div>
				<div class="profile">
					<img src="images/user.jpeg">
				</div>
				<div class="user-function">
					<ul>
						<li class="now"><a href="#">My Profile</a></li>
						<li><a href="#">My Orders</a></li>
						<li><a href="#">My Address Book</a></li>
						<li><a href="#">Track Order</a></li>
					</ul>
				</div>
				<div class="user-details">
					<table>
						<tr>
						<td>Name:</td>
						<td></td>
					</tr><br>
					<tr>
						<td>Contact Details:</td>
						<td>Email Address: ${username}</td><!--to show user details-->
                                        </tr>
				</table>
				</div>
				<div class="logout">
                       <form action="logout">
                        <input type="submit" value="Logout">
                    </form>
				</div>
				
			</div>
			<!--Footer-->
			<div id="footer">
				<div class="container">
					<div class="footer_sub_1">
						<a href="#"><li class="no1"><i class="fab fa-facebook-f"></i></li></a>
						<a href="#"><li class="no2"><i class="fab fa-instagram"></i></li></a>
						<a href="#"><li class="no3"><i class="fab fa-twitter"></i></li></a>
						<a href="#"><li class="no4"><i class="fab fa-pinterest"></i></li></a>
					</div>
					<div class="footer_sub_2">
						<h3>HELPFUL LINKS</h3>
						<li><a href="contactus.html">&nbsp;&nbsp;&nbsp;Contact Us</a></li>
						<li><a href="refunds.html">&nbsp;&nbsp;&nbsp;Refunds and Return Policy</a></li>
						<li><a href="registration.html">&nbsp;&nbsp;&nbsp;Become Our Vendor?</a></li>
						<li><a href="faq.html">&nbsp;&nbsp;&nbsp;FAQ</a></li>
					</div>
					<div class="footer_sub_3">
						<h3>INFORMATION</h3>
						<li><a href="aboutus.html">&nbsp;&nbsp;&nbsp;About Us</a></li>
						<li><a href="privacypolicy.html">&nbsp;&nbsp;&nbsp;Privacy Policy</a></li>
					</div>
					<div class="footer_sub_4">
						<p>Copyright&nbsp;&copy;&nbsp;2018 Giftofakind.com. All Rights Reserved.</p>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
