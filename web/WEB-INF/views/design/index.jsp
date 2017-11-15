<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en" class="no-js">
    <!-- BEGIN HEAD -->
    <head>
        <meta charset="utf-8"/>
        <title>Home</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1" name="viewport"/>
        <meta content="" name="description"/>
        <meta content="" name="author"/>

        <!-- GLOBAL MANDATORY STYLES -->

        <link href="http://fonts.googleapis.com/css?family=Hind:300,400,500,600,700" rel="stylesheet" type="text/css">
        <link href="/resources/design/vendor/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css"/>
        <link href="/resources/design/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

        <!-- PAGE LEVEL PLUGIN STYLES -->
        <link href="/resources/design/css/animate.css" rel="stylesheet">
        <link href="/resources/design/vendor/swiper/css/swiper.min.css" rel="stylesheet" type="text/css"/>

        <!-- THEME STYLES -->
        <link href="/resources/design/css/layout.min.css" rel="stylesheet" type="text/css"/>

        <!-- Favicon -->
        <link rel="shortcut icon" href="favicon.ico"/>
    </head>
    <!-- END HEAD -->

    <!-- BODY -->
    <body id="body" data-spy="scroll" data-target=".header">

    <jsp:include page="header_nav.jsp"/>

    <jsp:include page="carousel.jsp"/>

        <!--========== PAGE LAYOUT ==========-->
        <!-- About -->
        <div id="about">
            <div class="content-lg container">
                <!-- Masonry Grid -->
                <div class="masonry-grid row">
                    <div class="masonry-grid-sizer col-xs-6 col-sm-6 col-md-1"></div>
                    <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-4 sm-margin-b-30">
                        <div class="margin-b-60">
                            <h2>Art Of Coding</h2>
                            <p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incididunt ut laboret dolore magna ut consequat siad esqudiat dolor</p>
                        </div>
                        <img class="full-width img-responsive wow fadeInUp" src="/resources/design/img/500x500/01.jpg" alt="Portfolio Image" data-wow-duration=".3" data-wow-delay=".2s">
                    </div>
                    <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-4">
                        <div class="margin-b-60">
                            <img class="full-width img-responsive wow fadeInUp" src="/resources/design/img/500x500/02.jpg" alt="Portfolio Image" data-wow-duration=".3" data-wow-delay=".3s">
                        </div>
                        <h2>Clean Design</h2>
                        <p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incididunt ut laboret dolore magna ut consequat siad esqudiat dolor</p>
                    </div>
                    <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-4">
                        <div class="margin-t-60 margin-b-60">
                            <h2>Amazing Support</h2>
                            <p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incididunt ut laboret dolore magna ut consequat siad esqudiat dolor</p>
                        </div>
                        <img class="full-width img-responsive wow fadeInUp" src="/resources/design/img/500x500/03.jpg" alt="Portfolio Image" data-wow-duration=".3" data-wow-delay=".4s">
                    </div>
                </div>
                <!-- End Masonry Grid -->
            </div>
            
            <div class="bg-color-sky-light">
                <div class="content-lg container">
                    <div class="row">
                        <div class="col-md-5 col-sm-5 md-margin-b-60">
                            <div class="margin-t-50 margin-b-30">
                                <h2>Why Choose Us?</h2>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                            </div>
                            <a href="#" class="btn-theme btn-theme-sm btn-white-bg text-uppercase">Explore</a>
                        </div>
                        <div class="col-md-5 col-sm-7 col-md-offset-2">
                            <!-- Accordion -->
                            <div class="accordion">
                                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                                    <div class="panel panel-default">
                                        <div class="panel-heading" role="tab" id="headingOne">
                                            <h4 class="panel-title">
                                                <a class="panel-title-child" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                                    Exceptional Frontend Framework
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                            <div class="panel-body">
                                                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch.
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default">
                                        <div class="panel-heading" role="tab" id="headingTwo">
                                            <h4 class="panel-title">
                                                <a class="collapsed panel-title-child" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                                    Modern Design Trends
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                            <div class="panel-body">
                                                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch.
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default">
                                        <div class="panel-heading" role="tab" id="headingThree">
                                            <h4 class="panel-title">
                                                <a class="collapsed panel-title-child" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                                    Beatifully Crafted Code
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                                            <div class="panel-body">
                                                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch.
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End Accodrion -->
                        </div>
                    </div>
                    <!--// end row -->
                </div>
            </div>
        </div>
        <!-- End About -->

        <!-- Latest Products -->
        <div id="products">
            <div class="content-lg container">
                <div class="row margin-b-40">
                    <div class="col-sm-6">
                        <h2>Latest Products</h2>
                        <p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incididunt ut laboret dolore magna aliqua enim minim veniam exercitation</p>
                    </div>
                </div>
                <!--// end row -->

                <div class="row">
                    <!-- Latest Products -->
                    <div class="col-sm-4 sm-margin-b-50">
                        <div class="margin-b-20">
                            <img class="img-responsive" src="/resources/design/img/970x647/01.jpg" alt="Latest Products Image">
                        </div>
                        <h4><a href="#">Workspace</a> <span class="text-uppercase margin-l-20">Management</span></h4>
                        <p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incdidunt ut laboret dolor magna ut consequat siad esqudiat dolor</p>
                        <a class="link" href="#">Read More</a>
                    </div>
                    <!-- End Latest Products -->

                    <!-- Latest Products -->
                    <div class="col-sm-4 sm-margin-b-50">
                        <div class="margin-b-20">
                            <img class="img-responsive" src="/resources/design/img/970x647/02.jpg" alt="Latest Products Image">
                        </div>
                        <h4><a href="#">Minimalism</a> <span class="text-uppercase margin-l-20">Developmeny</span></h4>
                        <p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incdidunt ut laboret dolor magna ut consequat siad esqudiat dolor</p>
                        <a class="link" href="#">Read More</a>
                    </div>
                    <!-- End Latest Products -->

                    <!-- Latest Products -->
                    <div class="col-sm-4 sm-margin-b-50">
                        <div class="margin-b-20">
                            <img class="img-responsive" src="/resources/design/img/970x647/03.jpg" alt="Latest Products Image">
                        </div>
                        <h4><a href="#">Cleant Style</a> <span class="text-uppercase margin-l-20">Design</span></h4>
                        <p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incdidunt ut laboret dolor magna ut consequat siad esqudiat dolor</p>
                        <a class="link" href="#">Read More</a>
                    </div>
                    <!-- End Latest Products -->
                </div>
                <!--// end row -->
            </div>
        </div>
        <!-- End Latest Products -->

        <!-- Pricing -->
        <div id="pricing">
            <div class="bg-color-sky-light">
                <div class="content-lg container">
                    <div class="row row-space-1">
                        <div class="col-sm-4 sm-margin-b-2">
                            <!-- Pricing -->
                            <div class="pricing">
                                <div class="margin-b-30">
                                    <i class="pricing-icon icon-chemistry"></i>
                                    <h3>Starter Kit <span> - $</span> 49</h3>
                                    <p>Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>
                                </div>
                                <ul class="list-unstyled pricing-list margin-b-50">
                                    <li class="pricing-list-item">Basic Features</li>
                                    <li class="pricing-list-item">Up to 5 products</li>
                                    <li class="pricing-list-item">50 Users Panels</li>
                                </ul>
                                <a href="pricing.html" class="btn-theme btn-theme-sm btn-default-bg text-uppercase">Choose</a>
                            </div>
                            <!-- End Pricing -->
                        </div>
                        <div class="col-sm-4 sm-margin-b-2">
                            <!-- Pricing -->
                            <div class="pricing pricing-active">
                                <div class="margin-b-30">
                                    <i class="pricing-icon icon-badge"></i>
                                    <h3>Professional <span> - $</span> 149</h3>
                                    <p>Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>
                                </div>
                                <ul class="list-unstyled pricing-list margin-b-50">
                                    <li class="pricing-list-item">Basic Features</li>
                                    <li class="pricing-list-item">Up to 100 products</li>
                                    <li class="pricing-list-item">100 Users Panels</li>
                                </ul>
                                <a href="pricing.html" class="btn-theme btn-theme-sm btn-default-bg text-uppercase">Choose</a>
                            </div>
                            <!-- End Pricing -->
                        </div>
                        <div class="col-sm-4">
                            <!-- Pricing -->
                            <div class="pricing">
                                <div class="margin-b-30">
                                    <i class="pricing-icon icon-shield"></i>
                                    <h3>Advanced <span> - $</span> 249</h3>
                                    <p>Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>
                                </div>
                                <ul class="list-unstyled pricing-list margin-b-50">
                                    <li class="pricing-list-item">Extended Features</li>
                                    <li class="pricing-list-item">Unlimited products</li>
                                    <li class="pricing-list-item">Unlimited Users Panels</li>
                                </ul>
                                <a href="pricing.html" class="btn-theme btn-theme-sm btn-default-bg text-uppercase">Choose</a>
                            </div>
                            <!-- End Pricing -->
                        </div>
                    </div>
                    <!--// end row -->
                </div>
            </div>
        </div>
        <!-- End Pricing -->

        <!-- Work -->
        <div id="work">
            <div class="section-seperator">
                <div class="content-md container">
                    <div class="row margin-b-40">
                        <div class="col-sm-6">
                            <h2>Work</h2>
                            <p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incididunt ut laboret dolore magna aliqua enim minim veniam exercitation</p>
                        </div>
                    </div>
                    <!--// end row -->

                    <!-- Masonry Grid -->
                    <div class="masonry-grid row">
                        <div class="masonry-grid-sizer col-xs-6 col-sm-6 col-md-1"></div>
                        <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-8 margin-b-30">
                            <!-- Work -->
                            <div class="work work-popup-trigger">
                                <div class="work-overlay">
                                    <img class="full-width img-responsive" src="/resources/design/img/800x400/01.jpg" alt="Portfolio Image">
                                </div>
                                <div class="work-popup-overlay">
                                    <div class="work-popup-content">
                                        <a href="javascript:void(0);" class="work-popup-close">Hide</a>
                                        <div class="margin-b-30">
                                            <h3 class="margin-b-5">Art Of Coding</h3>
                                            <span>Clean &amp; Minimalistic Design</span>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-8 work-popup-content-divider sm-margin-b-20">
                                                <div class="margin-t-10 sm-margin-t-0">
                                                    <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p>
                                                    <ul class="list-inline work-popup-tag">
                                                        <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Design,</a></li>
                                                        <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Coding,</a></li>
                                                        <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Portfolio</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="margin-t-10 sm-margin-t-0">
                                                    <p class="margin-b-5"><strong>Project Leader:</strong> John Doe</p>
                                                    <p class="margin-b-5"><strong>Designer:</strong> Alisa Keys</p>
                                                    <p class="margin-b-5"><strong>Developer:</strong> Mark Doe</p>
                                                    <p class="margin-b-5"><strong>Customer:</strong> Keenthemes</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End Work -->
                        </div>
                        <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-4 margin-b-30">
                            <!-- Work -->
                            <div class="work work-popup-trigger">
                                <div class="work-overlay">
                                    <img class="full-width img-responsive" src="/resources/design/img/397x415/01.jpg" alt="Portfolio Image">
                                </div>
                                <div class="work-popup-overlay">
                                    <div class="work-popup-content">
                                        <a href="javascript:void(0);" class="work-popup-close">Hide</a>
                                        <div class="margin-b-30">
                                            <h3 class="margin-b-5">Art Of Coding</h3>
                                            <span>Clean &amp; Minimalistic Design</span>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-8 work-popup-content-divider sm-margin-b-20">
                                                <div class="margin-t-10 sm-margin-t-0">
                                                    <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p>
                                                    <ul class="list-inline work-popup-tag">
                                                        <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Design,</a></li>
                                                        <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Coding,</a></li>
                                                        <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Portfolio</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="margin-t-10 sm-margin-t-0">
                                                    <p class="margin-b-5"><strong>Project Leader:</strong> John Doe</p>
                                                    <p class="margin-b-5"><strong>Designer:</strong> Alisa Keys</p>
                                                    <p class="margin-b-5"><strong>Developer:</strong> Mark Doe</p>
                                                    <p class="margin-b-5"><strong>Customer:</strong> Keenthemes</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End Work -->
                        </div>
                        <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-4 md-margin-b-30">
                            <!-- Work -->
                            <div class="work work-popup-trigger">
                                <div class="work-overlay">
                                    <img class="full-width img-responsive" src="/resources/design/img/397x300/01.jpg" alt="Portfolio Image">
                                </div>
                                <div class="work-popup-overlay">
                                    <div class="work-popup-content">
                                        <a href="javascript:void(0);" class="work-popup-close">Hide</a>
                                        <div class="margin-b-30">
                                            <h3 class="margin-b-5">Art Of Coding</h3>
                                            <span>Clean &amp; Minimalistic Design</span>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-8 work-popup-content-divider sm-margin-b-20">
                                                <div class="margin-t-10 sm-margin-t-0">
                                                    <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p>
                                                    <ul class="list-inline work-popup-tag">
                                                        <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Design,</a></li>
                                                        <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Coding,</a></li>
                                                        <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Portfolio</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="margin-t-10 sm-margin-t-0">
                                                    <p class="margin-b-5"><strong>Project Leader:</strong> John Doe</p>
                                                    <p class="margin-b-5"><strong>Designer:</strong> Alisa Keys</p>
                                                    <p class="margin-b-5"><strong>Developer:</strong> Mark Doe</p>
                                                    <p class="margin-b-5"><strong>Customer:</strong> Keenthemes</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End Work -->
                        </div>
                        <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-4 md-margin-b-30">
                            <!-- Work -->
                            <div class="work work-popup-trigger">
                                <div class="work-overlay">
                                    <img class="full-width img-responsive" src="/resources/design/img/397x300/02.jpg" alt="Portfolio Image">
                                </div>
                                <div class="work-popup-overlay">
                                    <div class="work-popup-content">
                                        <a href="javascript:void(0);" class="work-popup-close">Hide</a>
                                        <div class="margin-b-30">
                                            <h3 class="margin-b-5">Art Of Coding</h3>
                                            <span>Clean &amp; Minimalistic Design</span>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-8 work-popup-content-divider sm-margin-b-20">
                                                <div class="margin-t-10 sm-margin-t-0">
                                                    <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p>
                                                    <ul class="list-inline work-popup-tag">
                                                        <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Design,</a></li>
                                                        <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Coding,</a></li>
                                                        <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Portfolio</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="margin-t-10 sm-margin-t-0">
                                                    <p class="margin-b-5"><strong>Project Leader:</strong> John Doe</p>
                                                    <p class="margin-b-5"><strong>Designer:</strong> Alisa Keys</p>
                                                    <p class="margin-b-5"><strong>Developer:</strong> Mark Doe</p>
                                                    <p class="margin-b-5"><strong>Customer:</strong> Keenthemes</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End Work -->
                        </div>
                        <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-4">
                            <!-- Work -->
                            <div class="work work-popup-trigger">
                                <div class="work-overlay">
                                    <img class="full-width img-responsive" src="/resources/design/img/397x300/03.jpg" alt="Portfolio Image">
                                </div>
                                <div class="work-popup-overlay">
                                    <div class="work-popup-content">
                                        <a href="javascript:void(0);" class="work-popup-close">Hide</a>
                                        <div class="margin-b-30">
                                            <h3 class="margin-b-5">Art Of Coding</h3>
                                            <span>Clean &amp; Minimalistic Design</span>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-8 work-popup-content-divider sm-margin-b-20">
                                                <div class="margin-t-10 sm-margin-t-0">
                                                    <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p>
                                                    <ul class="list-inline work-popup-tag">
                                                        <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Design,</a></li>
                                                        <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Coding,</a></li>
                                                        <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Portfolio</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="margin-t-10 sm-margin-t-0">
                                                    <p class="margin-b-5"><strong>Project Leader:</strong> John Doe</p>
                                                    <p class="margin-b-5"><strong>Designer:</strong> Alisa Keys</p>
                                                    <p class="margin-b-5"><strong>Developer:</strong> Mark Doe</p>
                                                    <p class="margin-b-5"><strong>Customer:</strong> Keenthemes</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End Work -->
                        </div>
                    </div>
                    <!-- End Masonry Grid -->
                </div>
            </div>
            
            <!-- Clients -->
            <div class="content-lg container">
                <!-- Swiper Clients -->
                <div class="swiper-slider swiper-clients">
                    <!-- Swiper Wrapper -->
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <img class="swiper-clients-img" src="/resources/design/img/clients/01.png" alt="Clients Logo">
                        </div>
                        <div class="swiper-slide">
                            <img class="swiper-clients-img" src="/resources/design/img/clients/02.png" alt="Clients Logo">
                        </div>
                        <div class="swiper-slide">
                            <img class="swiper-clients-img" src="/resources/design/img/clients/03.png" alt="Clients Logo">
                        </div>
                        <div class="swiper-slide">
                            <img class="swiper-clients-img" src="/resources/design/img/clients/04.png" alt="Clients Logo">
                        </div>
                        <div class="swiper-slide">
                            <img class="swiper-clients-img" src="/resources/design/img/clients/05.png" alt="Clients Logo">
                        </div>
                        <div class="swiper-slide">
                            <img class="swiper-clients-img" src="/resources/design/img/clients/06.png" alt="Clients Logo">
                        </div>
                    </div>
                    <!-- End Swiper Wrapper -->
                </div>
                <!-- End Swiper Clients -->
            </div>
            <!-- End Clients -->
        </div>
        <!-- End Work -->

        <!-- Service -->
        <div id="service">
            <div class="bg-color-sky-light" data-auto-height="true">
                <div class="content-lg container">
                    <div class="row margin-b-40">
                        <div class="col-sm-6">
                            <h2>Services</h2>
                            <p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incididunt ut laboret dolore magna aliqua enim minim veniam exercitation</p>
                        </div>
                    </div>
                    <!--// end row -->

                    <div class="row row-space-1 margin-b-2">
                        <div class="col-sm-4 sm-margin-b-2">
                            <div class="service" data-height="height">
                                <div class="service-element">
                                    <i class="service-icon icon-chemistry"></i>
                                </div>
                                <div class="service-info">
                                    <h3>Art Of Coding</h3>
                                    <p class="margin-b-5">Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>
                                </div>
                                <a href="#" class="content-wrapper-link"></a>    
                            </div>
                        </div>
                        <div class="col-sm-4 sm-margin-b-2">
                            <div class="service bg-color-base" data-height="height">
                                <div class="service-element">
                                    <i class="service-icon color-white icon-screen-tablet"></i>
                                </div>
                                <div class="service-info">
                                    <h3 class="color-white">Responsive Design</h3>
                                    <p class="color-white margin-b-5">Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>
                                </div>
                                <a href="#" class="content-wrapper-link"></a>    
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="service" data-height="height">
                                <div class="service-element">
                                    <i class="service-icon icon-badge"></i>
                                </div>
                                <div class="service-info">
                                    <h3>Feature Reach</h3>
                                    <p class="margin-b-5">Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>
                                </div>
                                <a href="#" class="content-wrapper-link"></a>    
                            </div>
                        </div>
                    </div>
                    <!--// end row -->

                    <div class="row row-space-1">
                        <div class="col-sm-4 sm-margin-b-2">
                            <div class="service" data-height="height">
                                <div class="service-element">
                                    <i class="service-icon icon-notebook"></i>
                                </div>
                                <div class="service-info">
                                    <h3>Useful Documentation</h3>
                                    <p class="margin-b-5">Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>
                                </div>
                                <a href="#" class="content-wrapper-link"></a>    
                            </div>
                        </div>
                        <div class="col-sm-4 sm-margin-b-2">
                            <div class="service" data-height="height">
                                <div class="service-element">
                                    <i class="service-icon icon-speedometer"></i>
                                </div>
                                <div class="service-info">
                                    <h3>Fast Delivery</h3>
                                    <p class="margin-b-5">Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>
                                </div>
                                <a href="#" class="content-wrapper-link"></a>    
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="service" data-height="height">
                                <div class="service-element">
                                    <i class="service-icon icon-badge"></i>
                                </div>
                                <div class="service-info">
                                    <h3>Free Plugins</h3>
                                    <p class="margin-b-5">Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>
                                </div>
                                <a href="#" class="content-wrapper-link"></a>    
                            </div>
                        </div>
                    </div>
                    <!--// end row -->
                </div>
            </div>
        </div>
        <!-- End Service -->
            
        <!-- Contact -->
        <div id="contact">
            <!-- Contact List -->
            <div class="section-seperator">
                <div class="content-lg container">
                    <div class="row">
                        <!-- Contact List -->
                        <div class="col-sm-4 sm-margin-b-50">
                            <h3><a href="#">New York</a> <span class="text-uppercase margin-l-20">Head Office</span></h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incdidunt ut laboret dolor magna ut consequat siad esqudiat dolor</p>
                            <ul class="list-unstyled contact-list">
                                <li><i class="margin-r-10 color-base icon-call-out"></i> 1 012 3456 7890</li>
                                <li><i class="margin-r-10 color-base icon-envelope"></i> hq@aitOnepage.com</li>
                            </ul>
                        </div>
                        <!-- End Contact List -->

                        <!-- Contact List -->
                        <div class="col-sm-4 sm-margin-b-50">
                            <h3><a href="#">London</a> <span class="text-uppercase margin-l-20">Operation</span></h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incdidunt ut laboret dolor magna ut consequat siad esqudiat dolor</p>
                            <ul class="list-unstyled contact-list">
                                <li><i class="margin-r-10 color-base icon-call-out"></i> 44 77 3456 7890</li>
                                <li><i class="margin-r-10 color-base icon-envelope"></i> operation@AitOnepage.com</li>
                            </ul>
                        </div>
                        <!-- End Contact List -->

                        <!-- Contact List -->
                        <div class="col-sm-4 sm-margin-b-50">
                            <h3><a href="#">Singapore</a> <span class="text-uppercase margin-l-20">Finance</span></h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incdidunt ut laboret dolor magna ut consequat siad esqudiat dolor</p>
                            <ul class="list-unstyled contact-list">
                                <li><i class="margin-r-10 color-base icon-call-out"></i> 50 012 456 7890</li>
                                <li><i class="margin-r-10 color-base icon-envelope"></i> finance@AitOnepage.com</li>
                            </ul>
                        </div>
                        <!-- End Contact List -->
                    </div>
                    <!--// end row -->
                </div>
            </div>
            <!-- End Contact List -->
            
            <!-- Google Map -->
            <div id="map" class="map height-300"></div>
        </div>
        <!-- End Contact -->
        <!--========== END PAGE LAYOUT ==========-->

        <!--========== FOOTER ==========-->
        <footer class="footer">
            <!-- Links -->
            <div class="section-seperator">
                <div class="content-md container">
                    <div class="row">
                        <div class="col-sm-2 sm-margin-b-30">
                            <!-- List -->
                            <ul class="list-unstyled footer-list">
                                <li class="footer-list-item"><a href="#">Home</a></li>
                                <li class="footer-list-item"><a href="#">About</a></li>
                                <li class="footer-list-item"><a href="#">Work</a></li>
                                <li class="footer-list-item"><a href="#">Contact</a></li>
                            </ul>
                            <!-- End List -->
                        </div>
                        <div class="col-sm-2 sm-margin-b-30">
                            <!-- List -->
                            <ul class="list-unstyled footer-list">
                                <li class="footer-list-item"><a href="#">Twitter</a></li>
                                <li class="footer-list-item"><a href="#">Facebook</a></li>
                                <li class="footer-list-item"><a href="#">Instagram</a></li>
                                <li class="footer-list-item"><a href="#">YouTube</a></li>
                            </ul>
                            <!-- End List -->
                        </div>
                        <div class="col-sm-3">
                            <!-- List -->
                            <ul class="list-unstyled footer-list">
                                <li class="footer-list-item"><a href="#">Subscribe to Our Newsletter</a></li>
                                <li class="footer-list-item"><a href="#">Privacy Policy</a></li>
                                <li class="footer-list-item"><a href="#">Terms &amp; Conditions</a></li>
                            </ul>
                            <!-- End List -->
                        </div>
                    </div>
                    <!--// end row -->
                </div>
            </div>
            <!-- End Links -->

            <!-- Copyright -->
            <div class="content container">
                <div class="row">
                    <div class="col-xs-6">
                        <img class="footer-logo" src="/resources/design/img/logo_nits_one.png" alt="/resources/design/img/logo_nits_one.png">
                    </div>
                    <div class="col-xs-6 text-right">
                        <p class="margin-b-0"><a class="fweight-700" href="http://nits.co.zw">National IT Services</a> Copyright <a class="fweight-700" href="http://nits.co.zw">2017</a></p>
                    </div>
                </div>
                <!--// end row -->
            </div>
            <!-- End Copyright -->
        </footer>
        <!--========== END FOOTER ==========-->

        <!-- Back To Top -->
        <a href="javascript:void(0);" class="js-back-to-top back-to-top">Top</a>

        <!-- JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
        <!-- CORE PLUGINS -->
        <script src="/resources/design/vendor/jquery.min.js" type="text/javascript"></script>
        <script src="/resources/design/vendor/jquery-migrate.min.js" type="text/javascript"></script>
        <script src="/resources/design/vendor/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

        <!-- PAGE LEVEL PLUGINS -->
        <script src="/resources/design/vendor/jquery.easing.js" type="text/javascript"></script>
        <script src="/resources/design/vendor/jquery.back-to-top.js" type="text/javascript"></script>
        <script src="/resources/design/vendor/jquery.smooth-scroll.js" type="text/javascript"></script>
        <script src="/resources/design/vendor/jquery.wow.min.js" type="text/javascript"></script>
        <script src="/resources/design/vendor/swiper/js/swiper.jquery.min.js" type="text/javascript"></script>
        <script src="/resources/design/vendor/masonry/jquery.masonry.pkgd.min.js" type="text/javascript"></script>
        <script src="/resources/design/vendor/masonry/imagesloaded.pkgd.min.js" type="text/javascript"></script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBsXUGTFS09pLVdsYEE9YrO2y4IAncAO2U"></script>

        <!-- PAGE LEVEL SCRIPTS -->
        <script src="/resources/design/js/layout.min.js" type="text/javascript"></script>
        <script src="/resources/design/js/components/wow.min.js" type="text/javascript"></script>
        <script src="/resources/design/js/components/swiper.min.js" type="text/javascript"></script>
        <script src="/resources/design/js/components/masonry.min.js" type="text/javascript"></script>
        <script src="/resources/design/js/components/google-map.min.js" type="text/javascript"></script>

    </body>
    <!-- END BODY -->
</html>