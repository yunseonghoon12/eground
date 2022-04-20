<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	 <style>
        *{text-decoration: none; list-style: none; }
         .headNav2 {display: flex;}
    </style>
    
        <style>

    .slidebox {max-width:1000px;margin:0 auto;position:relative;}
    .slidebox .slidelist {position:relative;display: flex; font: size 13px;overflow:hidden;}
    .slidebox .slidelist .slideitem {position:relative;display: flex;vertical-align:middle;background-color:#fff;width:100%;transition:all 1s;}
    .slidebox .slidelist .slideitem > a {display:flex;width:auto;position:relative;}


    .slidebox .slide-control [class*="control"] label {position:absolute;z-index:10;top:50%;transform:translateY(-50%);padding:20px;border-radius:50%;cursor:pointer;}
    .slidebox .slide-control [class*="control"] label.prev {left:-50px;top:25px ; background:rgb(255, 255, 255) url(./images/왼쪽.png) center center / 50% no-repeat;}
    .slidebox .slide-control [class*="control"] label.next {right:-50px;top:25px ;background:rgb(255, 255, 255) url(./images/오른쪽.png) center center / 50% no-repeat;}

    [name="slide"] {display:none;}
    #slide01:checked ~ .slidelist .slideitem {left:0;}
    #slide02:checked ~ .slidelist .slideitem {left:-100%;}
    #slide03:checked ~ .slidelist .slideitem {left:-200%;}
    #slide04:checked ~ .slidelist .slideitem {left:-300%;}

    .slide-control [class*="control"] {display:none;}
    #slide01:checked ~ .slide-control .control01 {display:block;}
    #slide02:checked ~ .slide-control .control02 {display:block;}
    #slide03:checked ~ .slide-control .control03 {display:block;}
    #slide04:checked ~ .slide-control .control04 {display:block;}

    .slidelist .slideitem > a {cursor: pointer;}
    </style>
    
</head>


<body>
<jsp:include page="/WEB-INF/view/header.jsp"></jsp:include>
   <nav>
        <ul class="headNav2" style="margin-top: 30px;">
            <li><a href="#">쇼설매치</a></li>
            <li style="margin-left: 40px;"><a href="#">커뮤니티</a></li>      
        </ul>
    </nav>
   
    <div class="bodywrap" style="background-color: antiquewhite; height: 400px;">
        <ul>

        </ul>
    </div>


    <div class="calendar" style="background-color: rgba(0, 255, 255, 0.292); height: 100px; padding: 15px;">
	 <div class="slidebox">
	        <input type="radio" name="slide" id="slide01" checked>
	        <input type="radio" name="slide" id="slide02">
	        <input type="radio" name="slide" id="slide03">
	        <input type="radio" name="slide" id="slide04">
	        <ul class="slidelist">
	            <a href="#">
	                <li class="slideitem">
	                <p style="width: 90px; height: 50px; margin-left: 45px;">22<br>금</p>
	                </li>
	            </a>    
	            <a href="#">
	                <li class="slideitem">
	                <p style="width: 90px; height: 50px; margin-left: 45px;">22<br>금</p>
	                </li>
	            </a>    
	            <a href="#">
	                <li class="slideitem">
	                <p style="width: 90px; height: 50px; margin-left: 45px;">22<br>금</p>
	                </li>
	            </a>    
	            <a href="#">
	                <li class="slideitem">
	                <p style="width: 90px; height: 50px; margin-left: 45px;">22<br>금</p>
	                </li>
	            </a>    
	            <a href="#">
	                <li class="slideitem">
	                <p style="width: 90px; height: 50px; margin-left: 45px;">22<br>금</p>
	                </li>
	            </a>    
	            <a href="#">
	                <li class="slideitem">
	                <p style="width: 90px; height: 50px; margin-left: 45px;">22<br>금</p>
	                </li>
	            </a>    
	            <a href="#">
	                <li class="slideitem">
	                <p style="width: 90px; height: 50px; margin-left: 45px;">22<br>금</p>
	                </li>
	            </a>    
	            <a href="#">
	                <li class="slideitem">
	                <p style="width: 90px; height: 50px; margin-left: 45px;">22<br>금</p>
	                </li>
	            </a>    
	            <a href="#">
	                <li class="slideitem">
	                <p style="width: 90px; height: 50px; margin-left: 45px;">22<br>금</p>
	                </li>
	            </a>    
	            <a href="#">
	                <li class="slideitem">
	                <p style="width: 90px; height: 50px; margin-left: 45px;">22<br>금</p>
	                </li>
	            </a>    
	            <a href="#">
	                <li class="slideitem">
	                <p style="width: 90px; height: 50px; margin-left: 45px;">22<br>금</p>
	                </li>
	            </a>  
		    </ul>
	
	        <div class="slide-control">
	            <div class="control01">
	                <label for="slide04" class="prev"></label>
	                <label for="slide02" class="next"></label>
	            </div>
	            <div class="control02">
	                <label for="slide01" class="prev"></label>
	                <label for="slide03" class="next"></label>
	            </div>
	            <div class="control03">
	                <label for="slide02" class="prev"></label>
	                <label for="slide04" class="next"></label>
	            </div>
	            <div class="control04">
	                <label for="slide03" class="prev"></label>
	                <label for="slide01" class="next"></label>
	            </div>
	        </div>
	    </div>  
	</div>

	<div id="optionWrap" style="width: 1280px; height: 80px;">
	</div>


	<div id="matchWrap" style="width: 1280px;height: 100px; background-color: blanchedalmond;">
	</div>
	
	
	
	
	
	<jsp:include page="/WEB-INF/view/footer.jsp"></jsp:include>

</div>
</body>
</html>