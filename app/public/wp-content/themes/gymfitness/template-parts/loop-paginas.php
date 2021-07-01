<!-- Loop de página de wordpress -->
<?php while( have_posts() ): the_post(); ?>
		<!-- Titulo de la página -->
	<h1 class="text-center texto-primario">
		<?php the_title(); ?>			
	</h1>
	<!-- Para mostrar todas las imágenes de la página -->
	<?php 
		if( has_post_thumbnail() ):
			the_post_thumbnail('blog', array('class' => 'imagen-destacada'));
		endif;
	?>

	<?php 
		// Revisar si el custom post type es clases
		if (get_post_type() === 'gymfitness_clases'): ?>
			<p class="informacion-clase">
				<?php the_field('dias_clase'); ?> de <?php the_field('hora_inicio'); ?> a <?php the_field('hora_fin'); ?>				
			</p>
	<?php endif; ?>

	<?php 
		if (is_page( 'contacto' )):
			the_field( 'ubicacion' );
		endif;
	?>

	<!-- Contenido de la página -->
	<p><?php the_content(); ?></p>
<?php endwhile; ?>