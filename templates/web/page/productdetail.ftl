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
    
    <!-- Owl Carousel CSS -->
    <link rel="stylesheet" href="/static-assets/plugins/OwlCarousel/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/static-assets/plugins/OwlCarousel/css/owl.theme.default.min.css">
    
    <link rel="stylesheet" href="/static-assets/plugins/bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/static-assets/plugins/bootstrap-select/dist/css/bootstrap-select.min.css"/>
    <link rel="stylesheet" href="/static-assets/css/custom.css"/>
    <link rel="stylesheet" href="/static-assets/css/dtycl.css">
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
                    <h1 class="section-title__content-text text--uppercase" id="product-title"></h1>
                </div>
            </div>
            
            <div class="container" style="background-color: #ffcb08">
                   
                    <span>
                        
                    </span>
                    <span>
                        
                    </span>
            </div>
            <div class="container">
                 <span>
                        <h1 class="font-weight-bold violet-color">${contentModel.productName_s}</h1>
                        <img src="${contentModel.productImage_s}"/>
                        <span>Đặt mua</span>
                    </span>
                <div class="products__list-title">
                    <h1 class="text--uppercase">sản phẩm tương tự</h1>
                </div>
                <div>
                    <div class="col-md-12">
                        ${contentModel.productDescription_html}
                    </div>
                   
                    <div class="products__list-items"> 
                        <#if (productOther)??>
                            <#list productOther as item>
                                <div class="products__list-item">
                                    <a href="${item.url}"><img class="products__img" style="max-width:100%; height:auto;" src="${item.avatar}" width="135" height="140"/></a>
                                    <p class="text-center">${item.title}</p>
                                </div>
                            </#list>
                        </#if>
                    </div>
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
    <script src="/static-assets/js/group-product.js"></script>
    <#--<script src="/static-assets/js/group-child-product.js"></script>-->
    <script src="/static-assets/js/logos.js"></script>
    <script src="/static-assets/js/slide.js"></script>
    <script src="/static-assets/js/nav.js"></script>
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
        var title = "";
        var lstCate = $('#lst-categories').children();
        var childCate = $('#child-cate').children();
        
        for (let i = 0; i< lstCate.length; i++) {
           let strSplit = $(lstCate[i]).val().split('/');
           if (strSplit[0] == $('#category').val()) {
               title += (strSplit[1] + "/");
           }
        }
        
        for (let i = 0; i< childCate.length; i++) {
           let strSplit = $(childCate[i]).val().split('/');
           if (strSplit[0] == $('#child-category').val()) {
               title += strSplit[1];
           }
        }
        
        $('#product-title').text(title);
    });
  </script>
  </body>
</html>
<@studio.toolSupport /> 
