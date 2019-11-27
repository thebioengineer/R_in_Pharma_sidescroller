
function doResize(event, el, ui) {

    var scale;
    var translationY;

    scale =   Math.min(
      ui.body.height / 1000 ,
      ui.body.width / 1700
      );

    translationY =  60 * Math.max(0, 0.9-scale) ;

    el.css({
     transform: "translateY(-" + translationY + "%) " + "scale(" + scale + ") ",
     position: "relative"
    });

}

function set_slide_container_size(event,el,ui){
  el.css({
    height: ui.body.height * 0.98, /* make a scoche smaller than the body */
    width: ui.body.width * 0.98,
    margin: "auto"
  });
}


$(document).ready(function(){
		$('.slide_master').slick({
			accessibility: true,
			dots: true,
			infinite: false,
			speed: 300,
			slidesToShow: 1,
			centerMode: true,
			variableWidth: true,
			swipe: false
			});

		var $slide_wrapper = $(".slide_master_wrapper");
		var $slide_master = $(".slide_master");
	  var $wrapper = $("body");

	  set_slide_container_size(null,
		  $slide_wrapper,
		  { body: {
		      height: window.innerHeight,
		      width: window.innerWidth
		    }
		});

		doResize(null,
		  $slide_master,
		  { body: {
		      height: window.innerHeight,
		      width: window.innerWidth
		    }
		  });



	$('.slide_master').on('afterChange', function(event, slick, currentSlide, nextSlide){
    var slide = $(".slick-current").find(".slide_container");
    slide.css('visibility','visible');
  });

});



$(window).resize(function() {
  	var $slide_wrapper = $(".slide_master_wrapper");
		var $slide_master = $(".slide_master");
	  var $wrapper = $("body");

		doResize(null,
		  $slide_master,
		  { body: {
		      height: window.innerHeight,
		      width: window.innerWidth
		    }
		  });
		set_slide_container_size(null,
		  $slide_wrapper,
		  { body: {
		      height: window.innerHeight,
		      width: window.innerWidth
		    }
		});
});






