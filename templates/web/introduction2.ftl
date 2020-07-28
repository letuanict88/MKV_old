<#import "/templates/system/common/cstudio-support.ftl" as studio />
<section>
    <div class="section-title">
        <div class="section-title__content block">
            <h1 class="section-title__content-text text--uppercase">${contentModel.title_s}</h1>
        </div>
    </div>
    <div class="container">
        <section class="introduce" style="width:1145px;">
            <div class="introduce__item">
                <a class="introduce__item-link" href="${contentModel.urlintro_s}"></a>
                <p class="introduce__item-text introduce__item-text--purple text--uppercase" style="font-weight:bold; font-size:20px;">${contentModel.titleintro_s}</p>
                <img class="introduce__item-bg" src="/static-assets/images/slides/introduce_bg_yellow.png" alt="Introduce background">
                <img class="introduce__item-img" src="${contentModel.introduction_s}" alt="Introduce image">
            </div>

            <div class="introduce__item">
                <a class="introduce__item-link" href="${contentModel.history_s}"></a>
                <p class="introduce__item-text introduce__item-text--yellow text--uppercase" style="font-weight:bold; font-size:20px;">${contentModel.titlevision_s}</p>
                <img class="introduce__item-bg" src="/static-assets/images/slides/introduce_bg_purple.png" alt="Introduce background">
                <img class="introduce__item-img" src="${contentModel.history_s}" alt="Introduce image">
            </div>

            <div class="introduce__item">
                <a class="introduce__item-link" href="${contentModel.urlvision_s}"></a>
                <p class="introduce__item-text introduce__item-text--purple text--uppercase" style="font-weight:bold; font-size:20px;">${contentModel.titlevision_s}</p>
                <img class="introduce__item-bg" src="/static-assets/images/slides/introduce_bg_yellow.png" alt="Introduce background">
                <img class="introduce__item-img" src="${contentModel.vision_s}" alt="Introduce image">
            </div>

            <div class="introduce__item">
                <a class="introduce__item-link" href="${contentModel.urlaward_s}"></a>
                <p class="introduce__item-text introduce__item-text--yellow text--uppercase" style="font-weight:bold; font-size:20px;">${contentModel.titleaward_s}</p>
                <img class="introduce__item-bg" src="/static-assets/images/slides/introduce_bg_purple.png" alt="Introduce background">
                <img class="introduce__item-img" src="${contentModel.award_s}" alt="Introduce image">
            </div>
        </section>
    </div>
</div>
</section>

<@studio.toolSupport />