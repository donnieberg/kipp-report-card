$(function () {
  var average = "Average";
  var rater = $('.rater-name').html();
  var rater2 = $('.student-last-name').html();
  // $(".raw-data tr:first td:last").after("<td>" + average + "</td>");
  // $(".raw-data tr:first td:last").after("<td>" + rater + "</td>");
  // $(".raw-data tr:first td:last").after("<td>" + rater2 + "</td>");


  //Responsive Tables
  $('.footable').footable();

  //Circular progress bars on dashboard
  $(".knob").knob();

  $('.carousel').carousel();

});

