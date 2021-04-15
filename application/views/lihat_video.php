
   <!--================Blog Area =================-->
   <section class="blog_area single-post-area section-padding">
      <div class="container">
         <div class="row">
            <div class="col-lg-8 posts-list">
            	<?php foreach($show as $show_video){?>
            	<div class="single-post">
                  <div class="blog_details">
                  	<h2>
                  		<?php echo $show_video['judul_video']?>
                  	</h2>

                    <?php echo $show_video['link']; ?>
                  	<?php echo $show_video['keterangan']?>
                  </div>
               </div>
           		<?php }?>


            </div>
