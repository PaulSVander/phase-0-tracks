$(document).ready(function() {
  
  //fades out the job that is clicked
  $('.job').click(function() {
    $(this).fadeTo(1000, 0.1)
  })

  //add border to resume title when hovered over
  $('#resume-title').hover(function() {
    $(this).css({"border-style": "solid",
                 "border-color": "green",
                 "border-width": "2px"})
  })


  $('p:first').addClass('background-change');

  //hides entire work experience section when button is clicked
  $('button').click(function() {
    $("#work-experience").hide();
  })

})