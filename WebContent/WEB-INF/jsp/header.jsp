<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>

<header class="header header-default">
    <div class="header-top">
        <div >
            <div class="row">
                <div class="col-md-6">
                    <div class="header-top-left">
                        <ul class="header-top-nav">
                            <li>
                                <a href="LoginServlet">
                                <img class="header-logo" src="css/images/car1.png" style="width: 70px; height:70px;"/>
                                	<span class="header-text">Car Sharing</span>                                    
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>

                <c:choose>
                <c:when test="${userSession == null}">
		                <div class="col-md-6">
		                    <div class="header-top-right" style="padding-top: 15px;">
		                        <span class="login">
		                            <i class="fa fa-lock"></i>
		                            <a href="LoginServlet">Sign In</a>
		                        </span>
		                        <span class="register">
		                            <i class="fa fa-pencil-square-o"></i>
		                            Not a member?&nbsp;
		                            <a href="RegisterServlet"><strong>Sign Up</strong></a>
		                        </span>
		                    </div>
		                </div>
	            </c:when>
	            <c:otherwise>
		                
		                <div class="col-md-4">
		                    <div class="header-top-right" style="padding-top: 15px;">
		                        <span class="login">
		                            Welcome!&nbsp; 
		                            <span class="entry-meta" style="color: #dc2a0b;font-size:medium;">
		                                ${userSession.fullname}&nbsp; 
		                            </span>
		                            <i class="fa fa-lock"></i>
		                            <a href="LogoutServlet">&nbsp; logout</a>
		                            <a href="ModifyServlet">&nbsp; modify</a>
		                        </span>
		                    </div>
		                </div>
                </c:otherwise>
            </c:choose>    
            </div>
        </div>
    </div>
</header>

