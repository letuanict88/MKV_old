<#import "/templates/system/common/cstudio-support.ftl" as studio />
<section class="introduce">
    <div class="section-title">
        <div class="section-title__content block">
            <h1 class="section-title__content-text text--uppercase">Giới thiệu chung</h1>
        </div>
    </div>
    <div class="container">
    <section class="introduce">
        <div class="introduce__item" style="background-image: url(${contentModel.introduction_s});">
            <a class="introduce__item-link" href="#"></a>
            <p class="introduce__item-text introduce__item-text--purple text--uppercase font-bold">${contentModel.titleintro_s}</p>
        </div>

        <div class="introduce__item" style="background-image: url(${contentModel.history_s});">
            <a class="introduce__item-link" href="#"></a>
            <p class="introduce__item-text introduce__item-text--yellow text--uppercase font-bold">${contentModel.titlehistory_s}</p>
        </div>

        <div class="introduce__item" style="background-image: url(${contentModel.vision_s});">
            <a class="introduce__item-link" href="#"></a>
            <p class="introduce__item-text introduce__item-text--purple text--uppercase font-bold">${contentModel.titlevision_s}</p>
        </div>

        <div class="introduce__item" style="background-image: url(${contentModel.award_s});">
            <a class="introduce__item-link" href="#"></a>
            <p class="introduce__item-text introduce__item-text--yellow text--uppercase font-bold">${contentModel.titleaward_s}</p>
        </div>
</div>
</section>
<@studio.toolSupport />