<header class="header-area-2">
    <div class="header-top pl-30 pr-30">
        <div class="container-fluid">
            <div class="myrow align-items-center">
                <?php echo $__env->make('front.partials.menu.topContent', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            </div>
        </div>
    </div>
    <div class="header-nav">
        <div class="navigation">
            <nav class="navbar navbar-expand-lg navbar-light ">
                <?php echo $__env->make('front.partials.menu.nav-item', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            </nav>
        </div> <!-- navigation -->
    </div>
</header><?php /**PATH E:\xampp\htdocs\cms\core\resources\views/front/partials/menu/menu3.blade.php ENDPATH**/ ?>