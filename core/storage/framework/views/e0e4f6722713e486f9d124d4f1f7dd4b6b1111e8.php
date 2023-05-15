
<?php $__env->startSection('meta-keywords', "$setting->meta_keywords"); ?>
<?php $__env->startSection('meta-description', "$setting->meta_description"); ?>
<?php $__env->startSection('content'); ?>


 <!--====== BANNER PART START ======-->
 <?php if($commonsetting->is_t3_hero_section == 1): ?>
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
        <div class="banner-area-2 bg_cover" style="background-image: url(<?php echo e(asset('assets/front/img/'.$sinfo->hero_bg_image )); ?>);">
            <div class="banner-overlay">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-9">
                            <div class="banner-content text-center">
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
    <?php endif; ?>
<?php endif; ?>
<!--====== BANNER PART ENDS ======-->

<!--====== SERVICES PART START ======-->
<?php if($commonsetting->is_t3_service_section == 1): ?>
<div class="services-area pt-115 pb-120">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="section-title text-center">
                    <span><?php echo e($sinfo->service_sub_title); ?></span>
                    <h2 class="title"><?php echo e($sinfo->service_title); ?></h2>
                </div><!-- section title -->
            </div>
        </div> <!-- row -->
        <div class="row justify-content-center">
            <?php $__currentLoopData = $services; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <div class="col-lg-4 col-md-6 col-sm-8 wow fadeInUp" data-wow-duration=".1s" data-wow-delay=".3s">
                <div class="single-services text-center mt-30">
                    <div class="icon">
                        <i class="<?php echo e($item->icon); ?>"></i>
                    </div>
                    <h4 class="title"><?php echo e($item->title); ?></h4>
                    <p><?php echo e((strlen(strip_tags(Helper::convertUtf8($item->content))) > 120) ? substr(strip_tags(Helper::convertUtf8($item->content)), 0, 120) . '...' : strip_tags(Helper::convertUtf8($item->content))); ?></p>
                    <a href="<?php echo e(route('front.service.details', $item->slug)); ?>"><i class="fal fa-angle-right"></i> <?php echo e(__('Read More')); ?></a>
                </div> <!-- singke services -->
            </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div> <!-- row -->
    </div> <!-- container -->
</div>
<?php endif; ?>
<!--====== SERVICES PART ENDS ======-->

<!--====== VIDEO PART START ======-->
<?php if($commonsetting->is_t3_portfolio_section == 1): ?>
<div class="video-area bg_cover" style="background-image: url(<?php echo e(asset('assets/front/')); ?>/images/video-bg.jpg);">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="video-item">
                    <a class="video-popup" href="<?php echo e($sinfo->video_link); ?>"><i class="fal fa-play"></i></a><br>
                    <span><?php echo e($sinfo->portfolio_sub_title); ?></span>
                    <h3 class="title"><?php echo e($sinfo->portfolio_title); ?></h3>
                </div> <!-- video item -->
            </div>
        </div> <!-- row -->
    </div> <!-- container -->
    <div class="video-thumb-1">
        <img src="<?php echo e(asset('assets/front/img/'.$sinfo->video_image_left)); ?>" alt="">
    </div>
    <div class="video-thumb-2">
        <img src="<?php echo e(asset('assets/front/img/'.$sinfo->video_image_right)); ?>" alt="">
    </div>
</div>
<?php endif; ?>
<!--====== VIDEO PART ENDS ======-->

<!--====== PORTFOLIO PART START ======-->
<?php if($commonsetting->is_t3_portfolio_section == 1): ?>
<div class="portfolio-area">
    <div class="container">
        <div class="row portfolio-active">
            <?php $__currentLoopData = $portfolios; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <div class="col-lg-4">
                <a href="<?php echo e(route('front.portfolio.details', $item->slug)); ?>" class="single-portfolio mb-30">
                    <div class="portfolio-thumb">
                        <img src="<?php echo e(asset('assets/front/img/portfolio/'.$item->featured_image)); ?>" alt="">
                    </div>
                    <div class="portfolio-content">
                        <span><?php echo e($item->service->title); ?></span>
                        <h5 class="title">
                            <?php echo e((strlen(strip_tags(Helper::convertUtf8($item->title))) > 40) ? substr(strip_tags(Helper::convertUtf8($item->title)), 0, 40) . '...' : strip_tags(Helper::convertUtf8($item->title))); ?>

                        </h5>
                        <p><?php echo e((strlen(strip_tags(Helper::convertUtf8($item->content))) > 120) ? substr(strip_tags(Helper::convertUtf8($item->content)), 0, 120) . '...' : strip_tags(Helper::convertUtf8($item->content))); ?></p>
                    </div>
                </a> <!-- single portfolio -->
            </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div> <!-- row -->
    </div> <!-- container -->
</div>
<?php endif; ?>
<!--====== PORTFOLIO PART ENDS ======-->

    <!--====== TESTIMONIAL PART START ======-->
    <?php if($commonsetting->is_t3_testimonial_section == 1): ?>
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
<!--====== FAQ PART START ======-->
<?php if($commonsetting->is_t3_faq_section == 1): ?>
<div class="faq-area pt-120">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="section-title text-left">
                    <span><?php echo e($sinfo->faq_sub_title); ?></span>
                    <h2 class="title"><?php echo e($sinfo->faq_title); ?></h2>
                </div> <!-- section title -->
                <div class="faq-accordion">
                    <div class="accordion" id="accordionExample">
                        <?php $__currentLoopData = $faqs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <div class="card">
                            <div class="card-header" id="heading<?php echo e($item->id); ?>">
                                <a class="<?php echo e($loop->first ? '' : 'collapsed'); ?>" href="" data-toggle="collapse" data-target="#collapse<?php echo e($item->id); ?>" aria-expanded="<?php echo e($loop->first ? 'true' : 'false'); ?>" aria-controls="collapse<?php echo e($item->id); ?>">
                                    <?php echo e($item->title); ?>

                                </a>
                            </div>

                            <div id="collapse<?php echo e($item->id); ?>" class="collapse  <?php echo e($loop->first ? 'show' : ''); ?>" aria-labelledby="heading<?php echo e($item->id); ?>" data-parent="#accordionExample">
                                <div class="card-body">
                                    <p><?php echo $item->content; ?></p>
                                </div>
                            </div>
                        </div>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </div>
                </div> <!-- faq accordion -->
            </div>
            <div class="col-lg-6 mt-5">
                <div class="row">
                    <?php $__currentLoopData = $counters; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div class="col-lg-6 col-md-6 mb-30 wow fadeInUp" data-wow-duration=".5s" data-wow-delay=".2s">
                        <div class="single-faq">
                            <h3 class="title"><span class="counter"><?php echo e($item->number); ?> </span>+</h3>
                            <span><?php echo e($item->title); ?></span>
                            <p><?php echo e($item->text); ?></p>
                            <i class="<?php echo e($item->icon); ?>"></i>
                        </div> <!-- single faq -->
                    </div>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </div>
            </div>
        </div> <!-- row -->
    </div> <!-- container -->
</div>
<?php endif; ?>
<!--====== FAQ PART ENDS ======-->

<!--====== TEAM PART START ======-->
<?php if($commonsetting->is_t3_team_section == 1): ?>
<div class="team-area gray-bg pt-115">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="section-title text-center">
                    <span><?php echo e($sinfo->team_sub_title); ?></span>
                    <h2 class="title"><?php echo e($sinfo->team_title); ?></h2>
                </div><!-- section title -->
            </div>
        </div> <!-- row -->
        <div class="row justify-content-center">
            <?php $__currentLoopData = $teams; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="single-team mt-30">
                    <div class="team-thumb">
                        <img src="<?php echo e(asset('assets/front/img/team/'.$item->image)); ?>" alt="">
                    </div>
                    <div class="team-content text-center">
                        <a href="<?php echo e(route('front.team_details', $item->id)); ?>"><h5 class="title"><?php echo e($item->name); ?></h5></a>
                        <span><?php echo e($item->dagenation); ?></span>
                    </div>
                </div> <!-- single team -->
            </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div> <!-- row -->
    </div> <!-- container -->
</div>
<?php endif; ?>
<!--====== TEAM PART ENDS ======-->

<!--====== ACTION PART START ======-->
<?php if($commonsetting->is_t3_meet_us_section == 1): ?>
<div class="action-area">
    <div class="action-overlay bg_cover" style="background-image: url(<?php echo e(asset('assets/front/img/'.$sinfo->meeet_us_bg_image )); ?>);">
        <div class="container">
            <div class="action-bg">
                <div class="row align-items-center">
                    <div class="col-lg-8">
                        <div class="action-content">
                            <h3 class="title"><?php echo e($sinfo->meeet_us_text); ?></h3>
                        </div> <!-- action content -->
                    </div>
                    <div class="col-lg-4">
                        <div class="action-btn text-left text-lg-right">
                            <a class="main-btn" href="contact.html"><i class="fal fa-comments"></i><?php echo e($sinfo->meeet_us_button_text); ?></a>
                        </div> <!-- action btn -->
                    </div>
                </div>
            </div> <!-- row -->
        </div> <!-- container -->
    </div>
</div>
<?php endif; ?>
<!--====== ACTION PART ENDS ======-->

<!--====== BLOG PART START ======-->
<?php if($commonsetting->is_t3_news_section == 1): ?>
<div class="blog-area pt-115 pb-120">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="section-title text-center">
                    <span><?php echo e($sinfo->blog_sub_title); ?></span>
                    <h2 class="title"><?php echo e($sinfo->blog_title); ?></h2>
                </div><!-- section title -->
            </div>
        </div> <!-- row -->
        <div class="row">
            <?php $__currentLoopData = $blogs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-duration=".5s" data-wow-delay=".4s">
                <div class="single-blog mt-30">
                    <ul>
                        <li><i class="fal fa-user"></i> By Admin</li>
                        <li><i class="fal fa-calendar-alt"></i> <?php echo e(date ( 'd M, Y', strtotime($item->created_at) )); ?></li>
                    </ul>
                    <h4 class="title"><a href="<?php echo e(route('front.blogdetails', $item->slug)); ?>"><?php echo e((strlen(strip_tags(Helper::convertUtf8($item->title))) > 40) ? substr(strip_tags(Helper::convertUtf8($item->title)), 0, 40) . '...' : strip_tags(Helper::convertUtf8($item->title))); ?></a></h4>
                    <p><?php echo e((strlen(strip_tags(Helper::convertUtf8($item->content))) > 130) ? substr(strip_tags(Helper::convertUtf8($item->content)), 0, 130) . '...' : strip_tags(Helper::convertUtf8($item->content))); ?></p>
                    <a href="<?php echo e(route('front.blogdetails', $item->slug)); ?>"><i class="fal fa-angle-right"></i> <?php echo e(__('Read More')); ?></a>
                </div>
            </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div> <!-- row -->
    </div> <!-- container -->
</div>
<?php endif; ?>
<!--====== BLOG PART ENDS ======-->


    <!--====== BRAND 2 PART START ======-->
    <?php if($commonsetting->is_t3_client_section == 1): ?>
    <div class="brand-2-area pb-120 pt-0">
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
<?php echo $__env->make('front.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH E:\xampp\htdocs\blueoceantech.in\core\resources\views/front/themes/theme3.blade.php ENDPATH**/ ?>