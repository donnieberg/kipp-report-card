$(function () {
  var average = "Average";
  var rater = $('.rater-name').html();
  var rater2 = $('.student-last-name').html();

  //Responsive Tables
  $('.footable').footable();

  //Circular progress bars on dashboard
  $(".knob").knob();

  $('.carousel').carousel({
    interval: 4000
  });

  $('.category-name').each(function(){
    if($(this).html() == "Zest") {
      $(this).prepend("<i class='icon-thumbs-up-alt icon-large category-icon'></i>");
    } else if ($(this).html() == "Grit") {
      $(this).prepend("<i class='icon-cloud-upload icon-large category-icon'></i>");
    } else if ($(this).html() == "School Work") {
      $(this).prepend("<i class='icon-file-text-alt icon-large category-icon'></i>");
    } else if ($(this).html() == "Interpersonal") {
      $(this).prepend("<i class='icon-group icon-large category-icon'></i>");
    } else if ($(this).html() == "Optimism") {
      $(this).prepend("<i class='icon-smile icon-large category-icon'></i>");
    } else if ($(this).html() == "Gratitude") {
      $(this).prepend("<i class='icon-heart-empty icon-large category-icon'></i>");
    } else if ($(this).html() == "Social Intelligence") {
      $(this).prepend("<i class='icon-comments icon-large category-icon'></i>");
    } else if ($(this).html() == "Curiosity") {
      $(this).prepend("<i class='icon-eye-open icon-large category-icon'></i>");
    }
  });


});

