var headerDown = $('#headDown');
var headdb = $('#headDownblk');
var loginBtn = $('.logup');
$(document).ready(function () {
    $('.logup').on('click', function () {
    	headdb.slideToggle();
    	loginBtn = true;
    });
    headdb.click(function(){
    	loginBtn = true;
    });
    $('.registerBtn').click(function(){
    	$('#registerBlk').show();
    	$('#loginBlk').hide();
    });
    $('.singupLabel').click(function(){
    	$('#registerBlk').hide();
    	$('#loginBlk').show();
    });
    $('html').click(function (){
    	if(!loginBtn){
    		headdb.slideUp();
    	}
    	loginBtn = false;
    });
});