
<?php $__env->startSection('meta-keywords', "$setting->meta_keywords"); ?>
<?php $__env->startSection('meta-description', "$setting->meta_description"); ?>
<?php $__env->startSection('content'); ?>

 <!--====== PAGE TITLE PART START ======-->
 <div class="page-title-area" style="background-image: url('<?php echo e(asset('assets/front/img/'.$setting->breadcrumb_image)); ?>')">
	<div class="overlay"></div>
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="page-title-item text-center">
					<h2 class="title"><?php echo e($team->name); ?></h2>
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="<?php echo e(route('front.index')); ?>"><?php echo e(__('Home')); ?> </a></li>
							<li class="breadcrumb-item"><a href="<?php echo e(route('front.team')); ?>"><?php echo e(__('Team')); ?> </a></li>
							<li class="breadcrumb-item active" aria-current="page"><?php echo e($team->name); ?></li>
						</ol>
					</nav>
				</div> <!-- page title -->
			</div>
		</div> <!-- row -->
	</div> <!-- container -->
</div> 


<!--====== PAGE TITLE PART ENDS ======-->
    
 <!--====== TEAM DETAILS PART START ======-->
         
 <div class="team-details-area pt-120 pb-120" >
    <div class="container">
        <div class="row align-teams-center">
            <div class="col-lg-6">
                <div class="team-details-thumb">
                    <img src="<?php echo e(asset('assets/front/img/team/'.$team->image)); ?>" alt="">
                </div>
            </div>
            <div class="col-lg-6">
                <div class="team-details-content">
                    <h4 class="title"><?php echo e($team->name); ?></h4>
                    <span><?php echo e($team->dagenation); ?></span>
                    <div class="pb-15">
                        <?php echo $team->description; ?>

                    </div>
                    <ul>
                        <?php if($team->url1 && $team->icon1): ?>
                        <li>
                            <a href="<?php echo e($team->url1); ?>">
                                <i class="<?php echo e($team->icon1); ?>"></i>
                            </a>
                        </li>
                        <?php endif; ?>
                        <?php if($team->url2 && $team->icon2): ?>
                        <li>
                            <a href="<?php echo e($team->url2); ?>">
                                <i class="<?php echo e($team->icon2); ?>"></i>
                            </a>
                        </li>
                        <?php endif; ?>
                        <?php if($team->url3 && $team->icon3): ?>
                        <li>
                            <a href="<?php echo e($team->url3); ?>">
                                <i class="<?php echo e($team->icon3); ?>"></i>
                            </a>
                        </li>
                        <?php endif; ?>
                        <?php if($team->url4 && $team->icon4): ?>
                        <li>
                            <a href="<?php echo e($team->url4); ?>">
                                <i class="<?php echo e($team->icon4); ?>"></i>
                            </a>
                        </li>
                        <?php endif; ?>
                        <?php if($team->url5 && $team->icon5): ?>
                        <li>
                            <a href="<?php echo e($team->url5); ?>">
                                <i class="<?php echo e($team->icon5); ?>"></i>
                            </a>
                        </li>
                        <?php endif; ?>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div> 

<!--====== TEAM DETAILS PART ENDS ======-->


<?php $__env->stopSection(); ?>

<?php echo $__env->make('front.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH E:\xampp\htdocs\blueoceantech.in\core\resources\views/front/team-details.blade.php ENDPATH**/ ?>