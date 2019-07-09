$(function(){
	
	$('#switch_qlogin').click(function(){
		$('#switch_login').removeClass("switch_btn_focus").addClass('switch_btn');
		$('#switch_qlogin').removeClass("switch_btn").addClass('switch_btn_focus');
		$('#switch_bottom').animate({left:'0px',width:'70px'});
		$('#qlogin').css('display','none');
		$('#web_qr_login').css('display','block');
		
		});
	$('#switch_login').click(function(){
		
		$('#switch_login').removeClass("switch_btn").addClass('switch_btn_focus');
		$('#switch_qlogin').removeClass("switch_btn_focus").addClass('switch_btn');
		$('#switch_bottom').animate({left:'154px',width:'70px'});
		
		$('#qlogin').css('display','block');
		$('#web_qr_login').css('display','none');
		});
   $("#reg").click(function () {
       if ($('#passwd2').val() != $('#passwd').val()) {
           $('#passwd2').focus();
           $('#userCue').html("<font color='red'><b>×两次密码不一致！</b></font>");
           return false;
       }
       else if($("#phone").val()==""){
           $('#passwd2').focus();
           $('#userCue').html("<font color='red'><b>×请输入电话号码！</b></font>");
           return false;
	   }
       else {
           $('#regUser').submit();
       }
   })
	$(".button_blue").click(function () {
        if($(".check1 input:checked").length==0){
            $('#userCue1').html("<font color='red'><b>×选择一个登陆方式！</b></font>");
            return false;
        }
    })


	});
	
function logintab(){
	scrollTo(0);
	$('#switch_qlogin').removeClass("switch_btn_focus").addClass('switch_btn');
	$('#switch_login').removeClass("switch_btn").addClass('switch_btn_focus');
	$('#switch_bottom').animate({left:'154px',width:'96px'});
	$('#qlogin').css('display','none');
	$('#web_qr_login').css('display','block');
	
}
