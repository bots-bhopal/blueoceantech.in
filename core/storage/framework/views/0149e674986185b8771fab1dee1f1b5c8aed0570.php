
<?php $__env->startSection('meta-keywords', "$setting->meta_keywords"); ?>
<?php $__env->startSection('meta-description', "$setting->meta_description"); ?>
<?php $__env->startSection('content'); ?>

<!--====== BANNER PART START ======-->
<?php if($commonsetting->is_t2_hero_section == 1): ?>
    <?php if($commonsetting->is_video_hero == 1): ?>
        <div id="herovideo" class="banner-area-2 bg_cover mt-0 video-section" style="background-image: url(<?php echo e(asset('assets/front/img/'.$sinfo->hero_bg_image )); ?>);">
            <div id="bgndVideo" data-property="{videoURL:'<?php echo e($commonsetting->hero_section_video_link); ?>',containment:'#herovideo', quality:'large', autoPlay:true, loop:true, mute:true, opacity:1}"></div>
            <div class="banner-overlay">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-9">
                            <div class="banner-content">
                                <span><?php echo e($sinfo->hero_sub_title); ?></span>
                                <h1 class="title"><?php echo e($sinfo->hero_title); ?></h1>
                                <p><?php echo e($sinfo->hero_text); ?></p>
                                <ul>
                                    <li><a class="main-btn wow fadeInUp" href="<?php echo e(route('front.quot')); ?>" data-wow-duration=".3s" data-wow-delay=".5s"><?php echo e(__('Gate A Quote')); ?></a></li>
                                    <li><a class="main-btn main-btn-2 wow fadeInUp" href="<?php echo e(route('front.about')); ?>" data-wow-duration=".7s" data-wow-delay=".7s"><?php echo e(__('Learn More')); ?></a></li>
                                </ul>
                            </div> <!-- banner content -->
                        </div>
                    </div> <!-- row -->
                </div> <!-- container -->
            </div>
        </div>
    <?php else: ?>
        <div class="banner-area" style="background-image: url(<?php echo e(asset('assets/front/')); ?>/images/banner-gradient-bg.png)">
            <div class="container position-relative">
                <div class="row">
                    <div class="col-lg-7">
                        <div class="banner-content">
                            <span class="wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".1s"><?php echo e($sinfo->hero_sub_title); ?></span>
                            <h1 class="title wow fadeInLeft" data-wow-duration="2s" data-wow-delay=".5s"><?php echo e($sinfo->hero_title); ?></h1>
                            <ul>
                                <?php if($sinfo->hero_f_icon1 && $sinfo->hero_f_text1): ?>
                                <li>
                                    <a class="fadeInUp wow" data-wow-duration="1s" data-wow-delay="1s" href="#"><span><i class="<?php echo e($sinfo->hero_f_icon1); ?>"></i></span>
                                        <p><?php echo e($sinfo->hero_f_text1); ?></p>
                                    </a>
                                </li>
                                <?php endif; ?>
                                <?php if($sinfo->hero_f_icon2 && $sinfo->hero_f_text2): ?>
                                <li>
                                    <a class="btn-2 fadeInUp wow" data-wow-duration="1s" data-wow-delay="1.5s" href="#"><span><i class="<?php echo e($sinfo->hero_f_icon2); ?>"></i></span>
                                        <p><?php echo e($sinfo->hero_f_text2); ?></p>
                                    </a>
                                </li>
                                <?php endif; ?>
                            </ul>
                        </div> <!-- banner content -->
                    </div>
                </div> <!-- row -->
                <div class="banner-shape">
                    <img src="<?php echo e(asset('assets/front/img/'.$sinfo->hero_image)); ?>" alt="">
                </div>
            </div> <!-- container -->
        </div>
    <?php endif; ?>
<?php endif; ?>
<!--====== BANNER PART ENDS ======-->

<!--====== ABOUT PART START ======-->
<?php if($commonsetting->is_t2_about_section == 1): ?>
<div class="about-area pt-90 pb-120">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-6 col-md-12 order-2 order-lg-1">
                <div class="about-thumb mt-30">
                    <img src="<?php echo e(asset('assets/front/img/'.$sinfo->about_image)); ?>" alt="">
                </div> <!-- about thumb -->
            </div>
            <div class="col-lg-6 col-md-12 order-1 order-lg-2">
                <div class="about-item mt-30">
                    <span><?php echo e($sinfo->about_sub_title); ?></span>
                    <h3 class="title"><?php echo e($sinfo->about_title); ?></h3>
                    <div class="text-justify">
                        <p><?php echo $sinfo->about_text; ?></p>
                        
                    </div>
                    
                    <div class="about-experience">
                        <h3><?php echo e($sinfo->about_experince_yers); ?></h3>
                        
                    </div>
                    <ul class="about-btns">
                        <li><a class="main-btn wow fadeInUp" data-wow-duration="1s" data-wow-delay=".1s" href="<?php echo e(route('front.about')); ?>"><?php echo e(__('Learn More')); ?></a></li>
                        <li><a class="video-popup main-btn main-btn-2 wow fadeInUp" href="<?php echo e($sinfo->about_intro_video); ?>" data-wow-duration="2s" data-wow-delay=".5s" ><i class="fal fa-video"></i> <?php echo e(__('Intro Video')); ?></a></li>
                    </ul>
                </div> <!-- about item -->
            </div>
        </div> <!-- row -->
    </div> <!-- container -->
</div>
<?php endif; ?>
<!--====== ABOUT PART ENDS ======-->



<!--====== SERVICES ITEM PART START ======-->
<?php if($commonsetting->is_t2_service_section == 1): ?>
<div class="services-item-area gray-bg pt-90 pb-120">
    <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="section-title text-center text-center">
                        <span><?php echo e($sinfo->service_sub_title); ?></span>
                        <h3 class="title"><?php echo e($sinfo->service_title); ?></h3>
                    </div> <!-- services title item -->
                </div>
            </div> <!-- row -->
        <div class="row justify-content-center">
            <?php $__currentLoopData = $services; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <div class="col-lg-4 col-md-6 col-sm-8">
				<a href="<?php echo e(route('front.service.details', $item->slug)); ?>" class="single-services-item mt-30">
					<div class="img" style="background-image: url(<?php echo e(asset('assets/front/img/service/'.$item->image)); ?>)"></div>
					<div class="services-overlay">
						<i class="<?php echo e($item->icon); ?>"></i>
						<h4 class="title"><?php echo e($item->title); ?></h4>
						<p><?php echo e((strlen(strip_tags(Helper::convertUtf8($item->content))) > 100) ? substr(strip_tags(Helper::convertUtf8($item->content)), 0, 100) . '...' : strip_tags(Helper::convertUtf8($item->content))); ?></p>
					</div>
				</a> <!-- single services -->
			</div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            
        </div> <!-- row -->
    </div> <!-- container -->
</div> 
<?php endif; ?>
<!--====== SERVICES ITEM PART ENDS ======-->


<!--====== INTRO VIDEO PART START ======-->
<?php if($commonsetting->is_t2_intro_video_section == 1): ?>
<div class="intro-video-area bg_cover" style="background-image: url(<?php echo e(asset('assets/front/img/'.$sinfo->video_bg_image)); ?>);">
    <div class="intro-overlay">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="intro-video-content mt-30">
                        <span><?php echo e($sinfo->video_sub_title); ?></span>
                        <h2 class="title"><?php echo e($sinfo->video_title); ?></h2>
                        <p class="text-1"><?php echo e($sinfo->video_text); ?></p>
                        <p class="text-2"><?php echo e($sinfo->video_content); ?></p>
                    </div> <!-- intro video content -->
                </div>
                <div class="col-lg-6">
                    <div class="intro-thumb mt-30">
                        <img src="<?php echo e(asset('assets/front/img/'.$sinfo->video_image)); ?>" alt="">
                        <a class="video-popup" href="<?php echo e($sinfo->video_link); ?>"><i class="fas fa-play"></i></a>
                    </div> <!-- intro thumb -->
                </div>
            </div> <!-- row -->
        </div> <!-- container -->
    </div>
</div>
<?php endif; ?>
<!--====== INTRO VIDEO PART ENDS ======-->

<!--====== LEADERSHIP PART START ======-->
<?php if($commonsetting->is_t2_team_section == 1): ?>
<div class="leadership-area gray-bg pt-105 pb-160">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="section-title text-center pl-25 pr-25" id="team-area">
                    <span><?php echo e($sinfo->team_sub_title); ?></span>
                    <h2 class="title"><?php echo e($sinfo->team_title); ?></h2>
                </div> <!-- section title 2 -->
            </div>
        </div> <!-- row -->
        <div class="row leadership-active">
            <?php $__currentLoopData = $teams; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <div class="col-lg-4">
                <div class="leadership-item mt-30">
                    <img src="<?php echo e(asset('assets/front/img/team/'.$item->image)); ?>" alt="">
                    <div class="leadership-content">
                        <a href="#team-area" class="d-block"><h5 class="title"><?php echo e($item->name); ?></h5></a>
                        
                        <span><?php echo e($item->dagenation); ?></span>
                    </div>
                </div> <!-- leadership item -->
            </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div> <!-- row -->
    </div> <!-- container -->
</div>
<?php endif; ?>
<!--====== LEADERSHIP PART ENDS ======-->

<!--====== PROGRESS BAR PART START ======-->
<?php if($commonsetting->is_t2_counter_section == 1): ?>
<div class="Progress-bar-area mt-150 mb-95">
    <div class="container">
        <div class="row justify-content-center">
            <?php $__currentLoopData = $counters; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-duration=".5s" data-wow-delay=".1s">
                    <div class="Progress-bar-content text-center">
                        <i class="<?php echo e($item->icon); ?>"></i>
                        <h3 class="title"><span class="counter"><?php echo e($item->number); ?></span>+</h3>
                        <p>
                            <?php echo e($item->title); ?>

                        </p>
                    </div>
            </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div> <!-- row -->
    </div> <!-- container -->
</div>
<?php endif; ?>
<!--====== PROGRESS BAR PART ENDS ======-->

<!--====== TESTIMONIAL PART START ======-->
<?php if($commonsetting->is_t2_testimonial_section == 1): ?>
<div class="testimonial-area gray-bg"  style="background-image: url(<?php echo e(asset('assets/front/images/map.png')); ?>">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-6">
                <div class="section-title text-center">
                    <span><?php echo e($sinfo->testimonial_subtitle); ?></span>
                    <h2 class="title"><?php echo e($sinfo->testimonial_title); ?></h2>
                </div>
            </div>
        </div> <!-- row -->
    </div> <!-- container -->
    <div class="container">
        <div class="row no-gutters testimonail-active">
            <?php $__currentLoopData = $testimonials; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <div class="col-md-6">
                <div class="single-testimonial">
                    <img src="<?php echo e(asset('assets/front/img/'.$item->image)); ?>" alt="case-studies">
                    <div class="t-content">
                        <div class="star">
                            <?php for($i = 0; $i < $item->rating; $i++): ?>
                                <i class="fas fa-star"></i>
                            <?php endfor; ?>
                        </div>
                        <p>
                        <?php echo e($item->message); ?>

                    </p>
                    <h4 class="name">
                        <?php echo e($item->name); ?>

                    </h4>
                    <span class="designation"><?php echo e($item->position); ?></span>
                    </div>
                    
                </div> <!-- single case studies -->
            </div>  
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div> <!-- row -->
    </div> <!-- container fluid -->
</div>
<?php endif; ?>
<!--====== TESTIMONIAL PART ENDS ======-->

<!--====== QUOTE PART START ======-->
<?php if($commonsetting->is_t2_contact_section == 1): ?>
<div class="quote-area bg_cover" style="background-image: url(<?php echo e(asset('assets/front/img/'.$sinfo->contact_section_bg_image)); ?>);">
    <div class="quote-overlay">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="section-title text-center pl-25 pr-25">
                        <span class="text-white"><?php echo e($sinfo->contact_sub_title); ?></span>
                        <h2 class="title text-white"><?php echo e($sinfo->contact_title); ?></h2>
                    </div> <!-- section title 2 -->
                </div>
            </div> <!-- row -->
            <div class="quote-form">
                <form action="<?php echo e(route('front.contact.submit')); ?>" method="POST">
                    <?php echo csrf_field(); ?>
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="input-box mt-30">
                                <input type="text" placeholder="<?php echo e(__('Full Name Here')); ?>" name="name">
                                <i class="fal fa-user"></i>
                                <?php if($errors->has('name')): ?>
                                    <p class="text-danger"> <?php echo e($errors->first('name')); ?> </p>
                                <?php endif; ?>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="input-box mt-30">
                                <input type="email" placeholder="<?php echo e(__('Email Here')); ?>" name="email">
                                <i class="fal fa-envelope"></i>
                                <?php if($errors->has('email')): ?>
                                    <p class="text-danger"> <?php echo e($errors->first('email')); ?> </p>
                                <?php endif; ?>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="input-box mt-30">
                                <input type="text" placeholder="<?php echo e(__('Phone No')); ?>" name="phone">
                                <i class="fal fa-phone"></i>
                            </div> <!-- input box -->
                            <?php if($errors->has('phone')): ?>
                                <p class="text-danger"> <?php echo e($errors->first('phone')); ?> </p>
                            <?php endif; ?>
                        </div>
                        <div class="col-lg-6">
                            <div class="input-box mt-30">
                                <input type="text" placeholder="<?php echo e(__('Subject')); ?>" name="subject">
                                <i class="fal fa-edit"></i>
                                <?php if($errors->has('subject')): ?>
                                <p class="text-danger"> <?php echo e($errors->first('subject')); ?> </p>
                            <?php endif; ?>
                            </div> <!-- input box -->
                        </div>
                        <div class="col-lg-12">
                            <div class="input-box text-center mt-30">
                                <textarea name="message" id="#" cols="30" rows="10" placeholder="<?php echo e(__('Message Us')); ?>"></textarea>
                                <?php if($errors->has('message')): ?>
                                <p class="text-danger"> <?php echo e($errors->first('message')); ?> </p>
                                <?php endif; ?>
                             
                            </div>
                        </div>
                        <div class="col-lg-12  mt-30">
                            <?php if($commonsetting->is_recaptcha == 1): ?>
                            <div class="d-inline-block">
                              <?php echo NoCaptcha::renderJs(); ?>

                              <?php echo NoCaptcha::display(); ?>

                              <?php if($errors->has('g-recaptcha-response')): ?>
                                <?php
                                    $errmsg = $errors->first('g-recaptcha-response');
                                ?>
                                <p class="text-danger mb-0"><?php echo e(__("$errmsg")); ?></p>
                              <?php endif; ?>
                            </div>
                        <?php endif; ?>
                            <div class="input-box text-center">
                               
                                <button class="main-btn wow fadeInUp" data-wow-duration="1s" data-wow-delay=".3s" type="submit"><?php echo e(__('Message Us')); ?></button>
                            </div>
                        </div>
                    </div>
                </form>
            </div> <!-- quote form -->
        </div> <!-- container -->
    </div>
</div>
<?php endif; ?>
<!--====== QUOTE PART ENDS ======-->


<!--====== ANSWERS PART START ======-->
<?php if($commonsetting->is_t2_faq_section == 1): ?>
<div class="asnwers-area pt-105 pb-100 gray-bg">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="section-title">
                    <span><?php echo e($sinfo->faq_sub_title); ?></span>
                    <h2 class="title"><?php echo e($sinfo->faq_title); ?></h2>
                
                </div> <!-- section title 2 -->
                <div class="faq-accordion-2 mt-30">
                    <div class="accordion" id="accordionExample">
                        <?php $__currentLoopData = $faqs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <div class="card wow fadeInLeft" data-wow-duration=".5s" data-wow-delay=".3s">
                            <div class="card-header" id="heading<?php echo e($item->id); ?>">
                                <a class="<?php echo e($loop->first ? '' : 'collapsed'); ?>" href="" data-toggle="collapse" data-target="#collapse<?php echo e($item->id); ?>" aria-expanded="<?php echo e($loop->first ? 'true' : 'false'); ?>" aria-controls="collapse<?php echo e($item->id); ?>">
                                   <?php echo e($item->title); ?>

                                </a>
                            </div>

                            <div id="collapse<?php echo e($item->id); ?>" class="collapse <?php echo e($loop->first ? 'show' : ''); ?>" aria-labelledby="heading<?php echo e($item->id); ?>" data-parent="#accordionExample">
                                <div class="card-body">
                                    <?php echo $item->content; ?>

                                </div>
                            </div>
                        </div> <!-- card -->
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </div>
                </div> <!-- faq accordion -->
            </div>
            <div class="col-lg-6 align-self-center">
                <div class="answers-thumb">
                    <div class="answers-thumb-1 text-right">
                        <img src="<?php echo e(asset('assets/front/img/'.$sinfo->faq_image2)); ?>" alt="">
                    </div>
                    <div class="answers-thumb-2">
                        <img src="<?php echo e(asset('assets/front/img/'.$sinfo->faq_image1)); ?>" alt="">
                    </div>
                </div> <!-- answers thumb -->
            </div>
        </div> <!-- row -->
    </div> <!-- containter -->
</div>
<?php endif; ?>
<!--====== ANSWERS PART ENDS ======-->

<!--====== ACTION 2 PART START ======-->
<?php if($commonsetting->is_t2_quote_section == 1): ?>
<div class="action-2-area bg_cover" style="background-image: url(<?php echo e(asset('assets/front/img/'.$sinfo->contact_section_bg_image)); ?>);">
    <div class="action-overlay">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-5">
                    <div class="action-item mt-30">
                        <h2 class="title"><?php echo e(__('Get A Quote right now.')); ?></h2>
                    </div> <!-- action item -->
                </div>
                <div class="col-lg-7">
                    <div class="action-support d-flex mt-30">
                        <div class="action-support-item wow bounceInUp" data-wow-duration=".5s" data-wow-delay=".3s">
                            <p><?php echo e(__('Mail Us')); ?></p>
                            <span>
                                <?php
                                $number = explode( ',', $commonsetting->email );
                                ?>
                                <?php echo e($number[0]); ?>

                            </span>
                            <i class="fal fa-envelope"></i>
                        </div>
                        <div class="action-support-item action-support-item-2 wow bounceInUp" data-wow-duration=".7s" data-wow-delay=".7s">
                            <p><?php echo e(__('Make A Call')); ?></p>
                            <span>
                                <?php
                                $email = explode( ',', $commonsetting->number );
                                ?>
                                <?php echo e($email[0]); ?>

                            </span>
                            <i class="fal fa-phone"></i>
                        </div>
                    </div> <!-- action support -->
                </div>
            </div> <!-- row -->
        </div> <!-- container -->
    </div>
</div> 
<?php endif; ?>
<!--====== ACTION 2 PART ENDS ======-->

<!--====== LATEST NEWS PART START ======-->
<?php if($commonsetting->is_t2_news_section == 1): ?>
<div class="latest-news-area gray-bg">
    
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-6">
                <div class="section-title text-center">
                    <span><?php echo e($sinfo->blog_sub_title); ?></span>
                    <h2 class="title"><?php echo e($sinfo->blog_title); ?></h2>
                </div> <!-- sction title -->
            </div>
        </div> <!-- row -->
        <div class="row news-area justify-content-center">
            <?php $__currentLoopData = $blogs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <div class="col-lg-4 col-md-6 col-sm-9">
                <div class="single-news mt-30">
                    <div class="img" style="background-image: url(<?php echo e(asset('assets/front/img/blog/'.$item->image)); ?>)"></div>
                    <div class="single-news-overlay">
                        <span><?php echo e($item->bcategory->name); ?></span>
                        <h5 class="title"><a href="<?php echo e(route('front.blogdetails', $item->slug)); ?>"><?php echo e((strlen(strip_tags(Helper::convertUtf8($item->title))) > 40) ? substr(strip_tags(Helper::convertUtf8($item->title)), 0, 40) . '...' : strip_tags(Helper::convertUtf8($item->title))); ?></a></h5>
                        <a href="<?php echo e(route('front.blogdetails', $item->slug)); ?>"><i class="fal fa-long-arrow-right"></i></a>
                    </div>
                </div> <!-- single news -->
            </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div> <!-- row -->
    </div> <!-- container -->
    
</div>
<?php endif; ?>
<!--====== LATEST NEWS PART ENDS ======-->

<!--====== BRAND 2 PART START ======-->
<?php if($commonsetting->is_t2_client_section == 1): ?>
<div class="brand-2-area pb-120">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="brand-active">
                    <?php $__currentLoopData = $clients; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <a href="<?php echo e($item->link); ?>" class="brand-item">
                        <img src="<?php echo e(asset('assets/front/img/client/'.$item->image)); ?>" alt="<?php echo e($item->name); ?>">
                    </a> 
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </div> <!-- brand item -->
            </div>
        </div> <!-- row -->
    </div> <!-- container -->
</div>
<?php endif; ?>
<!--====== BRAND 2 PART ENDS ======-->

<?php $__env->stopSection(); ?>

<?php echo $__env->make('front.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH E:\xampp\htdocs\blueoceantech.in\core\resources\views/front/themes/theme2.blade.php ENDPATH**/ ?>