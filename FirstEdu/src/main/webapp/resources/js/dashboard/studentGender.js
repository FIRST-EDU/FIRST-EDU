google.charts.load("current", {packages:["corechart"]});
google.charts.setOnLoadCallback(drawChart);

let female = $('#femaleCount').val();
let male = $('#maleCount').val();

function drawChart() {
    var data = google.visualization.arrayToDataTable([
      ['Gender', 'count'],
      ['여', parseInt(female)],
      ['남', parseInt(male)]
    ]);

    var options = {

      title: '성별 분포',
      legend:  { position : 'right' },
      pieHole: 0.4,
      colors: ['#11cdef', '#39f'],
      animation:{
        startup : true,
      	duration: 1000,
        easing: 'out'
      },
    };

    var chart = new google.visualization.PieChart(document.getElementById('studentGender'));
    chart.draw(data, options);
}

