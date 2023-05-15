
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
					<h2 class="title"><?php echo e(__('Team')); ?></h2>
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="<?php echo e(route('front.index')); ?>"><?php echo e(__('Home')); ?> </a></li>
							<li class="breadcrumb-item active" aria-current="page"><?php echo e(__('Team')); ?></li>
						</ol>
					</nav>
				</div> <!-- page title -->
			</div>
		</div> <!-- row -->
	</div> <!-- container -->
</div> 

<!--====== PAGE TITLE PART ENDS ======-->
    
<!--====== LEADERSHIP PART START ======-->

<div class="leadership-area  pt-70 pb-120">
	<div class="container">
		<div class="row">
			<?php $__currentLoopData = $teams; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $team): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
			<div class="col-lg-4 col-md-6 col-sm-6">
				<div class="leadership-item mt-50">
					<img src="<?php echo e(asset('assets/front/img/team/'.$team->image)); ?>" alt="">
					<div class="leadership-content">
						<a href="<?php echo e(route('front.team_details', $team->id)); ?>" class="d-block"><h5 class="title"><?php echo e($team->name); ?></h5></a>
						<span><?php echo e($team->dagenation); ?></span>
					</div>
				</div> <!-- leadership item -->
			</div>
			<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
		</div> <!-- row -->
		<div class="row mt-30">
			<div class="col-lg-12 text-center">
				<div class="d-inline-block">
					<?php echo e($teams->links()); ?>

				</div>
			</div>
		</div>
	</div> <!-- container -->
</div>
<!--====== LEADERSHIP PART ENDS ======-->

	<!-- Team Area Start -->
	
	<!-- Team Area End -->

<?php $__env->stopSection(); ?>

<?php echo $__env->make('front.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/u376743586/domains/blueoceantech.in/public_html/core/resources/views/front/team.blade.php ENDPATH**/ ?>