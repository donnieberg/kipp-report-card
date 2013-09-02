$(function () {

  var userId = $('.userId').html();

  //Responsive Tables
  $('.footable').footable();

  //Circular progress bars on dashboard
  $(".knob").knob();

  //Morris JS Bar Charts
  //Individual student
  $.ajax(
    '/users/' + userId + '/data.json',
    {
      success: function(graph_data) {
        var container = $('.chart');
        var colors = ['red','skyblue','green','gold'];
        container.append('<div id="ratings_chart" class="graph" />');
        Morris.Bar({
          element: 'ratings_chart',
          data: graph_data,
          xkey: 'category',
          ykeys: ['student', 'teachers'],
          labels: ['Student', 'Teachers']
        });
      }
    }
  );

  //admin & teacher dashboard
  $.ajax(
    '/dashboard/' + userId + '/data.json',
    {
      success: function(graph_data) {
        var container = $('.chart2');
        var colors = ['red','skyblue','green','gold'];
        container.append('<div id="ratings_chart2" class="graph ratings_chart" />');
        Morris.Bar({
          element: 'ratings_chart2',
          data: graph_data,
          xkey: 'category',
          ykeys: ['student', 'teachers'],
          labels: ['Students', 'Teachers']
        });
      }
    }
  );

});









