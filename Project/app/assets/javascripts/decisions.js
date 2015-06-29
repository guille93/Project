$(document).ready(function()
{
 $('#efect').hide().fadeIn(3000); 
});

$(".progress-bar-success").css("width", "<%= @randomdecision.vote_1*100/(@randomdecision.vote_1+@randomdecision.vote_2)%>%");

//Slide Categorias :
/*
$(function(){
    $('#slider div:gt(0)').hide();
    setInterval(function(){
      $('#slider div:first-child').fadeOut(0)
         .next('div').fadeIn(1000)
         .end().appendTo('#slider');}, 4000);
});
*/