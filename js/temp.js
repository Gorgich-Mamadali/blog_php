var $a= $.noConflict(true);
        $a(window).scroll(function(){
            if ($a(window).scrollTop() >= 50) {
                $a('.header-bottom').addClass('fixed-header');
            }
            else {
                $a('.header-bottom').removeClass('fixed-header');
            }
        });