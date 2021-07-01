<?php get_header(); ?>
<main class="pagina seccion no-sidebars contenedor">

	<!-- obtener la información del objeto actual para extraer el nombre de la categoría (name) -->
	<?php $categoria = get_queried_object(); ?>
	   <h2 class="text-center texto-primario">
		<!-- aquí extraemos el nombre del objeto categoría -->
		  Categoria: <?php echo $categoria->name; ?>
		</h2>

	<ul class="listado-blog">
		<?php while (have_posts()): the_post(); ?>
			<?php get_template_part('template-parts/template-blog'); ?>
		<?php endwhile; ?>		
	</ul>
</main>
<?php get_footer(); ?>