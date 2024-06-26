        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
                <div class="hero_area">
        <div class="bg-box">
        <img src="../assets/imgs/hero-bg.jpg" alt="">
        </div>
        <!-- header section strats -->
        <header class="header_section">
        <div class="container">
        <nav class="navbar navbar-expand-lg custom_nav-container ">
        <a class="navbar-brand" href="/">
        <span>
        NgoYinSarr
        </span>
        </a>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class=""> </span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav  mx-auto ">
        <li class="nav-item ">
        <a class="nav-link" href="/">Home </a>
        </li>
        <li class="nav-item">
        <a class="nav-link" href="/menu">Menu</a>
        </li>
        <li class="nav-item">
        <a class="nav-link" href="/about">About</a>
        </li>
        <li class="nav-item">
        <a class="nav-link" href="/tablebook">Book Table</a>
        </li>
        </ul>
        <div class="user_option ">

                <a class="cart_link" href="/card" style="color: white"> <i class="fa fa-shopping-cart"></i>
                                <span class="badge badge-danger badge-pill cart-badge" id="cartCount">0</span>
                </a>

                <c:if test="${empty admin || empty user}">
                        <a href="/login" class="user_link"> <i class="fa fa-user" aria-hidden="true"></i> </a>
                </c:if>

                <c:if test="${!empty admin || !empty user}">
                        <a href="/logout" class="user_link"><i class="fa fa-arrow-right" ></i></a>
                        <%
                                session.removeAttribute("admin");
                                session.removeAttribute("user");
                        %>
                </c:if>

                <form action="/menu/search" method="post" class="form-inline">
                        <input type="search" class="form-control mr-2" placeholder="Search menu by name" id="search" name="search" />
                        <button type="submit" class="btn btn-warning"><i class="fa fa-search"></i></button>
                </form>
       </div>
        </div>
        </nav>
        </div>
        </header>
        <!-- end header section -->
        </div>
