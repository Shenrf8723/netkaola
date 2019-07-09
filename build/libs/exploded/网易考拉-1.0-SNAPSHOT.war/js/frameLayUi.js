$(function () {
    layui.use('element', function(){
        var element = layui.element;

    });
    var isShow = true;  //定义一个标志位
    $('.kit-side-fold').click(function(){
        //选择出所有的span，并判断是不是hidden
        $('.layui-nav-item span').each(function(){
            if($(this).is(':hidden')){
                $(this).show();
            }else{
                $(this).hide();
            }
        });
        //判断isshow的状态
        if(isShow){
            $('.layui-side.layui-bg-black').width(80); //设置宽度
            $('.kit-side-fold i').css('margin-left','10%');  //修改图标的位置
            //将footer和body的宽度修改
            $('.layui-body').animate({left: 80+'px'});
            $('.layui-footer').animate({left: 80+'px'});
            //将二级导航栏隐藏
            $('dd span').each(function(){
                $(this).hide();
            });
            //修改标志位
            isShow =false;
        }else{
            $('.layui-side.layui-bg-black').width(200);
            $('.kit-side-fold i').animate({marginLeft: '40%'});
            $('.layui-body').animate({left: 200+'px'});
            $('.layui-footer').animate({left: 200+'px'});
            $('dd span').each(function(){
                $(this).show();
            });
            isShow =true;
        }
    });

    layui.use('form', function(){

        var form = layui.form;

        form.render();

    });


})
