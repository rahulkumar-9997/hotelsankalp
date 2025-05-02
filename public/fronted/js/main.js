(function ($) {
"use strict";



// skill
$(".skill-per").each(function() {
  var $this = $(this);
  var id = $this.attr("id");
  $this.css("width", id + "%");
  $({ animatedValue: 0 }).animate(
    { animatedValue: id },
    {
      duration: 1000,
      step: function() {
        $this.attr("id", Math.floor(this.animatedValue) + "%");
      },
      complete: function() {
        $this.attr("id", Math.floor(this.animatedValue) + "%");
      }
    }
  );
});
    
    
// sticky
$(window).on('scroll', function () {
	var scroll = $(window).scrollTop();
	if (scroll < 200) {
		$("#header-sticky").removeClass("sticky-menu animated fadeInDown");
	} else {
		$("#header-sticky").addClass("sticky-menu animated fadeInDown");
	}
});

// RESPONSIVE MENU
$('.responsive').on('click', function (e) {
	$('#mobile-menu').slideToggle();
});

// meanmenu
	$('#mobile-menu').meanmenu({
		meanMenuContainer: '.mobile-menu',
		meanScreenWidth: "992"
	});

	$('.info-bar').on('click', function () {
		$('.extra-info').addClass('info-open');
	})

	$('.close-icon').on('click', function () {
		$('.extra-info').removeClass('info-open');
	})

// offcanvas menu
$(".menu-tigger").on("click", function () {
	$(".offcanvas-menu,.offcanvas-overly").addClass("active");
	return false;
});
$(".menu-close,.offcanvas-overly").on("click", function () {
	$(".offcanvas-menu,.offcanvas-overly").removeClass("active");
});
    


// menu toggle
$(".main-menu li a").on('click', function () {
	if ($(window).width() < 700) {
		$("#mobile-menu").slideUp();
	}
});

// smoth scroll
$(function () {
	$('a.smoth-scroll').on('click', function (event) {
		var $anchor = $(this);
		$('html, body').stop().animate({
			scrollTop: $($anchor.attr('href')).offset().top - 100
		}, 1000);
		event.preventDefault();
	});
});

// mainSlider
function mainSlider() {
	var BasicSlider = $('.slider-active');
	BasicSlider.on('init', function (e, slick) {
		var $firstAnimatingElements = $('.single-slider:first-child').find('[data-animation]');
		doAnimations($firstAnimatingElements);
	});
	BasicSlider.on('beforeChange', function (e, slick, currentSlide, nextSlide) {
		var $animatingElements = $('.single-slider[data-slick-index="' + nextSlide + '"]').find('[data-animation]');
		doAnimations($animatingElements);
	});
	BasicSlider.slick({
		autoplay: false,
		autoplaySpeed: 2000,
		speed: 2000,
		dots:false ,
		// fade: true,
		arrows: true,
		prevArrow: '<button type="button" class="slick-prev mb-105"><span class="mb-105"><i class="far fa-angle-left mb-105"></i></span></button>',
		nextArrow: '<button type="button" class="slick-next mb-105 "><span class="mb-105"><i class="far fa-angle-right mb-105"></i></span></button>',
		responsive: [
			{ breakpoint: 1200, settings: { dots: false, arrows: false } }
		]
	});

	function doAnimations(elements) {
		var animationEndEvents = 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend';
		elements.each(function () {
			var $this = $(this);
			var $animationDelay = $this.data('delay');
			var $animationType = 'animated ' + $this.data('animation');
			$this.css({
				'animation-delay': $animationDelay,
				'-webkit-animation-delay': $animationDelay
			});
			$this.addClass($animationType).one(animationEndEvents, function () {
				$this.removeClass($animationType);
			});
		});
	}
}
mainSlider();

$('.slider-for-big_1').slick({
	slidesToShow: 1,
	slidesToScroll: 1,
	arrows: false,
	fade: true,
	autoplay: false,
	speed: 1000,
	asNavFor: '.slider-nav-thumb_1'
  });
  $('.slider-nav-thumb_1').slick({
	slidesToShow: 5,
	slidesToScroll: 1,
	asNavFor: '.slider-for-big_1',
	dots: false,
	centerMode: false,
	focusOnSelect: true,
	arrows: false,
	loop:true,
	responsive: [{
			breakpoint: 992,
			settings: {
				vertical: false,
			}
		},
		{
			breakpoint: 768,
			settings: {
				vertical: false,
			}
		},
		{
			breakpoint: 580,
			settings: {
				vertical: false,
				slidesToShow: 3,
			}
		},
		{
			breakpoint: 380,
			settings: {
				vertical: false,
				slidesToShow: 2,
			}
		}
	]
  });

  $('.slider-for-big_2').slick({
	slidesToShow: 1,
	slidesToScroll: 1,
	arrows: false,
	fade: true,
	autoplay: false,
	speed: 1000,
	asNavFor: '.slider-nav-thumb_2'
  });
  $('.slider-nav-thumb_2').slick({
	slidesToShow: 5,
	slidesToScroll: 1,
	asNavFor: '.slider-for-big_2',
	dots: false,
	centerMode: false,
	focusOnSelect: true,
	arrows: false,
	loop:true,
	responsive: [{
			breakpoint: 992,
			settings: {
				vertical: false,
			}
		},
		{
			breakpoint: 768,
			settings: {
				vertical: false,
			}
		},
		{
			breakpoint: 580,
			settings: {
				vertical: false,
				slidesToShow: 3,
			}
		},
		{
			breakpoint: 380,
			settings: {
				vertical: false,
				slidesToShow: 2,
			}
		}
	]
  });

  $('.slider-for-big_3').slick({
	slidesToShow: 1,
	slidesToScroll: 1,
	arrows: false,
	fade: true,
	autoplay: false,
	speed: 1000,
	asNavFor: '.slider-nav-thumb_3'
  });
  $('.slider-nav-thumb_3').slick({
	slidesToShow: 5,
	slidesToScroll: 1,
	asNavFor: '.slider-for-big_3',
	dots: false,
	centerMode: false,
	focusOnSelect: true,
	arrows: false,
	loop:true,
	responsive: [{
			breakpoint: 992,
			settings: {
				vertical: false,
			}
		},
		{
			breakpoint: 768,
			settings: {
				vertical: false,
			}
		},
		{
			breakpoint: 580,
			settings: {
				vertical: false,
				slidesToShow: 3,
			}
		},
		{
			breakpoint: 380,
			settings: {
				vertical: false,
				slidesToShow: 2,
			}
		}
	]
  });

  $('.slider-for-big_4').slick({
	slidesToShow: 1,
	slidesToScroll: 1,
	arrows: false,
	fade: true,
	autoplay: false,
	speed: 1000,
	asNavFor: '.slider-nav-thumb_4'
  });
  $('.slider-nav-thumb_4').slick({
	slidesToShow: 5,
	slidesToScroll: 1,
	asNavFor: '.slider-for-big_4',
	dots: false,
	centerMode: false,
	focusOnSelect: true,
	arrows: false,
	loop:true,
	responsive: [{
			breakpoint: 992,
			settings: {
				vertical: false,
			}
		},
		{
			breakpoint: 768,
			settings: {
				vertical: false,
			}
		},
		{
			breakpoint: 580,
			settings: {
				vertical: false,
				slidesToShow: 3,
			}
		},
		{
			breakpoint: 380,
			settings: {
				vertical: false,
				slidesToShow: 2,
			}
		}
	]
  });
// services-active
$('.services-active').slick({
	dots: true,
	infinite: true,
	arrows: false,
	speed: 1000,
	slidesToShow: 3,
	slidesToScroll: 1,
	responsive: [
		{
			breakpoint: 1200,
			settings: {
				slidesToShow: 3,
				slidesToScroll: 1,
				infinite: true,
				dots: true
			}
		},
		{
			breakpoint: 992,
			settings: {
				slidesToShow: 2,
				slidesToScroll: 1
			}
		},
		{
			breakpoint: 767,
			settings: {
				slidesToShow: 1,
				slidesToScroll: 1
			}
		}
	]
});
    
    // team-active
$('.team-active').slick({
	dots: true,
	infinite: true,
	arrows: false,
	prevArrow: '<button type="button" class="slick-prev"><i class="far fa-chevron-left"></i></button>',
	nextArrow: '<button type="button" class="slick-next"><i class="far fa-chevron-right"></i></button>',
	speed: 1000,
	slidesToShow:4,
	slidesToScroll: 1,
	responsive: [
		{
			breakpoint: 1200,
			settings: {
				slidesToShow: 3,
				slidesToScroll: 1,
				infinite: true,
				dots: true
			}
		},
		{
			breakpoint: 992,
			settings: {
				slidesToShow: 2,
				slidesToScroll: 1
			}
		},
		{
			breakpoint: 767,
			settings: {
				slidesToShow: 1,
				slidesToScroll: 1
			}
		}
	]
});
// portfolio-active
$('.class-active').slick({
	dots: false,
	infinite: true,
    arrows: true,
	prevArrow: '<button type="button" class="slick-prev"><i class="fal fa-angle-left"></i></button>',
	nextArrow: '<button type="button" class="slick-next"><i class="fal fa-angle-right"></i></button>',
	speed: 1000,
	slidesToShow: 3,
	slidesToScroll: 1,
	responsive: [
		{
			breakpoint: 1200,
			settings: {
				slidesToShow: 3,
				slidesToScroll: 1,
				infinite: true,
				dots: true
			}
		},
		{
			breakpoint: 992,
			settings: {
				slidesToShow: 2,
				slidesToScroll: 1
			}
		},
		{
			breakpoint: 767,
			settings: {
				slidesToShow: 1,
				slidesToScroll: 1
			}
		}
	]
});
// portfolio-active
$('.portfolio-active').slick({
	dots: false,
	infinite: true,
    arrows: true,
	prevArrow: '<button type="button" class="slick-prev"><i class="fal fa-angle-left"></i></button>',
	nextArrow: '<button type="button" class="slick-next"><i class="fal fa-angle-right"></i></button>',
	speed: 1000,
	slidesToShow: 5,
	slidesToScroll: 1,
	responsive: [
		{
			breakpoint: 1200,
			settings: {
				slidesToShow: 5,
				slidesToScroll: 1,
				infinite: true,
				dots: true
			}
		},
		{
			breakpoint: 992,
			settings: {
				slidesToShow: 2,
				slidesToScroll: 1
			}
		},
		{
			breakpoint: 767,
			settings: {
				slidesToShow: 1,
				slidesToScroll: 1
			}
		}
	]
});

// brand-active
$('.brand-active').slick({
	dots: false,
	infinite: true,
    autoplay:true,
  autoplaySpeed:1500,
	arrows: false,
	speed: 1000,
	slidesToShow:4,
	slidesToScroll: 2,
	responsive: [
		{
			breakpoint: 1500,
			settings: {
				slidesToShow: 4,
				slidesToScroll: 3,
				infinite: true,
			}
		},
		{
			breakpoint: 1200,
			settings: {
				slidesToShow: 3,
				slidesToScroll: 3,
				infinite: true,
			}
		},
		{
			breakpoint: 992,
			settings: {
				slidesToShow: 3,
				slidesToScroll: 1
			}
		},
		{
			breakpoint: 767,
			settings: {
				slidesToShow: 2,
				slidesToScroll: 1
			}
		},
		{
			breakpoint: 480,
			settings: {
				slidesToShow: 1,
				slidesToScroll: 1
			}
		}
	]
});

// testimonial-active
$('.testimonial-active').slick({
	dots: true,
	infinite: true,
	arrows: false,
	speed: 1000,
	slidesToShow: 3,
	slidesToScroll: 2,
	responsive: [
		{
			breakpoint: 1024,
			settings: {
				slidesToShow: 3,
				slidesToScroll: 2,
				infinite: true,
				dots: true
			}
		},
		{
			breakpoint: 992,
			settings: {
				slidesToShow: 1,
				slidesToScroll: 1
			}
		},
		{
			breakpoint: 767,
			settings: {
				slidesToShow: 1,
				slidesToScroll: 1
			}
		}
	]
});
    // testimonial-active
$('.testimonial-active2').slick({
	dots: true,
    autoplay:true,
  autoplaySpeed:1500,
	infinite: true,
	arrows: false,
     prevArrow: '<button type="button" class="slick-prev"><i class="fas fa-arrow-left"></i></button>',
	nextArrow: '<button type="button" class="slick-next"><i class="fas fa-arrow-right"></i></button>',
	speed: 1000,
	slidesToShow: 1,
	slidesToScroll: 1,
	responsive: [
		{
			breakpoint: 1024,
			settings: {
				slidesToShow: 1,
				slidesToScroll: 1,
				infinite: true,
				dots: true
			}
		},
		{
			breakpoint: 992,
			settings: {
				slidesToShow: 1,
				slidesToScroll: 1
			}
		},
		{
			breakpoint: 767,
			settings: {
				slidesToShow: 1,
				slidesToScroll: 1
			}
		}
	]
});
// testimonial-active2

$('.slider-for').slick({
  slidesToShow: 1,
  slidesToScroll: 1,
  arrows: false,
  fade: true,
  asNavFor: '.slider-nav'
});
$('.slider-nav').slick({
  slidesToShow: 3,
  slidesToScroll: 1,
  asNavFor: '.slider-for',
  dots:false,
  arrows:true,
  centerMode: true,
  focusOnSelect: true, 
  variableWidth:true,
    prevArrow: '<button type="button" class="slick-prev"><i class="fas fa-arrow-left"></i></button>',
	nextArrow: '<button type="button" class="slick-next"><i class="fas fa-arrow-right"></i></button>',
});
// home-blog-active
$('.home-blog-active').slick({
	dots: true,
	infinite: true,
	arrows: false,
	speed: 1000,
	slidesToShow: 4,
	slidesToScroll: 1,
    prevArrow: '<button type="button" class="slick-prev"><i class="far fa-chevron-left"></i></button>',
	nextArrow: '<button type="button" class="slick-next"><i class="far fa-chevron-right"></i></button>',
	responsive: [
		{
			breakpoint: 1200,
			settings: {
				slidesToShow: 3,
				slidesToScroll: 1,
				infinite: true,
				dots: true
			}
		},
		{
			breakpoint: 992,
			settings: {
				slidesToShow: 2,
				slidesToScroll: 1
			}
		},
		{
			breakpoint: 767,
			settings: {
				slidesToShow: 1,
				slidesToScroll: 1
			}
		}
	]
});

    // home-blog-active
$('.home-blog-active2').slick({
	dots: false,
	infinite: true,
	arrows: true,
	speed: 1000,
	slidesToShow: 4,
	slidesToScroll: 1,
    prevArrow: '<button type="button" class="slick-prev"><i class="far fa-chevron-left"></i></button>',
	nextArrow: '<button type="button" class="slick-next"><i class="far fa-chevron-right"></i></button>',
	responsive: [
		{
			breakpoint: 1200,
			settings: {
				slidesToShow: 3,
				slidesToScroll: 1,
				infinite: true,
				dots: true
			}
		},
		{
			breakpoint: 992,
			settings: {
				slidesToShow: 2,
				slidesToScroll: 1
			}
		},
		{
			breakpoint: 767,
			settings: {
				slidesToShow: 1,
				slidesToScroll: 1
			}
		}
	]
});



    
// blog
$('.blog-active').slick({
	dots: false,
	infinite: true,
	arrows: true,
	speed: 1500,
	slidesToShow: 1,
	slidesToScroll: 1,
	fade: true,
	prevArrow: '<button type="button" class="slick-prev"><i class="fas fa-arrow-left"></i></button>',
	nextArrow: '<button type="button" class="slick-next"><i class="fas fa-arrow-right"></i></button>',
});


    

// counterUp

$('.count').counterUp({
	delay: 100,
	time: 1000
});

/* magnificPopup img view */
$('.popup-image').magnificPopup({
	type: 'image',
	gallery: {
	  enabled: true
	}
});

/* magnificPopup video view */
$('.popup-video').magnificPopup({
	type: 'iframe'
});

// paroller
if ($('.paroller').length) {
	$('.paroller').paroller();
}

//* Parallaxmouse js
function parallaxMouse() {
	if ($('#parallax').length) {
		var scene = document.getElementById('parallax');
		var parallax = new Parallax(scene);
	};
};
parallaxMouse();

// service active
$('.s-single-services').on('mouseenter', function () {
	$(this).addClass('active').parent().siblings().find('.s-single-services').removeClass('active');
})

// scrollToTop
$.scrollUp({
	scrollName: 'scrollUp',
	topDistance: '300',
	topSpeed: 300,
	animation: 'fade',
	animationInSpeed: 200,
	animationOutSpeed: 200,
	scrollText: '<i class="fas fa-level-up-alt"></i>',
	activeOverlay: false,
});


// isotop
	$('.grid').imagesLoaded(function () {
	// init Isotope
	var $grid = $('.grid').isotope({
	  itemSelector: '.grid-item',
	  percentPosition: true,
	  masonry: {
		// use outer width of grid-sizer for columnWidth
		columnWidth: 1
	  }
	});

	// filter items on button click
	$('.button-group').on('click', 'button', function () {
		var filterValue = $(this).attr('data-filter');
		$grid.isotope({ filter: filterValue });		
	});

});
// isotop
$(".element").each(function() {
    var a = $(this);
    a.typed({
        strings: a.attr("data-elements").split(","),
        typeSpeed: 100,
        backDelay: 3e3
    })
}),
//for menu active class
$('.button-group > button').on('click', function(event) {
	$(this).siblings('.active').removeClass('active');
	$(this).addClass('active');
	event.preventDefault();
});

// WOW active
new WOW().init();
    
//Tabs Box
	if($('.tabs-box').length){
		$('.tabs-box .tab-buttons .tab-btn').on('click', function(e) {
			e.preventDefault();
			var target = $($(this).attr('data-tab'));
			
			if ($(target).is(':visible')){
				return false;
			}else{
				target.parents('.tabs-box').find('.tab-buttons').find('.tab-btn').removeClass('active-btn');
				$(this).addClass('active-btn');
				target.parents('.tabs-box').find('.tabs-content').find('.tab').fadeOut(0);
				target.parents('.tabs-box').find('.tabs-content').find('.tab').removeClass('active-tab animated fadeIn');
				$(target).fadeIn(300);
				$(target).addClass('active-tab animated fadeIn');
			}
		});
	}
	/*toast js  */
	
	/*toast js  */

})(jQuery);

$(document).ready(function(){
	$('#toast').delay(10000).fadeOut('active');
	setTimeout(function () {
		$('#toast').delay(10000).fadeOut('active');
	}, 5000);
});

$(document).off('submit', '#roomDetailsBookRoom').on('submit', '#roomDetailsBookRoom', function (event) {
    event.preventDefault();
    var form = $(this);
    var submitButton = form.find('button[type="submit"]');
    $('.form-control').removeClass('is-invalid');
    $('.invalid-feedback').remove();
    submitButton.prop('disabled', true).html('<span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span> Submitting...');

    var formData = new FormData(this);

    $.ajax({
        url: form.attr('action'),
        type: 'POST',
        data: formData,
        processData: false,
        contentType: false,
        success: function(response) {
            submitButton.prop('disabled', false).html('Submit');
            if (response.status === 'success' || response.success) {
                showToast('success', response.message || 'Form submitted successfully!');
                form[0].reset();
            }
        },
        error: function(xhr) {
            submitButton.prop('disabled', false).html('Submit');
            var errors = xhr.responseJSON?.errors;
            if (errors) {
                $.each(errors, function(key, value) {
                    var inputField = $('#' + key);
                    if (inputField.length) {
                        inputField.addClass('is-invalid');
                        inputField.after('<div class="invalid-feedback">' + value[0] + '</div>');
                    }
                });
            } else if (xhr.responseJSON?.message) {
                showToast('danger', xhr.responseJSON.message);
            } else {
                showToast('danger', "An error occurred! Please try again.");
            }
        }
    });
});

function showToast(type, message) {
    var toast = $('#toast');

    if (!toast.length) {
        toast = $('<div class="toast active" id="toast" style="opacity: 1;">' +
                    '<div class="toast-content">' +
                        '<i class="fas fa-solid fa-check check"></i>' +
                        '<div class="message">' +
                            '<span class="text text-2"></span>' +
                        '</div>' +
                    '</div>' +
                  '</div>').appendTo('body');
    }

    // Set message
    toast.find('.text-2').text(message);

    // Set background color based on type
    toast.removeClass('bg-success bg-danger bg-warning');
    if (type === 'success') {
        toast.addClass('bg-success');
    } else if (type === 'danger') {
        toast.addClass('bg-danger');
    } else if (type === 'warning') {
        toast.addClass('bg-warning');
    }

    toast.addClass('active').css('opacity', 1);
    setTimeout(function () {
        toast.removeClass('active').fadeOut();
    }, 3000);
}

