$(function(){
	$('#validate').click(function(){
        form = $('#login');
        footer = $('footer');

        form.addClass('animate');
        form.one('webkitAnimationEnd oanimationend msAnimationEnd animationend', function (e) {
            form.removeClass('animate');
        });

        footer.addClass('animate');
        footer.one('webkitAnimationEnd oanimationend msAnimationEnd animationend', function (e) {
            footer.removeClass('animate');
        });
    });
});