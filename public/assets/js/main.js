/***************************************************
==================== JS INDEX ======================
****************************************************
Mobile Menu Js


****************************************************/

(function ($) {
	"use strict";

	/*==========================
		Background Image
	============================*/
	$("[data-bg-image]").each(function () {
		$(this).css(
			"background-image",
			"url( " + $(this).attr("data-bg-image") + "  )"
		);
	});

	////////////////////////////////////////////////////
	// Nice Select
	$("select").niceSelect();

	////////////////////////////////////////////////////
	// Mega Menu
	if ($(".mega_menu_bars").length > 0) {
		$(".mega_menu_bars").on("click", function () {
			$(this).toggleClass("active");
			$(".mega_menus").toggleClass("open");
		});
	}

	////////////////////////////////////////////////////
	// Mobile Menu Js
	$("#mobile-menu").meanmenu({
		meanMenuContainer: ".mobile-menu",
		meanScreenWidth: "991",
		meanExpand: ['<i class="fal fa-plus"></i>'],
	});

	////////////////////////////////////////////////////
	// Featured Haors
	var swiper = new Swiper(".featured_haors_carousel", {
		effect: "coverflow",
		grabCursor: false,
		slideToClickedSlide: false,
		centeredSlides: true,
		slidesPerView: "auto",
		loop: true,
		autoplay: {
			delay: 3000,
		},
		initialSlide: 2,
		coverflowEffect: {
			rotate: 0,
			stretch: 0,
			depth: 50,
			modifier: 4,
			initialSlide: 2,
			slideShadows: false,
		},
		spaceBetween: 75,
		navigation: {
			nextEl: ".featured_haors_nav-next",
			prevEl: ".featured_haors_nav-prev",
		},
	});

	////////////////////////////////////////////////////
	// GAllery Slider
	$(".gallery-section .owl-carousel").owlCarousel({
		loop: true,
		center: true,
		nav: false,
		dots: false,
		items: 5,
		autoplay: true,
		autoplayHoverPause: true,
		autoplayTimeout: 3000,
	});

	////////////////////////////////////////////////////
	// Overview Carousel
	if ($(".overview_carousel").length > 0) {
		$(".overview_carousel").owlCarousel({
			loop: true,
			items: 1,
			nav: false,
			dots: false,
			thumbs: true,
			thumbImage: true,
			thumbContainerClass: "owl-thumbs",
			thumbItemClass: "owl-thumb-item",
		});
	}

	////////////////////////////////////////////////////
	// Haor Carousel
	if ($(".haors_carousel").length > 0) {
		$(".haors_carousel").owlCarousel({
			loop: true,
			items: 4,
			margin: 15,
			dots: false,
			nav: true,
			navText: [
				"<i class='fal fa-arrow-left'></i>",
				"<i class='fal fa-arrow-right'></i>",
			],
		});
	}

	////////////////////////////////////////////////////
	// Magnific Popup
	if ($(".gallery_img").length > 0) {
		$(".gallery_img").magnificPopup({
			type: "image",
			mainClass: "mfp-with-zoom",
			gallery: {
				enabled: true,
			},

			zoom: {
				enabled: true,

				duration: 300, // duration of the effect, in milliseconds
				easing: "ease-in-out", // CSS transition easing function
			},
		});
	}

	////////////////////////////////////////////////////
	// Hero Video
	// if ($(".hero-section").length > 0) {
	// 	$(".hero-section").vide(
	// 		{},
	// 		{
	// 			muted: true,
	// 			loop: true,
	// 			posterType: "jpg",
	// 			className: "",
	// 		}
	// 	);
	// }

	////////////////////////////////////////////////////
	// Explore Masonry
	$(".grid").imagesLoaded(function () {
		var $grid = $(".grid").isotope({
			layoutMode: "fitRows",
			itemSelector: ".grid-item",
			percentPosition: true,
			fitRows: {
				gutter: ".gutter-sizer",
			},
		});
	});
})(jQuery);
