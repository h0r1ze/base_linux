    function openNav() {
        document.getElementById("mySidenav").style.width = "350px";
    }

    function closeNav() {
        document.getElementById("mySidenav").style.width = "0";
    }
    document.getElementById("mySidenavRight").style.width = "320px";
    function openNavRight() {
        document.getElementById("mySidenavRight").style.width = "320px";
    }
    function closeNavRight() {
        document.getElementById("mySidenavRight").style.width = "0";
    }

    let clipboard = new ClipboardJS(".js-copy-btn");
    $(".js-copy-text").each(function (i, item) {
        $(item).addClass("cb-target-" + i);
    });
    $(".js-copy-btn").each(function (i, item) {
        $(item).attr("data-clipboard-target", ".cb-target-" + i);
    });
    $(document).ready(function(){
        $('.topmenu a').click(function(){
            var otstupTop=100;
            $('body,html').animate({
                scrollTop: $($(this).attr('href')).offset().top-otstupTop
            }, 1500);
        });
    });
        function hideImageButton(){
        $('img').hide(0)
        $('#hide').hide(0)
        }
        function showImageButton(){
        $('img').show(0)
        $('#hide').show(0)
        $()
        }
    window.onload = function () {
    document.body.classList.add('loaded_hiding');
    window.setTimeout(function () {
        document.body.classList.add('loaded');
        document.body.classList.remove('loaded_hiding');
    }, 500);
    }