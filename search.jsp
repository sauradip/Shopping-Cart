
<!--
<%@taglib prefix="d" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>





<html>
    <head>
        
                         <link rel="stylesheet" href="bootstrap.min.css">

    </head>
    <body>

        <d:iterator value='em'>

        <table>
            
                <tr valign="center">
                    <img src="<d:url action="empPic?id=%{pid}"/>" height="150" width="100"/>
                </tr>
            <tr>
                
                <td>
                     <h1>
                         <d:property value='pname'/></h1><br>
                         <h2>Rs.
                             <d:property value='price'/>(INR)</h2><br>
                             Special Offer:<br>
                             <h4>
                         <d:property value='discount'/>% off</h4>
                         <h5>
                             Specification
                         </h5><br>
                        

                        <h6>
                             <d:property value='pdesc'/> 
<d:url action="desc?id=%{pid}"/></h6><br>
                            <a>Add To Cart</a>
                            
                </td>
            </tr>
            <tr>
            <h1>Reviews:</h1><br>
            <h2>Rating</h2><br>
            <h3>
                <d:property value='rating'/> Stars out of 5 Stars</h3><br>
                <h4>
                         <d:property value='reviews'/></h4>
            </tr>
        
        </table>
            </d:iterator>
    </body>
</html>

-->


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

      <link rel="stylesheet" href="displaypage.css">
                 <link rel="stylesheet" href="bootstrap.min.css">
<script src="js/jquery-1.12.2.min.js"></script>
<script src="js/bootstrap.min.js"></script>  
        
        
    </head> 
    <body>
        <d:iterator value='em'>
        <div class="container-fluid">
    <div class="content-wrapper">	
		<div class="item-container">	
			<div class="container">	
				<div class="col-md-12">
					<div class="product col-md-3 service-image-left">
                    
						
							<img src="<d:url action="empPic?id=%{pid}"/>" alt="">
						
					</div>
                                                       
                                                      
                                    <div class="container service1-items col-sm-9 col-md-9 pull-left">
                                        <div class="product-title"><d:property value='pname'/></div>
<!--					<div class="product-desc">The Corsair Gaming Series GS600 is the ideal price/performance choice for mid-spec gaming PC</div>-->
					<div class="product-rating" style="padding-top:10px;">
                                             <span class="label label-success" >
                                                  <d:property value='rating'/>   <i class="fa fa-star white"></i></span>
                                           
                                            
                                            </div>
                                        <hr>
                                      
					<div class="product-price">Rs <d:property value='price'/></div>
					<div class="product-stock">In Stock</div>
					<hr>
					<div class="btn-group cart">
						<button type="button" class="btn btn-success">
							<d:a action="cart?id=%{pid}">
                                                <i class="fa fa-shopping-cart"></i>Add to cart</d:a>
						</button>
					</div>
<!--					<div class="btn-group wishlist">
						<button type="button" class="btn btn-danger">
							Add to wishlist 
						</button>
					</div>-->
                                    </div>
<!--					<div class="container service1-items col-sm-2 col-md-2 pull-left">
						<center>
							<a id="item-1" class="service1-item">
								<img src="http://www.corsair.com/Media/catalog/product/g/s/gs600_psu_sideview_blue_2.png" alt=""></img>
							</a>
							<a id="item-2" class="service1-item">
								<img src="http://www.corsair.com/Media/catalog/product/g/s/gs600_psu_sideview_blue_2.png" alt=""></img>
							</a>
							<a id="item-3" class="service1-item">
								<img src="http://www.corsair.com/Media/catalog/product/g/s/gs600_psu_sideview_blue_2.png" alt=""></img>
							</a>
						</center>
					</div>-->
				</div>
					
<!--				<div class="col-md-7">
					<div class="product-title">Corsair GS600 600 Watt PSU</div>
					<div class="product-desc">The Corsair Gaming Series GS600 is the ideal price/performance choice for mid-spec gaming PC</div>
					<div class="product-rating"><i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star-o"></i> </div>
					<hr>
					<div class="product-price">$ 1234.00</div>
					<div class="product-stock">In Stock</div>
					<hr>
					<div class="btn-group cart">
						<button type="button" class="btn btn-success">
							Add to cart 
						</button>
					</div>
					<div class="btn-group wishlist">
						<button type="button" class="btn btn-danger">
							Add to wishlist 
						</button>
					</div>
				</div>-->
			</div> 
		</div>
		<div class="container-fluid">		
			<div class="col-md-12 product-info">
					<ul id="myTab" class="nav nav-tabs nav_tabs">
						
						<li class="active"><a href="#service-one" data-toggle="tab">PRODUCT INFO</a></li>
						<li><a href="#service-two" data-toggle="tab">REVIEWS</a></li>
<!--						<li><a href="#service-three" data-toggle="tab">REVIEWS</a></li>-->
						
					</ul>
				<div id="myTabContent" class="tab-content">
						<div class="tab-pane fade in active" id="service-one">
						 
							<section class="container product-info">
<!--								The Corsair Gaming Series GS600 power supply is the ideal price-performance solution for building or upgrading a Gaming PC. A single +12V rail provides up to 48A of reliable, continuous power for multi-core gaming PCs with multiple graphics cards. The ultra-quiet, dual ball-bearing fan automatically adjusts its speed according to temperature, so it will never intrude on your music and games. Blue LEDs bathe the transparent fan blades in a cool glow. Not feeling blue? You can turn off the lighting with the press of a button.-->

								<h3><d:property value='pname'/> Features:</h3>
                                                                <ul> <li><d:property escapeHtml="false" value='pdesc.replace(\"\n\", \" <br />\")'/></li></ul>
<!--								<li>It supports the latest ATX12V v2.3 standard and is backward compatible with ATX12V 2.2 and ATX12V 2.01 systems</li>
								<li>An ultra-quiet 140mm double ball-bearing fan delivers great airflow at an very low noise level by varying fan speed in response to temperature</li>
								<li>80Plus certified to deliver 80% efficiency or higher at normal load conditions (20% to 100% load)</li>
								<li>0.99 Active Power Factor Correction provides clean and reliable power</li>
								<li>Universal AC input from 90~264V — no more hassle of flipping that tiny red switch to select the voltage input!</li>
								<li>Extra long fully-sleeved cables support full tower chassis</li>
								<li>A three year warranty and lifetime access to Corsair’s legendary technical support and customer service</li>
								<li>Over Current/Voltage/Power Protection, Under Voltage Protection and Short Circuit Protection provide complete component safety</li>
								<li>Dimensions: 150mm(W) x 86mm(H) x 160mm(L)</li>
								<li>MTBF: 100,000 hours</li>
								<li>Safety Approvals: UL, CUL, CE, CB, FCC Class B, TÜV, CCC, C-tick</li>-->

							</section>
										  
						</div>
					<div class="tab-pane fade" id="service-two">
						
						<section class="container">
							<h3><d:property value='pname'/> Reviews:</h3>
                                                        <ul><li><d:property escapeHtml="false" value='reviews.replace(\"\n\", \" <br />\")'/></li></ul>
						</section>
						
					</div>
<!--					<div class="tab-pane fade" id="service-three">
												
					</div>-->
				</div>
				<hr>
			</div>
		</div>
	</div>
</div>
        
        </d:iterator>
         
   <c:forEach items="${items}" var="it">
       <c:out  value="${it}"   />                                          
                                                        </c:forEach> 
    </body>
    
   
</html>

