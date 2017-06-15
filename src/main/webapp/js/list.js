angular.module("app",[])
    .controller("index",function ($scope,$http) {
            $http.get('/ps/api/v1/anon/show/1').success(function(data) {
                //$scope.aboutPic =
                setUrl(data.toString().split("\"")[1]);
            });
        //导航
            $http.get("/ps/api/v1/anon/category").success(function(data) {
                $scope.menulist = data;
                $scope.$on('ngRepeatFinished', function( ngRepeatFinishedEvent ) {
                    //导航
                    $(document).ready(function(){
//    nav-li hover e
                        var num;
                        $('.nav-main>li[id]').hover(function(){
                            /*图标向上旋转*/
                            $(this).find("span").removeClass().addClass('hover-up');
                            /*下拉框出现*/
                            var Obj = $(this).attr('id');
                            num = Obj.substring(3, Obj.length);
                            $('#box-'+num).slideDown(300);
                        },function(){
                            /*图标向下旋转*/
                            $(this).find("span").removeClass().addClass('hover-down');
                            /*下拉框消失*/
                            $('#box-'+num).hide();
                        });
//    hidden-box hover e
                        $('.hidden-box').hover(function(){
                            /*保持图标向上*/
                            $('#li-'+num).find("span").removeClass().addClass('hover-up');
                            $(this).show();
                        },function(){
                            $(this).slideUp(200);
                            $('#li-'+num).find("span").removeClass().addClass('hover-down');
                        });
                    });

//回到顶部
                    function tBox(){
                        //h = $(window).height();
                        t = $(document).scrollTop();
                        if(t > 150){
                            $(".tbox").fadeIn(300);
                        }else{
                            $(".tbox").fadeOut(300);
                        }
                    }

                    $(document).ready(function(e){
                        $("body").append('<div class="tbox"><a href="javascript:void(0)" id="gotop"></a></div>');

                        tBox();

                        $("#gotop").click(function(){
                            $(document).scrollTop(0);
                        })
                    });

                    $(window).scroll(function(e){
                        tBox();
                    })
                });
            });




        $http.get("/ps/client/api/v2/anon/article/" + getCID()).success(function(data) {
            //$scope.deparList = data.deparList;
            $scope.articleList = data.listDate;
            $scope.page = data.pageModel;
        });

        //不需要看
        $scope.$on('ngRepeatFinished', function( ngRepeatFinishedEvent ) {
            var ie6 = !-[1,] && !window.XMLHttpRequest;
            var userAgent = navigator.userAgent.toLowerCase();
            var browser = {
                ie8: /msie 8/.test(userAgent),
                ie7: /msie 7/.test(userAgent)
            };

            $.fn.slide=function(){
                var defaults,opts,data_opts,$this,$b_,t,n=0,count,$nav,$p,$n,DelayObj,Delay=false;
                defaults={
                    fade:true,
                    auto:true,
                    time:4000,
                    action:'mouseover',
                    fn:null
                };
                $this=$(this);
                data_opts=$this.data('slide')||{};
                opts=$.extend({},defaults,data_opts);
                $b_=$this.children('.ban_c');
                count=$b_.length;
                if($this.find('.ban_nav').length){$nav=$this.find('.ban_nav')}else{
                    $nav=$('<div class="ban_nav"></div>');
                    for(i=0;i<count;i++){$nav.append('<a>'+(i+1)+'</a>')};
                    $this.append($nav)
                };
                $this.append('<a class="Left" onselectstart="return false;"></a><a class="Right" onselectstart="return false;"></a>');
                $nav.children('a').eq(0).addClass('on');
                $nav.children('a').eq(1).addClass('ban_next');
                $nav.children('a').eq(count-1).addClass('ban_prev');
                $b_.hide().eq(0).show();
                if(ie6){$b_.height($b_.attr('height') || $this.height())};
                $nav.children('a').each(function(index) {
                    $(this).on(opts.action,function(event) {
                        event.preventDefault();
                        event.stopPropagation();
                        if (index >= count){return false}else{
                            $nav.children('a').eq(index-1).addClass('ban_prev').siblings().removeClass('ban_prev');
                            $nav.children('a').eq(index==count-1 ? 0 : index+1).addClass('ban_next').siblings().removeClass('ban_next')
                        };
                        if(opts.fade){$b_.stop(1,1).fadeOut(200).eq(index).stop(1,1).fadeIn(500)}else{$b_.hide().eq(index).show()};
                        $(this).addClass('on').siblings().removeClass("on");
                        n=index
                    })
                });
                $p=$(this).find('.Left');
                $n=$(this).find('.Right');
                if(opts.auto){
                    t = setInterval(function(){showAuto()}, opts.time);
                    $this.mouseenter(function(){
                        clearInterval(t);
                    }).mouseleave(function(){
                        t=setInterval(function(){showAuto()},opts.time);
                    })
                };
                $p.click(function(){showPre()});
                $n.click(function(){showAuto()});
                function showAuto(){n=n>=(count - 1) ? 0 : ++n;$nav.find('a').eq(n).trigger(opts.action);};
                function showPre(){n=n<=0 ? (count - 1) : --n;$nav.find('a').eq(n).trigger(opts.action)};
                if(opts.fn){eval(opts.fn+"(opts,$b_,$nav)")}
            };
            $('.slide').each(function() {$(this).slide()});
        });




        $scope.pageclick = function(page) {
            function getPage() {
                var cpage = 0;
                var totalnum = 0;
                cpage = $scope.page.cpage;
                totalnum = $scope.page.totalnum;
                if (page == "«") {
                    if (cpage > 1) {
                        cpage -= 1;
                    }
                } else if (page == "»") {
                    if (cpage < totalnum)
                        cpage += 1;
                } else {
                    cpage = page;
                }
                return cpage;
            }

            page = getPage();

            $http.get("/ps/client/api/v2/anon/article/" + getCID() + "?pageNumber=" + page).success(function(data) {
                //$scope.deparList = data.deparList;
                $scope.articleList = data.listDate;
                $scope.page = data.pageModel;
            });
        };

    }).directive('onFinishRender', function ($timeout) {
    return {
        restrict: 'A',
        link: function (scope, element, attr) {
            if (scope.$last === true) {
                $timeout(function () {
                    scope.$emit('ngRepeatFinished');
                });
            }
        }
    }
});

function setUrl(url) {
    $('#aboutPic').attr("src",url);
}


function getCID() {
    return $('#cid').val();
}