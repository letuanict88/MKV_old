<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="shortcut icon" href="/static-assets/images/logos/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="/static-assets/plugins/flag-icons/css/flag-icon.min.css"/>
    
    <!-- FontAwesome -->
    <link rel="stylesheet" href="/static-assets/plugins/font-awesomeweb/css/all.min.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:ital,wght@0,300;0,400;0,700;1,300&display=swap" rel="stylesheet">    
    <!-- Owl Carousel CSS -->
    <link rel="stylesheet" href="/static-assets/plugins/OwlCarousel/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/static-assets/plugins/OwlCarousel/css/owl.theme.default.min.css">
    
    <link rel="stylesheet" href="/static-assets/plugins/bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/static-assets/plugins/bootstrap-select/dist/css/bootstrap-select.min.css"/>
    <link rel="stylesheet" href="/static-assets/css/custom.css"/>
    <link rel="stylesheet" href="/static-assets/css/dtycl.css">
    <link rel="stylesheet" href="/static-assets/css/responsive.css">
    <style>
        .product-header__name {
            position : relative;
        }
        .product-header__name--content {
            line-height: 11;
            text-align: center;
            font-size: 30px;
        }
        .product-header__img--content {
            display: block;
            margin-left: auto;
            margin-right: auto;
        }
        
        .product-header__buy {
            text-align: center;
        }
        .product-header__buy a span {
            font-size: 30px;
            background-color: #322372;
            border-radius: 50%;
            padding: 48px 10px;
            line-height: 11;
        }
    </style>
    <script src="/static-assets/js/pagination.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
  </head>
  <body>
    <@renderComponent component=contentModel.header_o.item />
    <main>
        <#list (contentModel.section_o.item)![] as section>
            <@renderComponent parent=contentModel component=section />
        </#list>
        <div class="content">
            <div class="section-title">
                <div class="section-title__content block">
                    <span class="d-inline">
                        <span class="section-title__content-text text--uppercase" id="parent-title"></span>
                        <span class="text-white font-weight-bold" id="child-title" style="font-size: 32px;"></span>
                    </span>
                </div>
            </div>
            <div class="container pl-lg-0 pl-md-0">
                <div class="product-header row py-2 mr-md-0 mr-lg-0 ml-lg-0 ml-md-0" style="background-color: #ffcb0c;">
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 product-header__name"><h1 class="font-weight-bold violet-color text--uppercase product-header__name--content">${contentModel.productName_s}</h1></div>
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 product-header__img"><img class="product-header__img--content mt-lg-5 mt-md-5" src="${contentModel.productImage_s}" width="254" height="262"/></div>
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 product-header__buy"><a href="/lien-he"><span class="text-white font-weight-bold">Đặt mua</span></a></div>
                </div>
                <div class="col-md-12 p-lg-0 p-md-0 mb-5" style="font-size: 16px;margin-top:40px;">
                    ${contentModel.productDescription_html}
                </div>
                <div class="products__list-title" style="margin-top: 60px;">
                    <h1 class="text--uppercase violet-color diffrence-product">sản phẩm khác</h1>
                </div>
                <div class="mt-4">
                     <div class="row" id="panigation-product">
                        <#if (productOther)??>
                        	<#list productOther as product>
                                <div class="col-lg-2 col-md-2 col-sm-6 product-item mb-3">
                                    <a href="${product.url}"><img  class="img-100" src="${product.avatar}" width="120" height="83"/></a>
                                    <p style="font-size: 23px;" class="d-block font-weight-bold violet-color mt-3">${product.title}</p>
                                </div>
                            </#list>
                        </#if>
                    </div>
                    <nav aria-label="Page navigation example">
                        <ul class="pagination pagi justify-content-center">
                            <li id="previous-page" class="page-item"><a class="page-link" href="javacript:void(0)"><span class="fas fa-angle-left"></a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </main>
    <@renderComponent component=contentModel.slideLogo_o.item />
    <@renderComponent component=contentModel.footer_o.item />
    <script src="/static-assets/plugins/jquery/jquery(3.4.1.).js"></script>
    <script src="/static-assets/js/popper.min.js"></script>
    <script src="/static-assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="/static-assets/plugins/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
    <script src="/static-assets/plugins/OwlCarousel/js/owl.carousel.min.js"></script>
    <script src="/static-assets/js/logos.js"></script>
    <script src="/static-assets/js/logos.js"></script>
    <script src="/static-assets/js/slide.js"></script>
    <script src="/static-assets/js/nav.js"></script>
    <script src="/static-assets/js/product-detail.js"></script>
    <script src="/static-assets/js/search.js"></script>
    <input hidden value="${contentModel.productgrouplv1_o.item.key}" id="category"/>
    <input hidden value="${contentModel.productgrouplv2_o.item.key}" id="child-category"/>
    <div id="lst-categories">
        <#list categories.items as cate>
            <input hidden value="${cate.value}/${cate.label}"/>
        </#list>
    </div>
    <div id="child-cate">
        <#list childCategories.items as cate>
            <input hidden value="${cate.value}/${cate.label}"/>
        </#list>
    </div>
    <script>
    $(document).ready(function(){
        var lstCate = $('#lst-categories').children();
        var childCate = $('#child-cate').children();
        
        for (let i = 0; i< lstCate.length; i++) {
           let strSplit = $(lstCate[i]).val().split('/');
           if (strSplit[0] == $('#category').val()) {
               $('#parent-title').text(strSplit[1] + "/");
           }
        }
        
        for (let i = 0; i< childCate.length; i++) {
           let strSplit = $(childCate[i]).val().split('/');
           if (strSplit[0] == $('#child-category').val()) {
               $('#child-title').text(strSplit[1])
           }
        }
        
        var url = window.location.href;
        if (url.indexOf('/en') > -1) {
            $('.diffrence-product').text('other products');
        }
    });
    
    $('body').find('strong').addClass('violet-color');
    $('body').find('strong').parent('span').children().removeClass('violet-color');
    
  </script>
  </body>
</html>
<@studio.toolSupport /> 
