<%@taglib prefix="d" uri="/struts-tags" %>



        <html>
            <head>
                <style>
                    /*Author: Kosmom.ru*/.loading,.loading>td,.loading>th,.nav li.loading.active>a,.pagination li.loading,.pagination>li.active.loading>a,.pager>li.loading>a{
    background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, rgba(0, 0, 0, 0) 25%, rgba(0, 0, 0, 0) 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, rgba(0, 0, 0, 0) 75%, rgba(0, 0, 0, 0));
    background-size: 40px 40px;
animation: 2s linear 0s normal none infinite progress-bar-stripes;
-webkit-animation: progress-bar-stripes 2s linear infinite;
}
.btn.btn-default.loading,input[type="text"].loading,select.loading,textarea.loading,.well.loading,.list-group-item.loading,.pagination>li.active.loading>a,.pager>li.loading>a{
background-image: linear-gradient(45deg, rgba(235, 235, 235, 0.15) 25%, rgba(0, 0, 0, 0) 25%, rgba(0, 0, 0, 0) 50%, rgba(235, 235, 235, 0.15) 50%, rgba(235, 235, 235, 0.15) 75%, rgba(0, 0, 0, 0) 75%, rgba(0, 0, 0, 0));
}
                </style> 
                <link rel="stylesheet" href="home.css">
                 <link rel="stylesheet" href="bootstrap.min.css">
<script src="js/jquery-1.12.2.min.js"></script>
<script src="js/bootstrap.min.js"></script>
            </head>
            <body>
                <div class="container" style="background-color: white;">
<div class="row">
        <div class="row">
            <div class="col-md-9">
                <h3>
                    Women Clothes</h3>
            </div>
            <div class="col-md-3">
                <!-- Controls -->
<!--                <div class="controls pull-right hidden-xs">
                    <a class="left fa fa-chevron-left btn btn-success" href="#carousel-example"
                        data-slide="prev"></a><a class="right fa fa-chevron-right btn btn-success" href="#carousel-example"
                            data-slide="next"></a>
                </div>-->
            </div>
        </div>
        <div id="carousel-example" class="carousel slide hidden-xs" data-ride="carousel" style="padding:4px;">
            <!-- Wrapper for slides -->
            <div class="carousel-inner" style="padding:4px;">
                <div class="item active" style="padding:4px;">
                    <div class="row" style="padding:4px;">
                       <d:iterator value='ems'>
                        <div class="col-sm-3" style="padding:4px;">
                            <div class="col-item">
                                <div class="photo">
                                    <!--<a href='mob'>
                                       <img src='http://placehold.it/350x260' class='img-responsive' alt='a' />
                                    </a>-->
                                    <d:a action="detail?id=%{pid}"><img src="<d:url action="empPic?id=%{pid}"/>" height="700" width="200"/></d:a>
                                </div>
                                <div class="info">
                                    <div class="row">
                                        
                                        <div class="price col-md-8">
                                        <d:a action="detail?id=%{pid}"> <h6>
                                                <d:property value='pname'/></h6></d:a>
                                            <h6 class="price-text-color" style="color:red;"><strong>Rs.
                                                <d:property value='price'/></strong></h6>
                                        </div>
<!--                                        <div class="rating hidden-sm col-md-6">
                                            
                                            <i class="price-text-color fa fa-star"></i><i class="price-text-color fa fa-star">
                                            </i><i class="price-text-color fa fa-star"></i><i class="price-text-color fa fa-star">
                                            </i><i class="fa fa-star"></i>
                                            
                                           
                                        </div>-->
                                        <div class="rating col-md-4" >
                                            <span class="label label-warning" ><d:property value='discount'/> % off</span></div>
                                    </div>
                                    <div class="separator clear-left">
                                        <d:a action="cart?id=%{pid}"><p class="btn-add">
                                                <i class="fa fa-shopping-cart"></i>Add to cart</p></d:a>
                                        <d:a action="detail?id=%{pid}"><p class="btn-add">
                                                <i class="fa fa-list"></i>More details</p></d:a>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </div>
                        </div>
                       </d:iterator>
                        
                    </div>
                </div>
                
            </div>
        </div>
    </div>
        </div>