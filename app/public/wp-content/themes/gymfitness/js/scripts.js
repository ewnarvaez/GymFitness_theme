jQuery(document).ready($ => {
	$('.site-header .menu-principal .menu').slicknav({
		label: '',
		appendTo: '.site-header'
	});

	// BxSlider
	if ($('.listado-testimoniales').length > 0) {
		$('.listado-testimoniales').bxSlider({
			mode: 'vertical',
			controls: false
		});
	}	
});

// Agrega posición fija en el header al hacer scroll
window.onscroll = () => {
	
	const scroll = window.scrollY;

	const headerNav = document.querySelector('.barra-navegacion');

	// si la cantidad de scroll es mayor a, agregar una clase
	if (scroll > 300) {
		headerNav.classList.add('fixed-top');
	}
	else {
		headerNav.classList.remove('fixed-top');
	}

	
}