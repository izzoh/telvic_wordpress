<?php
/**
* The main template file.
*
*/
 ?>
<?php
if ( 'page' == get_option( 'show_on_front' ) && ( '' != get_option( 'page_for_posts' ) ) && $wp_query->get_queried_object_id() == get_option( 'page_for_posts' ) ) {
get_header("site");
?>
<div class="site-main">
		<div class="main-content">
			<div class="content-area">
				<div class="site-content" role="main">
					<header class="archive-header">
						<h1 class="archive-title"><?php onetone_get_breadcrumb();?></h1>
					</header>
					<?php if (have_posts()) :?>
                    <?php while ( have_posts() ) : the_post(); 
					
					    get_template_part("content","article");
					?>
                   <?php endwhile;?>
                   <?php endif;?>
					
					<nav class="paging-navigation">
						<div class="loop-pagination">
							<?php if(function_exists("onetone_native_pagenavi")){onetone_native_pagenavi("echo",$wp_query);}?>
						</div>
					</nav>
				</div>
			</div>
		</div>
		<!--main--> 

		<div class="sidebar">
			<div class="widget-area">
		<?php dynamic_sidebar(1) ;?>
			</div>
		</div>
		<!--sidebar--> 
	</div>
<?php
get_footer("site");
}else{
?>

<?php 
get_header();
?>
<div class="container home-wrapper">
<?php

 $section_num = onetone_options_array( 'section_num' ); 
 if(isset($section_num) && is_numeric($section_num ) && $section_num >0):
 for( $i = 0; $i < $section_num ;$i++){
 
 $section_title       = onetone_options_array( 'section_title_'.$i );
 $section_menu        = onetone_options_array( 'menu_title_'.$i );
 $section_background  = onetone_options_array( 'section_background_'.$i );
 $section_background_video  = onetone_options_array( 'section_background_video_'.$i );
 $section_css_class   = onetone_options_array( 'section_css_class_'.$i );
 $section_content     = onetone_options_array( 'sction_content_'.$i );

 $background = onetone_get_background($section_background);
 $sanitize_title = "";
 if($section_menu  && $section_menu  != ""){
 $sanitize_title = sanitize_title($section_menu );
 }
 $css_class = isset($section_css_class)?$section_css_class:"";
 
  $background_video = '';
 if($section_background_video != ""){

    $background_video  = '{ videoId: "'.$section_background_video.'", start: 3 ,container:"section.onetone-'.$sanitize_title.'"}';
    $video_section_item = "section.onetone-".$sanitize_title;
    wp_localize_script( 'onetone-bigvideo', 'onetone_bigvideo', array("options"=>$background_video,  "video_section_item"=>$video_section_item ));
	$background = "";
	}
 
 ?>
 <section class="section <?php echo $css_class;?> onetone-<?php echo $sanitize_title;?>"  style="<?php echo $background; ?>">
    	<div class="home-container page_container">
		<?php if($section_title){?>
        	<h1><?php echo $section_title;?></h1>
            <?php }?>
            <?php echo $section_content;?>
        </div>
    </section>
	<?php //echo $background_video;?>
 <?php

 }
 endif;
 ?>
<div class="clear"></div>  
</div>
<?php get_footer();}?>