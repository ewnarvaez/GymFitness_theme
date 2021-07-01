<?php get_header('front'); ?>

<!-- Sección del hero -->
<section class="bienvenida text-center seccion">
	<h2 class="texto-primario"><?php the_field('encabezado_bienvenida'); ?></h2>
	<p><?php the_field('texto_bienvenida'); ?></p>
</section>

<!-- Sección que muestra las imágenes que hacen referencia a las áreas del gimnasio -->
<div class="seccion-areas">
	<ul class="contenedor-areas">
		<li class="area">
			<?php  
				$area1 = get_field('area_1');
				$imagen = wp_get_attachment_image_src($area1['area_imagen'], 'mediano')[0];
			?>
			<img src="<?php echo esc_attr($imagen); ?>" alt="">
			<p><?php echo esc_html($area1['area_texto']); ?></p>

		</li>
		<li class="area">
			<?php  
				$area2 = get_field('area_2');
				$imagen = wp_get_attachment_image_src($area2['area_imagen'], 'mediano')[0];
			?>
			<img src="<?php echo esc_attr($imagen); ?>" alt="">
			<p><?php echo esc_html($area2['area_texto']); ?></p>

		</li>
		<li class="area">
			<?php  
				$area3 = get_field('area_3');
				$imagen = wp_get_attachment_image_src($area3['area_imagen'], 'mediano')[0];
			?>
			<img src="<?php echo esc_attr($imagen); ?>" alt="">
			<p><?php echo esc_html($area3['area_texto']); ?></p>

		</li>
		<li class="area">
			<?php  
				$area4 = get_field('area_4');
				$imagen = wp_get_attachment_image_src($area4['area_imagen'], 'mediano')[0];
			?>
			<img src="<?php echo esc_attr($imagen); ?>" alt="">
			<p><?php echo esc_html($area4['area_texto']); ?></p>

		</li>
	</ul>
</div>

<!-- Sección para mostrar las clases -->
<section class="clases">
	<div class="contenedor seccion">
		<h2 class="text-center texto-primario">Nuestras Clases</h2>
		<!-- mostramos 4 de las clases del apartado nuestras clases -->
		<?php gymfitness_lista_clases(4); ?>
		<div class="contenedor-boton">
			<a href="<?php echo esc_url( get_permalink( get_page_by_title('Nuestras Clases') ) ); ?>" class="boton boton-primario">
				Ver todas las clases
			</a>
		</div>
	</div>
</section>

<!-- Sección de los instructores -->
<section class="instructores">
	<div class="contenedor seccion">
		<h2 class="text-center texto-primario">Nuestros Instructores</h2>
		<p class="text-center">Instructores profesionales que te ayudarán a lograr tus objetivos</p>

		<ul class="listado-instructores">
			<?php  
				$args = array(
					'post_type' => 'instructores',
					'posts_per_page' => 20
				);
				$instructores = new WP_Query($args);
				while($instructores->have_posts()): $instructores->the_post();
			?>
			<li class="instructor">
				<?php the_post_thumbnail('mediano'); ?>
				<div class="contenido text-center">
					<h3><?php the_title(); ?></h3>
					<?php the_content(); ?>

					<div class="especialidad">
						<?php 
						$esp = get_field('especialidad');
						foreach($esp as $e): 
						?>
							<span class="etiqueta">
								<?php echo esc_html($e); ?>
							</span>

						<?php endforeach; ?>
					</div>
				</div>
			</li>

				<?php endwhile; wp_reset_postdata(); ?>
		</ul>
	</div>
</section>

<!-- Sección Testimoniales -->
<section class="testimoniales">
	<h2 class="text-center">Testimoniales</h2>

	<div class="contenedor-testimoniales">
		<ul class="listado-testimoniales">
			<?php  
				$args = array(
					'post_type' => 'testimoniales',
					'posts_per_page' => 10
				);
				$instructores = new WP_Query($args);
				while($instructores->have_posts()): $instructores->the_post();
			?>
			<li class="testimonial">

				<blockquote>
					<?php the_content(); ?>
				</blockquote>

				<footer class="testimonial-footer">
					<?php the_post_thumbnail('thumbnail'); ?>
					<p><?php the_title(); ?></p>
				</footer>

			</li>

			<?php endwhile; wp_reset_postdata(); ?>
		</ul>
	</div>
</section>

<!-- SECCIÓN DEL BLOG -->
<section class="blog contenedor seccion">
	<h2 class="text-center texto-primario">Nuestro Blog</h2>
	<p class="text-center">Aprende Tips de Nuestros Instructores Expertos</p>

	<ul class="listado-blog">
		<?php 
			$args = array(
				'post_type' => 'post',
				'posts_per_page' => 4
			); 
			$blog = new WP_Query($args);
			while($blog->have_posts()): $blog->the_post();
				get_template_part('template-parts/template-blog');
			endwhile; wp_reset_postdata();
		?>
	</ul>
</section>

<?php get_footer(); ?>