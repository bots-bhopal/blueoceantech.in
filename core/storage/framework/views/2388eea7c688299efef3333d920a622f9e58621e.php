<div class="col-lg-6">
    <div class="header-left-side text-center text-sm-left">
        <ul>
            <?php
            $email = explode( ',', $commonsetting->email );
            ?>
            <li>
                <a href="mailto:<?php echo e($email[0]); ?>"><i class="fal fa-envelope"></i> 
                <?php echo e($email[0]); ?>

                </a>
            </li>
            <?php
            $number = explode( ',', $commonsetting->number );
            ?>
            <li>
                <a href="tel:<?php echo e($number[0]); ?>"><i class="fal fa-phone"></i>  
                <?php echo e($number[0]); ?>

                </a>
            </li>
        </ul>
    </div>
</div>
<div class="col-lg-6">
    <div class="right-area">
        <div class="header-right-social d-none d-lg-inline-block">
            <ul>
                <?php $__currentLoopData = $socials; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <li><a href="<?php echo e($item->url); ?>" target="<?php echo e($item->target); ?>"><i class="<?php echo e($item->icon); ?>"></i></a></li>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                
            </ul>
        </div>
       
        
        
    </div>

</div><?php /**PATH E:\xampp\htdocs\blueoceantech.in\core\resources\views/front/partials/menu/topContent.blade.php ENDPATH**/ ?>