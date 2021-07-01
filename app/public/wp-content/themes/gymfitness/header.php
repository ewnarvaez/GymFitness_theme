<!DOCTYPE html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<?php wp_head(); ?>
	<title></title>
</head>
<body>

<header class="site-header">
	<div class="contenedor">
		<div class="barra-navegacion">
			<div class="logo">
				<a href="<?php echo esc_html( site_url('/') ); ?>">
					<img src="<?php echo get_template_directory_uri(); ?>/img/logo.svg">					
				</a>
			</div>

			<?php 
			$args = array(
				'theme_location' => 'menu-principal',
				'container' => 'nav',
				'container_class' => 'menu-principal'
			);			
			wp_nav_menu($args);
			?>
		</div>		
	</div>
</header>