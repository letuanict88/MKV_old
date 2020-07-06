<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!-- products -->
    <div class="section-title">
        <div class="section-title__content block">
            <h1 class="section-title__content-text text--uppercase">${contentModel.title_s}</h1>
        </div>
    </div>
    <section class="products">
        <div class="products__container block">
            <div class="products__content">
                <section class="products__list">
                    <div class="products__list-items">
                        <div class="col-md-1">
                            <h3 class="text--center violet-color text--uppercase font-weight-bold" style="margin-top: 150%;font-size: 20px;">${contentModel.photoTitle_s}</h3>
                        </div>
                        <div class="col-md-5">
                            <img class="products__img img-full" src="${contentModel.photoAvatar1_s}" alt="Product image"/>
                        </div>
                        <div class="col-md-5">
                            <img class="products__img img-full" src="${contentModel.photoAvatar2_s}" alt="Product image"/>
                        </div>
                        <div class="col-md-1">
                            <a href="${contentModel.photoURL_s}">Xem</a>
                        </div>
                    </div>
                </section>
            </div>
        </div>
        
        <div class="products__container block">
            <div class="products__content">
                <section class="products__list">
                    <div class="products__list-items">
                        <div class="col-md-1">
                            <h3 class="text--center violet-color text--uppercase font-weight-bold" style="margin-top: 150%;font-size: 20px;">${contentModel.videoTitle_s}</h3>
                        </div>
                        <div class="col-md-5">
                            <img id="video-1" class="products__img img-full" src="${contentModel.photoAvatar1_s}" alt="Product image"/>
                            <button id="btn-1" style="display:none" type="button" class="btn btn-primary video-btn" data-toggle="modal" data-src="${contentModel.video1_s}" data-target="#videoModal"></button>
                        </div>
                        <div class="col-md-5">
                           <img id="video-2" class="products__img img-full" src="${contentModel.photoAvatar1_s}" alt="Product image"/>
                           <button id="btn-2" style="display:none" type="button" class="btn btn-primary video-btn" data-toggle="modal" data-src="${contentModel.video2_s}" data-target="#videoModal"></button>
                        </div>
                        <div class="col-md-1">
                            <a href="${contentModel.videoURL_s}">Xem</a>
                        </div>
                    </div>
                </section>
            </div>
        </div>
        
        <div class="products__container block">
            <div class="products__content">
                <section class="products__list">
                    <div class="products__list-items">
                        <div class="col-md-1">
                            <h3 class="text--center violet-color text--uppercase font-weight-bold" style="margin-top: 150%;font-size: 20px;">${contentModel.documentTitle_s}</h3>
                        </div>
                        <div class="col-md-5">
                            <img class="products__img img-full" src="${contentModel.documentAvatar1_s}" alt="Product image"/>
                        </div>
                        <div class="col-md-5">
                            <img class="products__img img-full" src="${contentModel.documentAvatar2_s}" alt="Product image"/>
                        </div>
                        <div class="col-md-1">
                            <a href="${contentModel.documentURL_s}">Xem</a>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </section>
    <!-- products -->
    <!-- Modal -->
    <div class="modal fade" id="videoModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-body">
           <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>        
            <!-- 16:9 aspect ratio -->
            <div class="embed-responsive embed-responsive-16by9">
                  <iframe class="embed-responsive-item" src="" id="video"  allowscriptaccess="always" allow="autoplay"></iframe>
            </div>
          </div>
        </div>
      </div>
    </div> 
<@studio.toolSupport />