$(".card:nth-child(1)").hover(
    function() {
        console.log($(this).find(".container"));
        $(this).find(".container .overlay").addClass("spread");
        $(this).find(".container h2").css('color', 'white');
        $(this).find(".container p").css('color', 'white');
    }, 
    function() {
        $(this).find(".container .overlay").removeClass("spread");
        $(this).find(".container h2").css('color', 'black');
        $(this).find(".container p").css('color', 'black');
    }
);

$(".card:nth-child(2)").hover(
    function() {
        console.log($(this).find(".container"));
        $(this).find(".container .overlay").addClass("spread");
        $(this).find(".container h2").css('color', 'white');
        $(this).find(".container p").css('color', 'white');
    }, 
    function() {
        $(this).find(".container .overlay").removeClass("spread");
        $(this).find(".container h2").css('color', 'black');
        $(this).find(".container p").css('color', 'black');
    }
);

$(".card:nth-child(3)").hover(
    function() {
        console.log($(this).find(".container"));
        $(this).find(".container .overlay").addClass("spread");
        $(this).find(".container h2").css('color', 'white');
        $(this).find(".container p").css('color', 'white');
    }, 
    function() {
        $(this).find(".container .overlay").removeClass("spread");
        $(this).find(".container h2").css('color', 'black');
        $(this).find(".container p").css('color', 'black');
    }
);