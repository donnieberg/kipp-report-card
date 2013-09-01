$(function () {
  var myVarsJSON = $("#my_vars_json").html(),
        myVars     = $.parseJSON(myVarsJSON);

  console.log(myVars);

  //Responsive Tables
  $('.footable').footable();

  //Circular progress bars on dashboard
  $(".knob").knob();

  $.ajax(
    // '/data.json',     //anytime you see a route, check the route file.
    '/users/' + myVars + '/data.json',
    {                 // sent back here from the controller after the json's been grabbed
                      //jquery magic renders data into chart
      success: function(graph_data) {
        var container = $('.chart');
        var colors = ['red','skyblue','green','gold'];

        container.append('<div id="ratings_chart" class="graph" />');
        // console.log(graph_data);
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









