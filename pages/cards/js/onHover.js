$(".card:nth-child(1)").hover(
    function() {
        $(this).addClass("purple");
        $(this).find(".face1 img").css('filter', 'invert(100%)')
        $(this).find(".face1 h2").css('color', '#ffffff')
        $(this).find(".face2 .content").addClass("popout");
    }, 
    function() {
        $(this).removeClass("purple");
        $(this).find(".face1 img").css('filter', 'invert(40%)')
        $(this).find(".face1 h2").css('color', '#777777')
        $(this).find(".face2 .content").removeClass("popout");
    }
);

$(".card:nth-child(2)").hover(
    function() {
        $(this).addClass("green");
        $(this).find(".face1 img").css('filter', 'invert(100%)')
        $(this).find(".face1 h2").css('color', '#ffffff')
        $(this).find(".face2 .content").addClass("popout");
    }, 
    function() {
        $(this).removeClass("green");
        $(this).find(".face1 img").css('filter', 'invert(40%)')
        $(this).find(".face1 h2").css('color', '#777777')
        $(this).find(".face2 .content").removeClass("popout");
    }
);

$(".card:nth-child(3)").hover(
    function() {
        $(this).addClass("orange");
        $(this).find(".face1 img").css('filter', 'invert(100%)')
        $(this).find(".face1 h2").css('color', '#ffffff')
        $(this).find(".face2 .content").addClass("popout");
    }, 
    function() {
        $(this).removeClass("orange");
        $(this).find(".face1 img").css('filter', 'invert(40%)')
        $(this).find(".face1 h2").css('color', '#777777')
        $(this).find(".face2 .content").removeClass("popout");
    }
);