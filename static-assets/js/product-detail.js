$(document).ready(function(){
    // Panigation list product
    
    var numberOfProducts = $("#panigation-product .product-item").length;
    var limitPerPage = 6;
    
    $("#panigation-product .product-item:gt(" + (limitPerPage -1 )+")").hide();
    
    var totalPages;
    if ((numberOfProducts / limitPerPage) % 2 == 0) {
       totalPages =  Math.round(numberOfProducts / limitPerPage );
    } else {
        totalPages =  Math.round(numberOfProducts / limitPerPage ) + 1;
    }
    
    $('.pagi').append("<li class='page-item current-page active'><a class='page-link' href='javacript:void(0)'>"+ 1+"</a></li>");
    
    for (let i=2; i<= totalPages;i++){
        $(".pagi").append("<li class='page-item current-page'><a class='page-link' href='javascript:void(0)'>"+ i +"</a></li>");
    }
    
    $('.pagi').append("<li id='next-page' class='page-item'><a class='page-link' href='javascript:void(0)'><span class='fas fa-angle-right'></a></li>");
    
    $('.pagi li.current-page').on("click", function(){
        if($(this).hasClass("active")){
            return false;
        } else{
            var currentPage = $(this).index();
            $('.pagi li').removeClass("active");
            $(this).addClass("active");
            $("#panigation-product .product-item").hide();
            var total = limitPerPage * currentPage;
            for(let i = total - limitPerPage; i<total; i++){
                $("#panigation-product .product-item:eq("+ i +")").show();
            }
        }
    });
    
    $("#next-page").on("click", function() {
      var currentPage = $(".pagination li.active").index(); 
      if (currentPage === totalPages) {
        return false; 
      } else {
        currentPage++; 
        $(".pagi li").removeClass('active'); 
        $("#panigation-product .product-item").hide();
        var total = limitPerPage * currentPage; 
        for (let i = total - limitPerPage; i < total; i++) {
          $("#panigation-product .product-item:eq(" + i + ")").show(); 
        }
    
        $(".pagi li.current-page:eq(" + (currentPage -1) + ")").addClass('active'); 
      }
    });
    
    $("#previous-page").on("click", function() {
          var currentPage = $(".pagi li.active").index(); 
          if (currentPage === 1) {
            return false; 
          } else {
            currentPage--; 
            $(".pagi li").removeClass('active'); 
            $("#panigation-product .product-item").hide();
            var grandTotal = limitPerPage * currentPage; 
            for (var i = grandTotal - limitPerPage; i < grandTotal; i++) {
              $("#panigation-product .product-item:eq(" + i + ")").show();
            }
            $(".pagi li.current-page:eq(" + (currentPage - 1) + ")").addClass('active'); 
          }
    });
    
});