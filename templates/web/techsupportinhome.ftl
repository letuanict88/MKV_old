            <section class="services">
                <div class="section-title" style="margin-bottom: 0px;">
                    <div class="section-title__content block">
                        <h1 class="section-title__content-text text--uppercase">điều trị bệnh</h1>
                    </div>
                </div>

    <div class="services__container block flex">
        <section class="services__img">
            <img class="full-size" src="${contentModel.image_s}" alt="Services image">
        </section>

        <section class="services__content">
                <div class="services__content-text">
                    <h3 class="text--uppercase" style="font-weight: bold; font-size: 20px;margin-bottom: 15px; color: #322372;" >${contentModel.title_s}</h3>
                    <div class="truncate-multi-line text--justify" style="font-size: 16px; line-height: 1.5">
                        ${contentModel.description_html}
                    </div>
                </div>
                <a class="view-more flex" href="/ho-tro-ky-thuat/benh-va-dieu-tri">
                    <span style="color: #322372;">Xem thêm</span>
                    <img src="/static-assets/images/icon_arrow_white.png" alt="Arrow icon">
                </a>
            <div class="line"></div>

            <#list lstTechSp as item>
            	<a class="services__link" href="${item.url}"><h3 style="color: #322372;" >${item.title}</h3></a>
            </#list>
        </section>
    </div>
</section>