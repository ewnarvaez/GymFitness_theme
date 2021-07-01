<?php 
 /*
	Plugin Name: Gym Fitness - Widgets
	Plugin URI:
	Description: Añade Widgets Personalizados al sitio Gym Fitness
	Version: 1.0.0
	Author: Edwin Willer Narváez Burbano
	Author URI: https://edwinnarvaez.com
	Text Domain: gymfitness
*/

if(!defined('ABSPATH')) die(); // Evita que se pueda acceder el código colocando la ruta al mismo en la barra del navegador 

/**
 * Adds Foo_Widget widget.
 */
class GymFitness_Clases_Widget extends WP_Widget {

	/**
	 * Register widget with WordPress.
	 */
	function __construct() {
		parent::__construct(
			'foo_widget', // Base ID
			esc_html__( 'GymFitness Clases', 'gymfitness' ), // Name
			array( 'description' => esc_html__( 'Agrega clases como widgets', 'gymfitness' ), ) // Args
		);
	}

	/**
	 * Front-end display of widget.
	 *
	 * @see WP_Widget::widget()
	 *
	 * @param array $args     Widget arguments.
	 * @param array $instance Saved values from database.
	 */
	public function widget( $args, $instance ) {
		echo $args['before_widget'];
		if ( ! empty( $instance['title'] ) ) {
			echo $args['before_title'] . apply_filters( 'widget_title', $instance['title'] ) . $args['after_title'];
		}

		$cantidad = $instance['cantidad'];
		if ($cantidad === '') {
			$cantidad = 3;
		}
		?>		
		<ul>
			<?php 
				$args = array(
					// indicamos el tipo de post que se va a mostrar en el widget
					'post_type' => 'gymfitness_clases',
					'posts_per_page' => $cantidad,
					// exclusión del post type actual
					'post__not_in' => array(get_the_ID())
				);
				// se almacena en $clases el resultado de la consulta
				$clases = new WP_Query($args);
				// mientras hayan resultados
				while ($clases->have_posts()): $clases->the_post();
				?>
				<li class="clase-sidebar">
					<div class="imagen">
						<?php the_post_thumbnail('thumbnail'); ?>
					</div>

					<div class="contenido-clase">
						<a href="<?php the_permalink(); ?>">
							<h3><?php the_title(); ?></h3>
						</a>
						<p><?php the_field('dias_clase'); ?> de <?php the_field('hora_inicio'); ?> a <?php the_field('hora_fin'); ?></p>
					</div>
				</li>

			<!-- cerramos el while y cerramos la consulta -->
			<?php endwhile; wp_reset_postdata(); ?>					
		</ul>
		<?php 
		echo $args['after_widget'];
	}

	/**
	 * Back-end widget form.
	 *
	 * @see WP_Widget::form()
	 *
	 * @param array $instance Previously saved values from database.
	 */
	public function form( $instance ) {
		$cantidad = ! empty( $instance['cantidad'] ) ? $instance['cantidad'] : esc_html__( '¿Cuántas clases deseas mostrar?', 'gymfitness' );
		?>
		<p>
			<label for="<?php echo esc_attr( $this->get_field_id( 'cantidad' ) ); ?>">
				<?php esc_attr_e( '¿Cuántas clases deseas mostrar?', 'gymfitness' ); ?>				
			</label> 
			<input class="widefat" 
				id="<?php echo esc_attr( $this->get_field_id( 'cantidad' ) ); ?>" 
				name="<?php echo esc_attr( $this->get_field_name( 'cantidad' ) ); ?>" 
				type="number" 
				value="<?php echo esc_attr( $cantidad ); ?>"
			/>
		</p>
		<?php 
	}

	/**
	 * Sanitize widget form values as they are saved.
	 *
	 * @see WP_Widget::update()
	 *
	 * @param array $new_instance Values just sent to be saved.
	 * @param array $old_instance Previously saved values from database.
	 *
	 * @return array Updated safe values to be saved.
	 */
	public function update( $new_instance, $old_instance ) {
		$instance = array();
		$instance['cantidad'] = ( ! empty( $new_instance['cantidad'] ) ) ? sanitize_text_field( $new_instance['cantidad'] ) : '';

		return $instance;
	}

} // class Foo_Widget

// register Foo_Widget widget
function register_gymfitness_widget() {
    register_widget( 'GymFitness_Clases_Widget' );
}
add_action( 'widgets_init', 'register_gymfitness_widget' );