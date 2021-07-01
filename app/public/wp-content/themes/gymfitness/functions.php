<?php 


	/** Consultas reutilizables **/
	require get_template_directory() . '/inc/queries.php';
	require get_template_directory() . '/inc/shortcodes.php';
	
	// Cuando el tema es activado
	function gymfitness_setup() {

		// Habilitar imágenes destacadas
		add_theme_support('post-thumbnails');

		// Agregar soporte para títulos SEO
		add_theme_support( 'title-tag' );

		// Agregar tamaños de imágenes personalizados
		add_image_size('square', 350, 350, true);
		add_image_size('portrait', 350, 724, true);
		add_image_size('cajas', 400, 375, true);
		add_image_size('mediano', 700, 400, true);
		add_image_size('blog', 966, 644, true);
	}
	add_action('after_setup_theme', 'gymfitness_setup');

	// Menús de navegación, agregar más utilizando el arreglo
	function gymfitness_menus() {
		register_nav_menus(array(
			'menu-principal' => __( 'Menú Principal', 'gymfitness')
		));
	}

	add_action('init', 'gymfitness_menus');

	// Scripts y Styles
	function gymfitness_scripts_styles() {

		// normalize
		wp_enqueue_style( 'normalize', get_template_directory_uri() . '/css/normalize.css', array(), '8.0.1', 'all' );

		// slicknav_css
		wp_enqueue_style( 'slicknavCSS', get_template_directory_uri() . '/css/slicknav.min.css', array(), '1.0.0', 'all' );

		// lightbox css
		if (is_page( 'galeria' )):
			wp_enqueue_style( 'lightboxCSS', get_template_directory_uri() . '/css/lightbox.min.css', array(), '2.11.3', 'all' );			
		endif;

		// leaflet css
		if (is_page( 'contacto' )):
			wp_enqueue_style( 'leafletCSS', 'https://unpkg.com/leaflet@1.7.1/dist/leaflet.css', array(), '1.7.1', 'all' );			
		endif;

		// bxSlider css
		if (is_page( 'inicio' )):
			wp_enqueue_style( 'bxSliderCSS', 'https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css', array(), '4.2.12', 'all' );			
		endif;

		// GoogleFonts
		wp_enqueue_style( 'googleFonts', 'https://fonts.googleapis.com/css2?family=Open+Sans&family=Raleway:wght@400;700;900&family=Staatliches&display=swap', array(), '1.0.0', 'all' );

		// la hoja de estilos principal
		wp_enqueue_style( 'style', get_stylesheet_uri(), array('normalize', 'googleFonts'), '1.0.0', 'all' );

		// slicknav javascript
		wp_enqueue_script('slicknavJS', get_template_directory_uri() . '/js/jquery.slicknav.min.js', array('jquery'), '1.0.0', true);

		// lightbox javascript
		if (is_page( 'galeria' )):
			wp_enqueue_script('lightboxJS', get_template_directory_uri() . '/js/lightbox.min.js', array('jquery'), '2.11.3', true);
		endif;

		// leaflet javascript
		if (is_page( 'contacto' )):
			wp_enqueue_script('leafletJS', 'https://unpkg.com/leaflet@1.7.1/dist/leaflet.js', array(), '1.7.1', true);
		endif;

		// bxSlider javascript
		if (is_page( 'inicio' )):
			wp_enqueue_script('bxSliderJS', 'https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js', array('jquery'), '4.2.12', true);
		endif;

		// script personal donde se ponen las cosas propias
		wp_enqueue_script('customScripts', get_template_directory_uri() . '/js/scripts.js', array('jquery', 'slicknavJS'), '1.0.0', true);

	}

	add_action('wp_enqueue_scripts', 'gymfitness_scripts_styles');

	// Definir zona de Widgets (Agregando soporte para widgets en nuestro tema)
	function gymfitness_widgets() {
		// se llama así porque al comienzo en WordPress todos los widgets se ubicaban en el sidebar pero ahora se pueden ubicar en el footer o en el header
		register_sidebar( array(
			'name' => 'Sidebar 1',
			'id' => 'sidebar_1',
			'before_widget' => '<div class="widget">',
			'after_widget' => '</div>',
			'before_title' => '<h3 class="text-center texto-primario">',
			'after_title' => '</h3>'
		));
		register_sidebar( array(
			'name' => 'Sidebar 2',
			'id' => 'sidebar_2',
			'before_widget' => '<div class="widget">',
			'after_widget' => '</div>',
			'before_title' => '<h3 class="text-center texto-primario">',
			'after_title' => '</h3>'
		));
	}
	add_action('widgets_init', 'gymfitness_widgets');

	/** Imagen Hero **/

	function gymfitness_hero_image() {
		// obtener id página principal
		$front_page_id = get_option( 'page_on_front' );
		// obtener el id de la imagen
		$id_imagen = get_field('imagen_hero', $front_page_id);
		// obtener la imagen
		$imagen = wp_get_attachment_image_src($id_imagen, 'full')[0];

		// Style CSS (Códiog css que se va a inyectar en WordPress)
		wp_register_style('custom', false); // false indica que no se va a generar un archivo sino que se va a inyectar
		wp_enqueue_style('custom'); // custom hace referencia a una hoja de estilos ficticia

		$imagen_destacada_css = "
			body.home .site-header {
				background-image: linear-gradient(rgba(0,0,0,0.75), rgba(0,0,0,0.75)), url($imagen);
			}
		";

		wp_add_inline_style('custom', $imagen_destacada_css);

	}
	add_action( 'init', 'gymfitness_hero_image' );

