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

  // //Morris JS Bar Charts

  // var userId = $('.userId').html();
  // var currentQuarter = $('.currentQuarter').html();
  // //Individual student
  // $.ajax(
  //   // '/users/' + userId + '/data.json',
  //   '/users/' + userId + '/data.json' + '?q=' + currentQuarter,
  //   {
  //     success: function(graph_data) {
  //       var container = $('.chart');
  //       var colors = ['red','skyblue','green','gold'];
  //       container.append('<div id="ratings_chart" class="graph" />');
  //       Morris.Bar({
  //         element: 'ratings_chart',
  //         data: graph_data,
  //         xkey: 'category',
  //         ykeys: ['student', 'teachers'],
  //         labels: ['Student', 'Teachers']
  //       });
  //     }
  //   }
  // );

  // //teacher dashboard
  // $.ajax(
  //   '/dashboard/' + userId + '/data.json',
  //   {
  //     success: function(graph_data) {
  //       var container = $('.chart2');
  //       var colors = ['red','skyblue','green','gold'];
  //       container.append('<div id="ratings_chart2" class="graph ratings_chart" />');
  //       Morris.Bar({
  //         element: 'ratings_chart2',
  //         data: graph_data,
  //         xkey: 'category',
  //         ykeys: ['student', 'teachers'],
  //         labels: ['Students', 'Teachers']
  //       });
  //     }
  //   }
  // );

});

