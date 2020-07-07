<#import "/templates/system/common/cstudio-support.ftl" as studio />
<div class="content" <@studio.iceAttr component=contentModel/>>
    <div class="section-title">
        <div class="section-title__content block">
            <h1 class="section-title__content-text text--uppercase">Công bố thông tin</h1>
        </div>
    </div>
    <div class="container">
	    <div id ="panigation-relation3">
            <#if (posts)??>
            	<#list posts as aPost>
            	    <#if aPost.category = "announcement">
                    <div class="relation3">
                        <a class="violet-color font-weight-bold" style="font-size: 22px" href="${aPost.url}" class="d-block">${aPost.title}</a>
                        <p style="line-height: 1.5;  font-size: 16px; color: #636466; font-weight: 100;">(${aPost.time?date?string('dd/MM/yyyy')})</p>
                    </div>
                    </#if>
                </#list>
            </#if>
        </div>
        <nav aria-label="Page navigation example" style="margin-bottom: 50px;">
          <ul class="pagination pagi3 justify-content-center">
            <li id="previous-page3" class="page-item"><a class="page-link" href="javacript:void(0)"><span class="fas fa-angle-left"></a></li>
          </ul>
        </nav>
    </div>
    
    <div class="section-title">
        <div class="section-title__content block">
            <h1 class="section-title__content-text text--uppercase">Đại hội đồng cổ đông</h1>
        </div>
    </div>
    <div class="container">
	    <div id ="panigation-relation4">
            <#if (posts)??>
            	<#list posts as aPost>
            	    <#if aPost.category = "announcement">
                    <div class="relation4">
                        <a class="violet-color font-weight-bold" style="font-size: 22px" href="${aPost.url}" class="d-block">${aPost.title}</a>
                        <p style="line-height: 1.5;  font-size: 16px; color: #636466; font-weight: 100;">(${aPost.time?date?string('dd/MM/yyyy')})</p>
                    </div>
                    </#if>
                </#list>
            </#if>
        </div>
        <nav aria-label="Page navigation example">
          <ul class="pagination pagi4 justify-content-center">
            <li id="previous-page4" class="page-item"><a class="page-link" href="javacript:void(0)"><span class="fas fa-angle-left"></a></li>
          </ul>
        </nav>
    </div>
 

</div>
<@studio.toolSupport />