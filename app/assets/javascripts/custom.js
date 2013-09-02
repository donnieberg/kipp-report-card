$(function () {

  var studentId = $('.studentId').html();

  //Responsive Tables
  $('.footable').footable();

  //Circular progress bars on dashboard
  $(".knob").knob();

  //Morris JS Bar Charts
  $.ajax(
    '/users/' + studentId + '/data.json',
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

});









