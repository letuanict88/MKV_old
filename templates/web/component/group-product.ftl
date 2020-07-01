<#import "/templates/system/common/cstudio-support.ftl" as studio />
<section class="products">
    <div class="section-title">
        <div class="section-title__content block">
            <h1 class="section-title__content-text text--uppercase">${contentModel.title_s}</h1>
        </div>
    </div>
    <div class="products__container block">
        <div class="products__content">
            <section class="products__logos container">
        	    <#list contentModel.groupProduct_o.item as item>
        	        <div class="products__logo text--center">
                        <a href="${item.groupChildProductURL_s}">
                            <img class="products__img" src="${item.groupProductIcon_s}" alt="Product logo" width="265" height="240">
                            <h3 class="text--uppercase">${item.groupProductName_s}</h3>
                        </a>
                    </div>
            	</#list>
            </section>
        </div>
    </div>
    <div class="container">
        <hr class="line-hozital"/>
        <hr class="line-hozital"/>
        
        <div class="row" id ="panigation-product">
            <#if (products)??>
            	<#list products as product>
                    <div class="col-lg-2 col-md-2 col-xs-6 col-sm-6 product-item">
                        <img class="img-full" src="${product.avatar}" width="135" height="140"/>
                        <p class="d-block">${product.title}</p>
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
</section>
<@studio.toolSupport />