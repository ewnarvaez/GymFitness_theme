
<li class="card gradient">
	<!-- aquí van las imágenes -->
	<?php the_post_thumbnail('mediano'); ?>

	<!-- aquí se muestran las categorias de cada post -->
	<?php the_category(); ?>

	<div class="contenido">
		<a href="<?php the_permalink(); ?>">
			<h3><?php the_title(); ?></h3>
		</a>

		<!-- información del usuario que creó el post -->
		<p class="meta">
			<span>Por: </span>
			<!-- get_the_author_meta trae toda la información del usuario del sitio -->
			<a href="<?php echo get_author_posts_url( get_the_author_meta( 'ID' ) ); ?>">
				<!-- Aquí mostramos el nombre del autor del post -->
				<?php echo get_the_author_meta( 'display_name'); ?>
			</a>						
		</p>
		<p class="meta">
			<span>Fecha: </span>
			<!-- para mostrar la fecha de creación del post -->
			<?php the_time(get_option('date_format')); ?>
		</p>
	</div>
</li>
